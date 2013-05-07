if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[usage_charge_fields]'))
drop table [dbo].[usage_charge_fields]

create table usage_charge_fields (
productview_name VARCHAR(100),
charge_name VARCHAR(100),
field_name VARCHAR(100),
field_type VARCHAR(100),
contributing_field VARCHAR(100),
precision VARCHAR(100),
currency_field VARCHAR(100),
percentage_field VARCHAR(100),
modifier VARCHAR(1000),
filter VARCHAR(1000),
direction VARCHAR(1000),
field_order INTEGER
 );

-- valid field types are 'units', 'rate', 'amount', 'currency', 'proportional', 'aggregate', 'currency_conversion', 'percentage' 
--(aggregate requires a contributing field if not the main amount) 
--(proportional requires a contributing field if not the main amount)
--(currency_conversion requires a contributing field if not the main amount and both this field and the contributing field MUST have a currency_field defined)
--(percentage requires a percentage_field AND a contributing_field) 
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','CancelCharges', 'c_CancelCharges','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','OverusedPortCharges', 'c_OverusedPortCharges','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','UnusedPortCharges', 'c_UnusedPortCharges','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','ReservationCharges', 'c_ReservationCharges','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfConn','TransportAmount', 'c_TransportAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfConn','BridgeAmount', 'c_BridgeAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfFeature','FlatFeeCharge', 'c_FlatFeeCharge','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfFeature','MetricCharge', 'c_MetricCharge','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfFeature','PassThroughCharge', 'c_PassThroughCharge','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('AccountCredit','CreditAmount', 'c_CreditAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('FlatRecurringCharge','RCAmount', 'c_RCAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('NonRecurringCharge','NRCAmount', 'c_NRCAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('UDRecurringCharge','RCAmount', 'c_RCAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('FlatDiscount','DiscountAmount', 'c_DiscountAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('PercentDiscount','DiscountAmount', 'c_DiscountAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('PercentDiscount_NoCond','DiscountAmount', 'c_DiscountAmount','amount', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','PerCallMinimumCharges', 'c_PerCallMinimumCharges','amount', NULL, NULL, NULL, NULL);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('','', 'c_#CHARGENAME#_blah','proportional', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfConn','', 'PARENT.amount','proportional', NULL, NULL, NULL, NULL);

INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfConn','', 'c_ConnectionMinutes','units', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('Conference','', 'c_ConferenceTotal','units', NULL, NULL, NULL, NULL);
INSERT INTO usage_charge_fields (productview_name, charge_name, field_name, field_type, contributing_field, precision, currency_field, percentage_field)   VALUES('ConfFeature','', 'c_Units','units', NULL, NULL, NULL, NULL);

