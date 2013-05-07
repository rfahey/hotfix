DELETE CHARGE_QUALIFICATION_GROUPS;

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','bridge', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','minimum', 'InterCallConference');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','feature', 'InterCallFeature');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','feature', 'AccountFeature');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','credit', 'AccountCredit');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','rc', 'FlatRecurringCharge');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','udrc', 'UDRecurringCharge');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','late_fee', 'latefee');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('leg','leg', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('bridge','bridge', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('surcharge','surcharge', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('telecom','telecom', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('minimum','minimum', 'InterCallConference');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('portoverage','portoverage', 'InterCallConference');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('noshow','noshow', 'InterCallConference');

/* Rows for normalization process */
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'InterCallConnection');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'InterCallConference');
 
 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'InterCallFeature');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'AccountFeature');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'AccountCredit');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'FlatRecurringCharge');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'UDRecurringCharge');

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('normalize','normalize', 'latefee');

