DELETE agg_param_table_col_map;

INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_end','c_TierEnd',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_start',NULL,1, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_name',NULL,'free_minutes', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_priority',NULL,'10000', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_metric',NULL,'UNITS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','tier_domain',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTE','one','per_unit_rate',NULL,'0', 0);

INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_end','c_TierEnd',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','charge_on_breach','c_ChargeOnBreach',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','charge_type',NULL,'CURRENCY_AMOUNT', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','charge_type_id','c_ChargeTypeId',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_start',NULL,1, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_name',NULL,'free_minute_overage', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_priority',NULL,'10001', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_metric',NULL,'UNITS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_domain',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','per_unit_rate',NULL,'0', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_FREEMINUTEOVERAGE','one','tier_repetition',NULL,'INDIVIDUAL', 0);


