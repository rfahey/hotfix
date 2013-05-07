create table agg_mapping_table_rules (
 mapping_name VARCHAR2(100) NOT NULL,
 object_field_name VARCHAR2(100) NULL,
 table_field_name VARCHAR2(100) NULL,
 population_string VARCHAR2(4000) NULL,
 is_key NUMBER(10) NOT NULL,
 procedure_name VARCHAR2(100) NULL,
 rule_order NUMBER(10) NOT NULL
);
create index agg_mapping_table_rule_ndx on agg_mapping_table_rules(mapping_name);
