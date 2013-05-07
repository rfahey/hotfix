CREATE
PROCEDURE [dbo].[mvm_complete_mvm_run_id](
    @p_preserve_tables INT,
    @p_preserve_offset INT,
    @p_mvm_run_id INT)
AS
BEGIN

declare @my_preserve_tables INT
declare @my_preserve_offset INT

  set @my_preserve_tables = @p_preserve_tables;
  set @my_preserve_offset = @p_preserve_offset;
  if (@my_preserve_offset IS NULL) BEGIN
	set @my_preserve_offset = 31
  END

  IF (@my_preserve_tables = -1) BEGIN
	declare @old_mvm_run_id int = 0
	declare cursor1 CURSOR for SELECT distinct a.mvm_run_id old_mvm_run_id
    FROM amp_staging_tables a
	inner join mvm_run_history b on a.mvm_run_id = b.mvm_run_id
    WHERE a.mvm_run_id != @p_mvm_run_id
	AND b.end_dt IS NULL
	and dateadd(day, 0 - @my_preserve_offset, getdate()) > b.start_dt
	open cursor1
	fetch next from cursor1 into @old_mvm_run_id
	while @@FETCH_STATUS=0
	begin
      		exec mvm_complete_mvm_run_id 0,0,@old_mvm_run_id 
		fetch next from cursor1 into @old_mvm_run_id
	end
	close cursor1
	deallocate cursor1

    set @my_preserve_tables = 0 
  END

  IF (@my_preserve_tables) = 0 BEGIN

	declare @staging_table_name VARCHAR(1000)
	declare cursor2 CURSOR for SELECT staging_table_name
    FROM amp_staging_tables
    WHERE mvm_run_id = @p_mvm_run_id
	open cursor2
	fetch next from cursor2 into @staging_table_name
	while @@FETCH_STATUS=0
	begin
		execute ('begin drop table ' + @staging_table_name + ' end');
		fetch next from cursor2 into @staging_table_name
	end
	close cursor2
	deallocate cursor2

    delete amp_staging_tables where mvm_run_id = @p_mvm_run_id

  END
  update MVM_RUN_HISTORY set end_dt = getdate() where mvm_run_id = @p_mvm_run_id

END 
      


