

-- drop PROCEDURE mvm_create_blk_upd_table2;
CREATE PROCEDURE [dbo].[mvm_create_blk_upd_table2](
    @p_table  VARCHAR(4000),           -- table to bulk update
    @p_prefix VARCHAR(4000),           -- prefix on blk_upd_table name
    @p_mvm_run_id INTEGER,           --  identifier of mvm run
    @p_node_id VARCHAR(4000),           --  identifier of mvm node_id
    @p_blk_upd_table VARCHAR(4000) OUTPUT, -- table we created
    @p_pk_col_string VARCHAR(4000)='' -- optional user specified pk (comma separated) needed if table is really an updateable view
  )
AS
begin
	declare @sql table(s varchar(1000), id int identity)
	declare @v_pk_cols table(s varchar(1000))
	declare @v_pk_cols2 table(s varchar(1000))
	declare @guid uniqueidentifier
	declare @is_partitioned integer

	--determine if table is partioned
	exec mvm_is_partitioned @p_table=@p_table, @p_is_partitioned=@is_partitioned OUTPUT
	--print 'is_partitioned='+CONVERT(varchar(5), @is_partitioned)

  -- Populate v_pk_cols with ordered list of primary key columns.
  -- Use comma delimited string p_pk_col_string if passed, else look at the pk fields
  -- in p_table
  IF @p_pk_col_string IS NULL 
	begin
		if(@is_partitioned=0)
		begin
			insert into @v_pk_cols(s)
			SELECT ' '+ b.column_name + ',' 
				FROM information_schema.table_constraints a
				INNER JOIN information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
				WHERE a.constraint_type = 'PRIMARY KEY'
				AND a.table_name = @p_table
				order by ordinal_position
				
			insert into @v_pk_cols2(s)
			SELECT b.column_name 
				FROM information_schema.table_constraints a
				INNER JOIN information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
				WHERE a.constraint_type = 'PRIMARY KEY'
				AND a.table_name = @p_table
				order by ordinal_position			
		end
		else
		begin
			insert into @v_pk_cols(s)
			SELECT ' '+ b.column_name + ',' 
				FROM n_default.information_schema.table_constraints a
				INNER JOIN n_default.information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
				WHERE a.constraint_type = 'PRIMARY KEY'
				AND a.table_name = @p_table
				order by ordinal_position
				
			insert into @v_pk_cols2(s)
			SELECT b.column_name 
				FROM n_default.information_schema.table_constraints a
				INNER JOIN n_default.information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
				WHERE a.constraint_type = 'PRIMARY KEY'
				AND a.table_name = @p_table
				order by ordinal_position
		end
   end
  ELSE
	begin
	  print 'spliting '+@p_pk_col_string
	  insert into @v_pk_cols(s)
	  SELECT items FROM mvm_split(@p_pk_col_string,',')

	  insert into @v_pk_cols2(s)
	  SELECT items FROM mvm_split(@p_pk_col_string,',')
	end
 
--	declare @stmt1 varchar(8000)
--	SELECT @stmt1 = coalesce(@stmt1 + CHAR(13)+ CHAR(10), '') + s
--	FROM @v_pk_cols
--	print 'got pk cols:'+ CHAR(13)+ CHAR(10)+@stmt1


	-- name of tmp bulk update table
	select @p_blk_upd_table=substring(@p_prefix + replace( newid(),'-',''),0,30)
	while (EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME=@p_blk_upd_table))
	begin
		select @p_blk_upd_table=substring(@p_prefix+replace( newid(),'-',''),0,30)
	end

	-- create statement
	insert into  @sql(s) values ('create table [' + @p_blk_upd_table + '] ( format_id int,')

    -- add the pk_N columns as not null allowable
	declare @pk_col_ctr int=0
	declare @pk_col_name nvarchar(1000)
	declare cursor1 CURSOR for select s from @v_pk_cols2
	open cursor1
	fetch next from cursor1 into @pk_col_name
	while @@FETCH_STATUS=0
	begin
		print 'here with pk_col_name:'+@pk_col_name + ' and ' + @p_table
		if(@is_partitioned=0)
		begin
			insert into @sql(s)
			select
			'  ['+'pk_'+convert(varchar,@pk_col_ctr)+'] '+data_type + case data_type when 'numeric' then '('+cast(numeric_precision as varchar)+',' + cast(numeric_scale as varchar) +')' else coalesce('('+cast(character_maximum_length as varchar)+')','') end + ' NOT NULL,'
			FROM  information_schema.columns
			WHERE upper(table_name) = upper(@p_table) and upper(COLUMN_NAME) = upper(@pk_col_name)
		end
		else
		begin
			insert into @sql(s)
			select
			'  ['+'pk_'+convert(varchar,@pk_col_ctr)+'] '+data_type + case data_type when 'numeric' then '('+cast(numeric_precision as varchar)+',' + cast(numeric_scale as varchar) +')' else coalesce('('+cast(character_maximum_length as varchar)+')','') end + ' NOT NULL,'
			FROM  n_default.information_schema.columns
			WHERE upper(table_name) = upper(@p_table) and upper(COLUMN_NAME) = upper(@pk_col_name)
		end

		set @pk_col_ctr=@pk_col_ctr+1
		fetch next from cursor1 into @pk_col_name
	end
	close cursor1
	deallocate cursor1

	-- add all columns all as null allowable
	if(@is_partitioned=0)
	begin
		insert into @sql(s)
		select
		'  ['+column_name+'] '+data_type + case data_type when 'numeric' then '('+cast(numeric_precision as varchar)+',' + cast(numeric_scale as varchar) +')' else coalesce('('+cast(character_maximum_length as varchar)+')','') end + ' NULL,'
		FROM  information_schema.columns
		WHERE table_name = @p_table
		order by ordinal_position
	end
	else
	begin
		insert into @sql(s)
		select
		'  ['+column_name+'] '+data_type + case data_type when 'numeric' then '('+cast(numeric_precision as varchar)+',' + cast(numeric_scale as varchar) +')' else coalesce('('+cast(character_maximum_length as varchar)+')','') end + ' NULL,'
		FROM  n_default.information_schema.columns
		WHERE table_name = @p_table
		order by ordinal_position
	end
	

	-- add primary key
	insert into @sql(s) values( ' CONSTRAINT pk_' + @p_blk_upd_table + ' PRIMARY KEY (' )

	-- specify the primary key columns 
	insert into @sql(s)
	SELECT
    rownum = 'pk_'+convert(varchar,ROW_NUMBER() OVER (ORDER BY t.s ASC)-1)+','
	FROM @v_pk_cols t

	-- remove trailing comma
	update @sql set s=left(s,len(s)-1) where id=(select max(id) from @sql) --@@identity
	
	-- PK closing bracket
	insert into @sql(s) values( ')' )

	-- create closing bracket
	insert into @sql(s) values( ')' )

   -- result!
	declare @stmt varchar(8000)
	SELECT @stmt = coalesce(@stmt + CHAR(13)+ CHAR(10), '') + s
	FROM @sql

	--print @stmt

	begin try
		EXECUTE( 'begin '+@stmt+' end')
		insert into amp_staging_tables (mvm_run_id, node_id, staging_table_name, create_dt) values(@p_mvm_run_id, @p_node_id, @p_blk_upd_table, getdate())

	end try
	begin catch

			DECLARE @FullMessage NVARCHAR(4000);
 		DECLARE @ErrorMessage NVARCHAR(4000);
    		DECLARE @ErrorSeverity INT;
    		DECLARE @ErrorState INT;
    		SELECT 
        		@ErrorMessage = ERROR_MESSAGE(),
        		@ErrorSeverity = ERROR_SEVERITY(),
        		@ErrorState = ERROR_STATE();
        select @FullMessage='Error in mvm_create_blk_upd_table2. Got error ['+@ErrorMessage+'] running dynamic sql ['+ 'begin '+@stmt+' end'+']' ;
		RAISERROR(@fullMessage, 16, 1)
	end catch

end
      
GO



