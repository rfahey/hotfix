DELETE agg_param_table_col_map;

/***************************************
 * T_PT_BUNDLEFREEMINUTE: Parameters   */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_priority','c_TierPriority',1000, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_end','c_TierEnd',NULL, 0);
/* T_PT_BUNDLEFREEMINUTE: Overrides    */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_start',NULL,0, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_name',NULL,'free_minutes', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_metric',NULL,'UNITS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_domain',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','tier_domain_impact',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','per_unit_rate',NULL,'0', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEFREEMINUTE','one','decision_type',NULL,'free minutes', 0);
/***************************************/

/***************************************
 * T_PT_BUNDLEOVERAGERATE: Parameters  */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_end','c_TierEnd',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','per_unit_rate','c_PerUnitRate',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_priority','c_TierPriority',1001, 0);
/* T_PT_BUNDLEOVERAGERATE: Overrides   */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','charge_type',NULL,'CURRENCY_AMOUNT', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_start',NULL,0, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_name',NULL,'bundle_overage', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_metric',NULL,'UNITS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_domain',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','tier_domain_impact',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEOVERAGERATE','one','decision_type',NULL,'overage rate', 0);
/***************************************/

/***************************************
 * T_PT_BUNDLEDISCOUNTTIER: Parameters */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_metric','c_TierMetric',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_start','c_TierStart',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_end','c_TierEnd',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_priority','c_TierPriority',1002, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_discount','c_TierDiscount',NULL, 0);
/* T_PT_BUNDLEDISCOUNTTIER: Overrides  */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_name',NULL,'discount_tier', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_domain',NULL,'COUNTABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','tier_discount_type',NULL,'flat_percent', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLEDISCOUNTTIER','one','decision_type',NULL,'discount', 0);
/***************************************/

/***************************************
 * T_PT_BUNDLECOMMITMENT: Parameters   */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_priority','c_TierPriority',1003, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','charge_on_final','c_ChargeOnFinal',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','c_rc_charge_code','c_ChargeId',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_end','c_ChargeOnFinal',NULL, 0);
/* T_PT_BUNDLECOMMITMENT: Overrides    */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','charge_type_id',NULL,'1', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','charge_type',NULL,'inverse_proportional', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_name',NULL,'bundle_commitment', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_metric',NULL,'amount', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_domain',NULL,'COUNTABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','decision_type',NULL,'commitment', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLECOMMITMENT','one','tier_start',NULL,'0', 0);
/***************************************/

/***************************************
 * T_PT_BUNDLETIEREDRATE: Parameters   */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_priority','c_TierPriority',1001, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_end','c_TierEnd',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','per_unit_rate','c_PerUnitRate',NULL, 0);
/* T_PT_BUNDLETIEREDRATE: Overrides    */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_start',NULL,0, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_name',NULL,'bundle_tiered_rate', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_metric',NULL,'UNITS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_domain',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','tier_domain_impact',NULL,'RATABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_BUNDLETIEREDRATE','one','decision_type',NULL,'tiered rate', 0);
/***************************************/


/***************************************
 * T_PT_WHOLESALERC: Parameters   */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','account_qualification_group','c_AccQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','usage_qualification_group','c_UsgQualGroup',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_priority','c_TierPriority',100, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','charge_on_every','c_wholesalepercentage',NULL, 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','charge_type','c_ChargeTypeId','proportional', 0);
/* T_PT_WHOLESALERC: Overrides    */
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','charge_type_id',NULL,'2', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_end',NULL,'999999999', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_name',NULL,'wholesale_rc', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_type',NULL,'INCREMENTAL', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_metric',NULL,'EVENTS', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_domain',NULL,'COUNTABLE', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','decision_type',NULL,'wholesale_rc', 0);
INSERT INTO agg_param_table_col_map (paramtable_name, column_group, column_name, pt_column_name, default_value, push_to_usage) VALUES('T_PT_WHOLESALERC','one','tier_start',NULL,'0', 0);
/***************************************/

