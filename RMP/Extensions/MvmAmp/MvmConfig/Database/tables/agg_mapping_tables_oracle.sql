create table agg_mapping_tables (
 mapping_name VARCHAR2(100) NOT NULL,
 table_name VARCHAR2(100) NOT NULL,
 is_cached NUMBER(10) NOT NULL
);
create unique index agg_mapping_table_ndx on agg_mapping_tables(mapping_name);
