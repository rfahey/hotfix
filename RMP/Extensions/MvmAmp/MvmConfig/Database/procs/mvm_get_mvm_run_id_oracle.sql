CREATE OR REPLACE
PROCEDURE mvm_get_mvm_run_id(
    p_app_name VARCHAR2, 
    p_mvm_run_id OUT INT )
AS
BEGIN
  SELECT seq_mvm_run.nextval INTO p_mvm_run_id FROM dual;

  insert into MVM_RUN_HISTORY(mvm_run_id, application_name, start_dt, end_dt) values (p_mvm_run_id, p_app_name, sysdate, NULL);
END; 

