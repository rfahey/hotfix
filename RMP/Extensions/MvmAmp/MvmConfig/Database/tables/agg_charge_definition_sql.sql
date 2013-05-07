if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_charge_definition]'))
drop table [dbo].[agg_charge_definition]

create table agg_charge_definition (
charge_type_id VARCHAR(100),
charge_qualification_group VARCHAR(100), 
productview_name VARCHAR(100), 
row_num INTEGER,
include_table_name VARCHAR(100) NULL, 
source_value VARCHAR(1000) NULL, 
target_field VARCHAR(100) NULL, 
include_predicate VARCHAR(1000) NULL, 
included_field_prefix VARCHAR(100) NULL, 
field_name VARCHAR(100) NULL, 
population_string VARCHAR(4000) NULL, 
mvm_procedure VARCHAR(4000) NULL, 
filter VARCHAR(4000) NULL, 
default_value VARCHAR(1000) NULL,
child_charge_id VARCHAR(100) NULL
 );

