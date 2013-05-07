--drop procedure mvm_get_mvm_run_id;

CREATE
PROCEDURE [mvm_get_mvm_run_id](
    @p_app_name VARCHAR,
    @p_mvm_run_id INT OUTPUT )
AS
BEGIN
  -- add our sequence if not there
  INSERT INTO t_current_id SELECT 1,'mvm_run_id',1
  WHERE NOT EXISTS
    (SELECT * FROM t_current_id WHERE nm_current='mvm_run_id');
    
    -- use the core mt proc to get the next value
    exec [DBO].[GetCurrentID] @nm_current = N'mvm_run_id', @id_current  = @p_mvm_run_id OUTPUT

  insert into MVM_RUN_HISTORY(mvm_run_id, application_name, start_dt, end_dt) values (@p_mvm_run_id, @p_app_name, getdate(), NULL); 
END

