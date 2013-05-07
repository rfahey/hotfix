create table agg_mapping_tables (
 mapping_name VARCHAR(100) NOT NULL,
 table_name VARCHAR(100) NOT NULL,
 is_cached INTEGER NOT NULL
);
create unique index agg_mapping_table_ndx on agg_mapping_tables(mapping_name);
