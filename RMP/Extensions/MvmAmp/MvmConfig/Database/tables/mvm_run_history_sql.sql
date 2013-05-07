create table mvm_run_history (
 mvm_run_id INTEGER NOT NULL,
 application_name VARCHAR(100) NOT NULL,
 start_dt DATE NOT NULL,
 end_dt DATE NULL
);
create index mvm_run_history_ndx on mvm_run_history(mvm_run_id);
create index mvm_run_history_dt_ndx on mvm_run_history(start_dt, mvm_run_id);
