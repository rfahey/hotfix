create table agg_mapping_table_rules (
 mapping_name VARCHAR(100) NOT NULL,
 object_field_name VARCHAR(100) NULL,
 table_field_name VARCHAR(100) NULL,
 population_string VARCHAR(4000) NULL,
 is_key INTEGER NOT NULL,
 procedure_name VARCHAR(100) NULL,
 rule_order INTEGER NOT NULL
);
create index agg_mapping_table_rule_ndx on agg_mapping_table_rules(mapping_name);
