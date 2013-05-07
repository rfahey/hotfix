create table agg_charge_definition (
charge_type_id VARCHAR2(100),
charge_qualification_group VARCHAR2(100), 
productview_name VARCHAR2(100), 
row_num NUMBER,
include_table_name VARCHAR2(100) NULL, 
source_value VARCHAR2(1000) NULL, 
target_field VARCHAR2(100) NULL, 
include_predicate VARCHAR2(1000) NULL, 
included_field_prefix VARCHAR2(100) NULL, 
field_name VARCHAR2(100) NULL, 
population_string VARCHAR2(4000) NULL, 
mvm_procedure VARCHAR2(4000) NULL, 
filter VARCHAR2(4000) NULL, 
default_value VARCHAR2(1000) NULL,
child_charge_id VARCHAR2(100) NULL
 );

