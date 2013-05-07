create table amp_staging_tables (
 mvm_run_id NUMBER NOT NULL,
 node_id VARCHAR2(100) NOT NULL,
 staging_table_name VARCHAR2(100) NOT NULL,
 create_dt DATE NOT NULL
);
create index amp_staging_ndx on amp_staging_tables(mvm_run_id, node_id);
