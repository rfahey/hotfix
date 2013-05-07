create table amp_staging_tables (
 mvm_run_id INTEGER NOT NULL,
 node_id varchar(100) NOT NULL,
 staging_table_name VARCHAR(100) NOT NULL,
 create_dt DATE NOT NULL
);
create index amp_staging_ndx on amp_staging_tables(mvm_run_id, node_id);
