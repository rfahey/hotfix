/*
drop view agg_param_table_master;
*/

create view agg_param_table_master
as
select
b.to_name as column_name,
c_Description as description,
CASE
 WHEN b.to_name IN ('tier_charge_impact','tier_metric','tier_domain','charge_type',
                    'cycle_unit_type','target_domain','tier_discount_impact',
                    'tier_rate_impact','tier_type','tier_repetition'
                   ) THEN REPLACE(UPPER(a.c_DefaultValue), ' ', '_')
 WHEN b.to_name IN ('tier_proration_method'
                   ) THEN UPPER(a.c_DefaultValue)
 ELSE a.c_DefaultValue
END as global_default_value
from t_be_mvm_ade_decisionglobal a
inner join agg_param_name_map b on a.c_Name = b.from_name
;
/* (
column_name VARCHAR2(100),
 description VARCHAR2(1000),
 global_default_value VARCHAR2(1000));
*/
