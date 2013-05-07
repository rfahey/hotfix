-- drop procedure [mvm_create_blk_del_table2]


      CREATE
PROCEDURE [dbo].[mvm_create_blk_del_table2](
    @p_table  VARCHAR(4000),           -- table to bulk delete
    @p_prefix VARCHAR(4000),           -- prefix on blk_del_table name
    @p_mvm_run_id INTEGER,           --  identifier of mvm run
    @p_node_id VARCHAR(4000),           --  identifier of mvm node_id
    @p_blk_del_table VARCHAR(4000) OUTPUT -- table we created
  )
AS
begin
	declare @sql table(s varchar(1000), id int identity)
	declare @guid uniqueidentifier
	declare @is_partitioned integer

	--determine if table is partioned
	exec mvm_is_partitioned @p_table=@p_table, @p_is_partitioned=@is_partitioned OUTPUT
	--print 'is_partitioned='+CONVERT(varchar(5), @is_partitioned)


	-- name of tmp bulk delete table
	select @p_blk_del_table=substring(@p_prefix + replace( newid(),'-',''),0,30)
	while (EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME=@p_blk_del_table))
	begin
		select @p_blk_del_table=substring(@p_prefix+replace( newid(),'-',''),0,30)
	end

	-- create statement
	insert into  @sql(s) values ('create table [' + @p_blk_del_table + '] (')

  -- create all primary key columns as non-null allowable
	if(@is_partitioned=0)
	begin
		insert into @sql(s)
		SELECT 	'  ['+c.column_name+'] '+c.data_type + coalesce('('+cast(c.character_maximum_length as varchar)+')','') + ',' 
		FROM information_schema.table_constraints a
		INNER JOIN information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
    		INNER JOIN information_schema.columns c on a.TABLE_NAME = c.TABLE_NAME and b.COLUMN_NAME = c.COLUMN_NAME
		WHERE a.constraint_type = 'PRIMARY KEY'
		AND a.table_name = @p_table
		order by b.ordinal_position
	end
	else
	begin
		insert into @sql(s)
		SELECT 	'  ['+c.column_name+'] '+c.data_type + coalesce('('+cast(c.character_maximum_length as varchar)+')','') + ',' 
		FROM n_default.information_schema.table_constraints a
		INNER JOIN n_default.information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
    		INNER JOIN n_default.information_schema.columns c on a.TABLE_NAME = c.TABLE_NAME and b.COLUMN_NAME = c.COLUMN_NAME
		WHERE a.constraint_type = 'PRIMARY KEY'
		AND a.table_name = @p_table
		order by b.ordinal_position
	end
		

	-- add primary key
	insert into @sql(s) values( ' CONSTRAINT pk_' + @p_blk_del_table + ' PRIMARY KEY (' )

	-- add primary key columns 
	if(@is_partitioned=0)
	begin
		insert into @sql(s)
		SELECT ' '+ b.column_name + ',' 
		FROM information_schema.table_constraints a
		INNER JOIN information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
		WHERE a.constraint_type = 'PRIMARY KEY'
		AND a.table_name = @p_table
		order by ordinal_position
	end
	else
	begin
		insert into @sql(s)
		SELECT ' '+ b.column_name + ',' 
		FROM n_default.information_schema.table_constraints a
		INNER JOIN n_default.information_schema.key_column_usage b ON a.constraint_name = b.CONSTRAINT_NAME
		WHERE a.constraint_type = 'PRIMARY KEY'
		AND a.table_name = @p_table
		order by ordinal_position
	end	

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
	EXECUTE( 'begin '+@stmt+' end')

	insert into amp_staging_tables (mvm_run_id, node_id, staging_table_name, create_dt) values(@p_mvm_run_id, @p_node_id, @p_blk_del_table, getdate())
end
      
GO



