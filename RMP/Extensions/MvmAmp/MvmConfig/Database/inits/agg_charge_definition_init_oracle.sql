DELETE AGG_CHARGE_DEFINITION;


insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',1, 'AGG_ACC_CURRENCIES', NULL, 'my_id_acc', NULL, NULL,NULL,NULL, NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',2, NULL, NULL, NULL, NULL, NULL,'c_rcintervalstart','OBJECT.interval_start_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',3, NULL, NULL, NULL, NULL, NULL,'c_rcintervalend','OBJECT.interval_end_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',4, NULL, NULL, NULL, NULL, NULL,'c_billingintervalstart','OBJECT.interval_start_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',5, NULL, NULL, NULL, NULL, NULL,'c_billingintervalend','OBJECT.interval_end_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',6, NULL, NULL, NULL, NULL, NULL,'c_rcintervalsubscriptionstart','OBJECT.interval_start_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',7, NULL, NULL, NULL, NULL, NULL,'c_rcintervalsubscriptionend','OBJECT.interval_end_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',8, NULL, NULL, NULL, NULL, NULL,'c_advance','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',9, NULL, NULL, NULL, NULL, NULL,'c_prorateonsubscription','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',10, NULL, NULL, NULL, NULL, NULL,'c_prorateonunsubscription','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',11, NULL, NULL, NULL, NULL, NULL,'c_proratedintervalstart','OBJECT.interval_start_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',12, NULL, NULL, NULL, NULL, NULL,'c_proratedintervalend','OBJECT.interval_end_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',13, NULL, NULL, NULL, NULL, NULL,'c_prorateddays','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',14, NULL, NULL, NULL, NULL, NULL,'c_prorateddailyrate','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',15, NULL, NULL, NULL, NULL, NULL,'c_proratedonsubscription','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',16, NULL, NULL, NULL, NULL, NULL,'c_proratedonunsubscription','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',17, NULL, NULL, NULL, NULL, NULL,'c_tax_cntry','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',18, NULL, NULL, NULL, NULL, NULL,'c_svc_fee_pct','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',19, NULL, NULL, NULL, NULL, NULL,'id_view','1649', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',20, NULL, NULL, NULL, NULL, NULL,'id_svc','1649', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',21, NULL, NULL, NULL, NULL, NULL,'productview_name','''T_PV_FLATRECURRINGCHARGE''', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',22, NULL, NULL, NULL, NULL, NULL,'dt_session','OBJECT.end_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',23, NULL, NULL, NULL, NULL, NULL,'dt_crt','GLOBAL.mvm_startup_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',24, NULL, NULL, NULL, NULL, NULL,'amount','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',25, NULL, NULL, NULL, NULL, NULL,'c_svc_fee_pct','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',26, NULL, NULL, NULL, NULL, NULL,NULL,NULL, 'set_exchange_rates', NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',27, NULL, NULL, NULL, NULL, NULL,NULL,NULL, 'set_tax_rates', NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',28, NULL, NULL, NULL, NULL, NULL,'c_rcamount','OBJECT(TEMP.charge_object_id).master_rate', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',29, NULL, NULL, NULL, NULL, NULL,'c_rc_tax_exempt_cat','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',30, NULL, NULL, NULL, NULL, NULL,'c_rc_adj_prop','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',31, NULL, NULL, NULL, NULL, NULL,'c_wholesaler_flag','0', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',40, NULL, NULL, NULL, NULL, NULL,'c_rc_tax_rate','0', NULL, 'OBJECT.c_rc_tax_rate eq ""', NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',32, NULL, NULL, NULL, NULL, NULL,'c_rc_bu_curr','OBJECT(TEMP.charge_object_id).c_bu_curr', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',33, NULL, NULL, NULL, NULL, NULL,'c_rc_div_curr','OBJECT(TEMP.charge_object_id).c_div_curr', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('1','base', 'T_PV_FLATRECURRINGCHARGE',34, NULL, NULL, NULL, NULL, NULL,'c_rc_gbl_curr','OBJECT(TEMP.charge_object_id).c_gbl_curr', NULL, NULL, NULL);



-- Define rows for the wholesale generated RCs
insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',1, 'AGG_ACC_CURRENCIES', NULL, 'my_id_acc', NULL, NULL,NULL,NULL, NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',2, NULL, NULL, NULL, NULL, NULL,'c_orig_id_sess','OBJECT(TEMP.charge_object_id).id_sess', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',3, NULL, NULL, NULL, NULL, NULL,'tmp_orig_id_acc','OBJECT(TEMP.charge_object_id).id_acc', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',4, 'T_AV_AREAKEY', 'OBJECT(TEMP.usage_object).id_payee', NULL, NULL, NULL,'c_owner_number', 'OBJECT(TEMP.charge_object_id).c_areakey', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',5, 'T_AV_AREAKEY', 'OBJECT(TEMP.charge_object_id).id_payee', NULL, NULL, NULL,'c_ws_owner_number', 'OBJECT(TEMP.charge_object_id).c_areakey', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',6, NULL, NULL, NULL, NULL, NULL,'id_acc','OBJECT(TEMP.charge_object_id).tmp_orig_id_acc', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',21, NULL, NULL, NULL, NULL, NULL,'productview_name','''T_PV_FLATRECURRINGCHARGE''', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',23, NULL, NULL, NULL, NULL, NULL,'dt_crt','GLOBAL.mvm_startup_date', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',26, NULL, NULL, NULL, NULL, NULL,NULL,NULL, 'set_exchange_rates', NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',27, NULL, NULL, NULL, NULL, NULL,'id_sess','''''', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',28, NULL, NULL, NULL, NULL, NULL,'id_parent_sess','''''', NULL, NULL, NULL);

insert into agg_charge_definition 
(charge_type_id, charge_qualification_group, productview_name, row_num, include_table_name, source_value, target_field, include_predicate, included_field_prefix, field_name, population_string, mvm_procedure, filter, default_value) 
VALUES ('2','base', 'T_PV_FLATRECURRINGCHARGE',31, NULL, NULL, NULL, NULL, NULL,'c_wholesaler_flag','1', NULL, NULL, NULL);

