        CREATE OR REPLACE VIEW  agg_param_table_master
        as
        select
        NVL(b.to_name, a.c_Name) as column_name,
        c_Description as description,
        CASE
          WHEN b.to_name IN ('tier_charge_impact','tier_metric','tier_domain','charge_type',
          'cycle_unit_type','target_domain','tier_discount_impact',
          'tier_rate_impact','tier_type','tier_repetition') 
          THEN REPLACE(UPPER(a.c_DefaultValue), ' ', '_')
          WHEN b.to_name IN ('tier_proration_method') 
          THEN UPPER(a.c_DefaultValue)
          ELSE a.c_DefaultValue
        END 
        as global_default_value
        from t_amp_decisionglobal a
        left outer join agg_param_name_map b on a.c_Name = b.from_name

