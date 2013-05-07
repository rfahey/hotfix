create table mvm_run_history (
 mvm_run_id NUMBER NOT NULL,
 application_name VARCHAR2(100) NOT NULL,
 start_dt DATETIME NOT NULL,
 end_dt DATETIME NULL
);
create index mvm_run_history_ndx on mvm_run_history(mvm_run_id);
create index mvm_run_history_dt_ndx on mvm_run_history(start_dt, mvm_run_id);
