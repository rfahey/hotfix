/*
drop view agg_param_table_col_map;
*/
create view agg_param_table_col_map
as
select
a.c_TableName as paramtable_name,
a.c_Name as column_group,
b.to_name as column_name,
c.c_ColumnName as pt_column_name,
CASE
 WHEN b.to_name IN ('tier_charge_impact','tier_metric','tier_domain','charge_type',
                    'cycle_unit_type','target_domain','tier_discount_impact',
                    'tier_rate_impact','tier_type','tier_repetition'
                   ) THEN REPLACE(UPPER(c.c_DefaultValue), ' ', '_')
 WHEN b.to_name IN ('tier_proration_method'
                   ) THEN UPPER(c.c_DefaultValue)
 ELSE c.c_DefaultValue
END as default_value,
0 push_to_usage
from t_be_mvm_ade_decisiontype a
left outer join t_be_mvm_ade_decisionattrib c on a.c_DecisionType_Id = c.c_DecisionType_Id
inner join agg_param_name_map b on c.c_AttributeName = b.from_name
;
/*
 (
paramtable_name VARCHAR2(100),
column_group VARCHAR2(100), 
column_name VARCHAR2(100), 
pt_column_name VARCHAR2(100) NULL, 
default_value VARCHAR2(1000) NULL
 );
*/
