delete usage_charge_fields;

-- valid field types are 'units', 'rate', 'amount', 'currency', 'proportional', 'aggregate', 'currency_conversion', 'percentage', 'modifier' 
--(aggregate requires a contributing field if not the main amount) 
--(proportional requires a contributing field if not the main amount)
--(currency_conversion requires a contributing field if not the main amount and both this field and the contributing field MUST have a currency_field defined)
--(percentage requires a percentage_field AND a contributing_field) 
--(modifer just applies the modifier. Note that the modifier column can be used on any field type, but on a modifier field_type, only the modifier is applied)

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountFeature','feature', 'c_feature_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'c_bridge_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'c_leg_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'c_surcharge_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','minimum', 'c_minimum_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','noshow', 'c_noshow_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','portoverage', 'c_portoverage_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','feature', 'c_feature_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','credit', 'c_credit_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','rc', 'c_rc_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('UDRecurringCharge','udrc', 'c_udrc_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','late_fee', 'c_late_fee_rate_amt','amount', NULL, 6, NULL, NULL, NULL, NULL, 10001);


/* Set units to c_rate_duration for connection charges */
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'c_rate_duration','units', NULL, NULL, NULL, NULL, NULL, NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'c_rate_duration','units', NULL, NULL, NULL, NULL, NULL, NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'c_rate_duration','units', NULL, NULL, NULL, NULL, NULL, NULL, 10002);

/* Set units to 1 for these charges */
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'dummy_telecom_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountFeature','feature', 'dummy_feature_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','minimum', 'dummy_minimum_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','feature', 'dummy_feature_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);



/* Set units to c_ttl_noshow_legs for these charges */
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','noshow', 'c_ttl_noshow_legs','units', NULL, NULL, NULL, NULL, '(TEMP.value==""?"0":TEMP.value)', NULL, 10003);




INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'c_bridge_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.c_bridge_rate_amt/OBJECT.c_rate_duration', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'c_leg_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.c_leg_rate_amt/OBJECT.c_rate_duration', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'c_surcharge_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.c_surcharge_rate_amt/OBJECT.c_rate_duration', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','rc', 'c_rc_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.master_rate', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','feature', 'c_feature_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.master_amount', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountFeature','feature', 'c_feature_rate','rate', NULL, 6, NULL, NULL, 'OBJECT.master_amount', NULL, 10099);



INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_rate_svc_amt','percentage', 'c_#CHARGENAME#_rate_amt', 6, NULL, 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_amt','percentage', 'c_#CHARGENAME#_rate_amt', NULL, 'am_currency', 'c_fx_inv_rate', NULL, 'OBJECT.c_fx_inv_rate ne ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_amt','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.c_#CHARGENAME#_rate_amt', 'OBJECT.c_fx_inv_rate eq ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_svc_amt','percentage', 'c_#CHARGENAME#_amt', NULL, 'am_currency', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_amt','currency_conversion', 'c_#CHARGENAME#_amt', NULL, 'c_div_curr', NULL, NULL, NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_svc_amt','percentage', 'c_#CHARGENAME#_div_amt', NULL, 'c_div_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_amt','currency_conversion', 'c_#CHARGENAME#_amt', NULL, 'c_bu_curr', NULL, NULL, NULL, 10105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_svc_amt','percentage', 'c_#CHARGENAME#_bu_amt', NULL, 'c_bu_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10106);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_amt','currency_conversion', 'c_#CHARGENAME#_amt', NULL, 'c_gbl_curr', NULL, NULL, NULL, 10107);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_svc_amt','percentage', 'c_#CHARGENAME#_gbl_amt', NULL, 'c_gbl_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10108);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'amount','aggregate', 'c_#CHARGENAME#_amt', NULL, NULL, NULL, NULL, NULL, 11000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'amount','aggregate', 'c_#CHARGENAME#_svc_amt', NULL, NULL, NULL, NULL, NULL, 11001);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_tax_amt','percentage', 'c_#CHARGENAME#_amt', NULL, 'am_currency', 'c_#CHARGENAME#_tax_rate', 'TEMP.value/100', NULL, 12000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_div_curr', NULL, NULL, NULL, 12001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_bu_curr', NULL, NULL, NULL, 12002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_gbl_curr', NULL, NULL, NULL, 12003);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'tax_federal','aggregate', 'c_#CHARGENAME#_tax_amt', NULL, NULL, NULL, NULL, NULL, 12005);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.tax_federal','aggregate', 'tax_federal', NULL, NULL, NULL, NULL, NULL, 12010);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.tax_federal','aggregate', 'tax_federal', NULL, NULL, NULL, NULL, NULL, 12010);


/* Mask certain fields so we can still wildcard */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_rate_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_div_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_bu_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_gbl_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_#CHARGENAME#_rate_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_#CHARGENAME#_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_#CHARGENAME#_div_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_#CHARGENAME#_bu_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_#CHARGENAME#_gbl_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_#CHARGENAME#_rate_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_#CHARGENAME#_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_#CHARGENAME#_div_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_#CHARGENAME#_bu_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_#CHARGENAME#_gbl_svc_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

/* Parent stuff for compound transactions */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_conf_ratetotamt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_conf_divtotamt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_conf_butotamt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_conf_gbltotamt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','', 'c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','', 'c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','', 'c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','', 'c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','', 'c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_leg_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_leg_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_leg_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_leg_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_leg_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_leg_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_leg_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_leg_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_leg_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_leg_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_leg_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_leg_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_leg_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_leg_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_leg_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_encore_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, 'OBJECT.c_prod_type eq #intercall.com/ConfCommon/ICProdType/EN#', 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_encore_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, 'OBJECT.c_prod_type eq #intercall.com/ConfCommon/ICProdType/EN#', 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_encore_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, 'OBJECT.c_prod_type eq #intercall.com/ConfCommon/ICProdType/EN#', 16000);




INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'PARENT.c_ttl_#CHARGENAME#_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'PARENT.c_ttl_#CHARGENAME#_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'PARENT.c_ttl_#CHARGENAME#_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'PARENT.c_ttl_#CHARGENAME#_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'PARENT.c_ttl_#CHARGENAME#_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_#CHARGENAME#_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_#CHARGENAME#_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_#CHARGENAME#_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_#CHARGENAME#_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_#CHARGENAME#_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);



INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'PARENT.c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','leg', 'PARENT.c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_amt','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_rate_amt','aggregate', 'c_#CHARGENAME#_rate_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_div_amt','aggregate', 'c_#CHARGENAME#_div_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_bu_amt','aggregate', 'c_#CHARGENAME#_bu_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','surcharge', 'PARENT.c_ttl_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_amt', 6, NULL, NULL, NULL, NULL, 16000);




INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_svc_amt','aggregate', 'c_#CHARGENAME#_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_svc_rate_amt','aggregate', 'c_#CHARGENAME#_rate_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_svc_div_amt','aggregate', 'c_#CHARGENAME#_div_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_svc_bu_amt','aggregate', 'c_#CHARGENAME#_bu_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_svc_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_svc_amt','aggregate', 'c_#CHARGENAME#_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_svc_rate_amt','aggregate', 'c_#CHARGENAME#_rate_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_svc_div_amt','aggregate', 'c_#CHARGENAME#_div_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_svc_bu_amt','aggregate', 'c_#CHARGENAME#_bu_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_svc_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);




INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_tax_amt','aggregate', 'c_#CHARGENAME#_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_tax_div_amt','aggregate', 'c_#CHARGENAME#_div_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_div_tottaxcntryamt','aggregate', 'c_#CHARGENAME#_div_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_tax_bu_amt','aggregate', 'c_#CHARGENAME#_bu_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_bu_tottaxcntryamt','aggregate', 'c_#CHARGENAME#_bu_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_ttl_tax_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.c_gbl_tottaxcntryamt','aggregate', 'c_#CHARGENAME#_gbl_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_tax_amt','aggregate', 'c_#CHARGENAME#_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_tax_div_amt','aggregate', 'c_#CHARGENAME#_div_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_tax_bu_amt','aggregate', 'c_#CHARGENAME#_bu_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.c_ttl_tax_gbl_amt','aggregate', 'c_#CHARGENAME#_gbl_tax_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.amount','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.amount','aggregate', 'c_#CHARGENAME#_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.amount','aggregate', 'c_#CHARGENAME#_amt', 6, NULL, NULL, NULL, NULL, 16000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.amount','aggregate', 'c_#CHARGENAME#_svc_amt', 6, NULL, NULL, NULL, NULL, 16000);

/* Complex one-off stuff */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_rate_amt','modifier', NULL, 6, NULL, NULL, '0', NULL, 15000);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','telecom', 'c_telecom_rate_amt','percentage', 'c_#CHARGENAME#_rurd_duration', 6, NULL, 'c_telecom_rate', NULL, 'OBJECT.c_bu_id == "1" and OBJECT.c_office_code ne "0C3" and (OBJECT.c_bridge_rate_amt + OBJECT.c_surcharge_rate_amt + OBJECT.c_leg_rate_amt) GT 0', 15001);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'c_bridge_r_rate','modifier', NULL, 6, NULL, NULL, 'OBJECT.c_bridge_rate_amt/OBJECT.c_rate_duration', 'OBJECT.c_bridge_charge_code == #intercall.com/ConfCommon/ChargeCode/R#', 15002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','bridge', 'c_bridge_r_rate_amt','modifier', NULL, 6, NULL, NULL, 'OBJECT.c_bridge_rate_amt', 'OBJECT.c_bridge_charge_code == #intercall.com/ConfCommon/ChargeCode/R#', 15003);



/* Stuff for the normalize only */

/* Set units for normalization */
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','normalize', 'c_rate_duration','units', NULL, NULL, NULL, NULL, NULL, NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','normalize', 'dummy_telecom_units','units', NULL, NULL, NULL, NULL, '1', 'OBJECT.charge_name Eq "telecom"', 10003);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountFeature','normalize', 'dummy_feature_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','normalize', 'dummy_minimum_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','normalize', 'dummy_feature_units','units', NULL, NULL, NULL, NULL, '1', NULL, 10002);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConference','noshow', 'c_ttl_noshow_legs','units', NULL, NULL, NULL, NULL, '(TEMP.value==""?"0":TEMP.value)', 'OBJECT.charge_name Eq "noshow"', 10003);




INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'amount_before','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.amount_before', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'amount_after','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.amount_after', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_amount','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.orig_amount', NULL, 10099);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'agg_tier_id','modifier', NULL, NULL, NULL, NULL, 'OBJECT.decision_unique_id', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'id_po','modifier', NULL, NULL, NULL, NULL, 'OBJECT.decision_id_po', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'id_sched','modifier', NULL, NULL, NULL, NULL, 'OBJECT.decision_id_sched', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'n_order','modifier', NULL, NULL, NULL, NULL, 'OBJECT.decision_n_order', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tt_start','modifier', NULL, NULL, NULL, NULL, 'OBJECT.decision_tt_start', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'n_tier_order','modifier', NULL, NULL, NULL, NULL, 'OBJECT.tier_row_counter', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'quantity','modifier', NULL, NULL, NULL, NULL, 'OBJECT.master_units', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tier_quantity','modifier', NULL, NULL, NULL, NULL, 'OBJECT.master_units*OBJECT.percent_eligible', NULL, 10100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_rate','modifier', NULL, 6, NULL, NULL, 'OBJECT.orig_amount/OBJECT.master_units', NULL, 10100);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tier_rate','modifier', NULL, 6, NULL, NULL, '(((OBJECT.amount_after-OBJECT.amount_before)/OBJECT.tier_quantity + OBJECT.orig_rate) * OBJECT.percent_eligible) + (OBJECT.orig_rate * (1 - OBJECT.percent_eligible))', NULL, 10101);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tier_rate','modifier', NULL, 6, NULL, NULL, 'OBJECT.amount_after/OBJECT.master_units', NULL, 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tier_rate','modifier', NULL, 6, NULL, NULL, 'OBJECT.orig_rate + (OBJECT.amount_after - OBJECT.amount_before)/(OBJECT.percent_eligible*OBJECT.master_units)', NULL, 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_inv_amt','percentage', 'orig_amount', NULL, 'am_currency', 'c_fx_inv_rate', NULL, 'OBJECT.c_fx_inv_rate ne ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_inv_amt','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.orig_amount', 'OBJECT.c_fx_inv_rate eq ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_before','percentage', 'amount_before', NULL, 'am_currency', 'c_fx_inv_rate', NULL, 'OBJECT.c_fx_inv_rate ne ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_before','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.amount_before', 'OBJECT.c_fx_inv_rate eq ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_after','percentage', 'amount_after', NULL, 'am_currency', 'c_fx_inv_rate', NULL, 'OBJECT.c_fx_inv_rate ne ""', 10101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_after','modifier', NULL, NULL, 'am_currency', NULL, 'OBJECT.amount_after', 'OBJECT.c_fx_inv_rate eq ""', 10101);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'inv_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.inv_amt_after - OBJECT.inv_amt_before', NULL, 10104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'temp_inv_amt_impact','modifier', NULL, '-99', 'am_currency', NULL, 'OBJECT.tier_rate*OBJECT.percent_eligible*OBJECT.master_units',  NULL, 10102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_impact','percentage', 'temp_inv_amt_impact', '-99', 'am_currency', 'c_fx_inv_rate', NULL, 'OBJECT.c_fx_inv_rate ne ""', 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_amt_impact','modifier', NULL, '-99', 'am_currency', NULL, 'OBJECT.temp_inv_amt_impact',  'OBJECT.c_fx_inv_rate eq ""', 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'inv_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.am_currency', NULL, 10102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_inv_amt_before','percentage', 'inv_amt_before', NULL, 'am_currency', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_inv_amt_after','percentage', 'inv_amt_after', NULL, 'am_currency', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10102);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'svc_inv_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.svc_inv_amt_after - OBJECT.svc_inv_amt_before', NULL, 10104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_inv_amt_impact','percentage', 'inv_amt_impact', '-99', 'am_currency', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 10104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallConnection','normalize', 'tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_bridge_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallConference','normalize', 'tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_minimum_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallFeature','normalize', 'tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_feature_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountFeature','normalize','tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_feature_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','normalize', 'tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_credit_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','normalize','tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_rc_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('UDRecurringCharge','normalize','tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_udrc_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','normalize','tax_rate','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_late_fee_tax_rate/100', NULL, 10103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_inv_amt_before','percentage', 'inv_amt_before', NULL, 'am_currency', 'tax_rate', NULL, NULL, 10104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_inv_amt_after','percentage', 'inv_amt_after', NULL, 'am_currency', 'tax_rate', NULL, NULL, 10104);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tax_inv_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.tax_inv_amt_after - OBJECT.tax_inv_amt_before', NULL, 10105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_inv_amt_impact','percentage', 'inv_amt_impact', '-99', 'am_currency', 'tax_rate', NULL, NULL, 10105);

/* DIV */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_div_curr', NULL, 20100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_div_amt','currency_conversion', 'orig_inv_amt', NULL, 'div_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'div_amt_before','currency_conversion', 'inv_amt_before', NULL, 'div_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'div_amt_after','currency_conversion', 'inv_amt_after', NULL, 'div_curr', NULL, NULL, NULL, 20101);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'div_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.div_amt_after - OBJECT.div_amt_before', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'div_amt_impact','currency_conversion', 'inv_amt_impact', '-99', 'div_curr', NULL, NULL, NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_div_amt_before','percentage', 'div_amt_before', NULL, 'div_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_div_amt_after','percentage', 'div_amt_after', NULL, 'div_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'svc_div_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.svc_div_amt_after - OBJECT.svc_div_amt_before', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_div_amt_impact','percentage', 'div_amt_impact', NULL, 'div_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_div_amt_before','percentage', 'div_amt_before', NULL, 'am_currency', 'tax_rate', NULL, NULL, 20104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_div_amt_after','percentage', 'div_amt_after', NULL, 'am_currency', 'tax_rate', NULL, NULL, 20104);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tax_div_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.tax_div_amt_after - OBJECT.tax_div_amt_before', NULL, 20105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_div_amt_impact','percentage', 'div_amt_impact', NULL, 'am_currency', 'tax_rate', NULL, NULL, 20105);

/* BU */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_bu_curr', NULL, 20100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_bu_amt','currency_conversion', 'orig_inv_amt', NULL, 'bu_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'bu_amt_before','currency_conversion', 'inv_amt_before', NULL, 'bu_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'bu_amt_after','currency_conversion', 'inv_amt_after', NULL, 'bu_curr', NULL, NULL, NULL, 20101);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'bu_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.bu_amt_after - OBJECT.bu_amt_before', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'bu_amt_impact','currency_conversion', 'inv_amt_impact', '-99', 'bu_curr', NULL, NULL, NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_bu_amt_before','percentage', 'bu_amt_before', NULL, 'bu_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_bu_amt_after','percentage', 'bu_amt_after', NULL, 'bu_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'svc_bu_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.svc_bu_amt_after - OBJECT.svc_bu_amt_before', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_bu_amt_impact','percentage', 'bu_amt_impact', NULL, 'bu_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_bu_amt_before','percentage', 'bu_amt_before', NULL, 'bu_curr', 'tax_rate',NULL , NULL, 20104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_bu_amt_after','percentage', 'bu_amt_after', NULL, 'bu_curr', 'tax_rate', NULL, NULL, 20104);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tax_bu_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.tax_bu_amt_after - OBJECT.tax_bu_amt_before', NULL, 20105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_bu_amt_impact','percentage', 'bu_amt_impact', NULL, 'bu_curr', 'tax_rate', NULL, NULL, 20105);

/* GBL */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_gbl_curr', NULL, 20100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'orig_gbl_amt','currency_conversion', 'orig_inv_amt', NULL, 'gbl_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'gbl_amt_before','currency_conversion', 'inv_amt_before', NULL, 'gbl_curr', NULL, NULL, NULL, 20101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'gbl_amt_after','currency_conversion', 'inv_amt_after', NULL, 'gbl_curr', NULL, NULL, NULL, 20101);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.gbl_amt_after - OBJECT.gbl_amt_before', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'gbl_amt_impact','currency_conversion', 'inv_amt_impact', '-99', 'gbl_curr', NULL, NULL, NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_gbl_amt_before','percentage', 'gbl_amt_before', NULL, 'gbl_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_gbl_amt_after','percentage', 'gbl_amt_after', NULL, 'gbl_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20102);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'svc_gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.svc_gbl_amt_after - OBJECT.svc_gbl_amt_before', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'svc_gbl_amt_impact','percentage', 'gbl_amt_impact', NULL, 'gbl_curr', 'c_svc_fee_pct', 'TEMP.value/100', NULL, 20103);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_gbl_amt_before','percentage', 'gbl_amt_before', NULL, 'gbl_curr', 'tax_rate', NULL, NULL, 20104);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_gbl_amt_after','percentage', 'gbl_amt_after', NULL, 'gbl_curr', 'tax_rate', NULL, NULL, 20104);

--INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
--VALUES('','normalize', 'tax_gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, 'OBJECT.tax_gbl_amt_after - OBJECT.tax_gbl_amt_before', NULL, 20105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_gbl_amt_impact','percentage', 'gbl_amt_impact', NULL, 'gbl_curr', 'tax_rate', NULL, NULL, 20105);


/* Zero out all the USF and S1/S2 fields */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_inv_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_inv_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_inv_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_inv_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_inv_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_inv_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_inv_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_inv_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_inv_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_div_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_div_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_div_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_div_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_div_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_div_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_div_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_div_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_div_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_bu_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_bu_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_bu_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_bu_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_bu_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_bu_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_bu_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_bu_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_bu_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_gbl_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'usf_gbl_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_gbl_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv1_gbl_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_gbl_amt_before','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_gbl_amt_impact','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','normalize', 'tax_srv2_gbl_amt_after','modifier', NULL, NULL, NULL, NULL, '0', NULL, 1);



/* STUFF FOR APAC ONLY */

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallConnection','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_bridge_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallConnection','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_bridge_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallConnection','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_bridge_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallFeature','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_feature_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallFeature','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_feature_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('IntercallFeature','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_feature_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_rc_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_rc_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('FlatRecurringCharge','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_rc_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('UDRecurringCharge','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_udrc_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('UDRecurringCharge','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_udrc_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('UDRecurringCharge','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_udrc_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_late_fee_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_late_fee_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('latefee','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_late_fee_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_div_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_credit_div_curr', 'OBJECT.c_div_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_bu_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_credit_bu_curr', 'OBJECT.c_bu_curr eq ""', 1);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('AccountCredit','', 'c_gbl_curr','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_credit_gbl_curr', 'OBJECT.c_gbl_curr eq ""', 1);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_serv1_tax_amt','percentage', 'c_#CHARGENAME#_amt', 6, NULL, 'c_#CHARGENAME#_serv1_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_serv2_tax_amt','percentage', 'c_#CHARGENAME#_amt', 6, NULL, 'c_#CHARGENAME#_serv2_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_s1_tax_amt','percentage', 'c_#CHARGENAME#_div_amt', 6, NULL, 'c_#CHARGENAME#_serv1_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_s2_tax_amt','percentage', 'c_#CHARGENAME#_div_amt', 6, NULL, 'c_#CHARGENAME#_serv2_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_s1_tax_amt','percentage', 'c_#CHARGENAME#_bu_amt', 6, NULL, 'c_#CHARGENAME#_serv1_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_s2_tax_amt','percentage', 'c_#CHARGENAME#_bu_amt', 6, NULL, 'c_#CHARGENAME#_serv2_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_s1_tax_amt','percentage', 'c_#CHARGENAME#_gbl_amt', 6, NULL, 'c_#CHARGENAME#_serv1_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_s2_tax_amt','percentage', 'c_#CHARGENAME#_gbl_amt', 6, NULL, 'c_#CHARGENAME#_serv2_tax_rate', 'TEMP.value/100', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13100);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_vat_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_div_curr', NULL, NULL, 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_vat_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_bu_curr', NULL, NULL, 'OBJECT.c_bridge_bu_vat_tax_amt ne ""', 13101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_vat_tax_amt','currency_conversion', 'c_#CHARGENAME#_tax_amt', NULL, 'c_gbl_curr', NULL, NULL, 'OBJECT.c_bridge_gbl_vat_tax_amt ne ""', 13101);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_div_tax_amt','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt + OBJECT.c_#CHARGENAME#_div_s1_tax_amt + OBJECT.c_#CHARGENAME#_div_s2_tax_amt', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_bu_tax_amt','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_#CHARGENAME#_bu_vat_tax_amt + OBJECT.c_#CHARGENAME#_bu_s1_tax_amt + OBJECT.c_#CHARGENAME#_bu_s2_tax_amt', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13102);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'c_#CHARGENAME#_gbl_tax_amt','modifier', NULL, NULL, NULL, NULL, 'OBJECT.c_#CHARGENAME#_gbl_vat_tax_amt + OBJECT.c_#CHARGENAME#_gbl_s1_tax_amt + OBJECT.c_#CHARGENAME#_gbl_s2_tax_amt', 'OBJECT.c_#CHARGENAME#_div_vat_tax_amt ne ""', 13102);


INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'tax_other','aggregate', 'c_#CHARGENAME#_serv1_tax_amt', NULL, NULL, NULL, NULL, NULL, 13105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('','', 'tax_other','aggregate', 'c_#CHARGENAME#_serv2_tax_amt', NULL, NULL, NULL, NULL, NULL, 13105);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallConnection','', 'PARENT.tax_other','aggregate', 'tax_other', NULL, NULL, NULL, NULL, NULL, 13200);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field, modifier, filter, field_order)   
VALUES('InterCallFeature','', 'PARENT.tax_other','aggregate', 'tax_other', NULL, NULL, NULL, NULL, NULL, 13200);

