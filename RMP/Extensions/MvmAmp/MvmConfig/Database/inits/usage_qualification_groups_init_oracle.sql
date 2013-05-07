DELETE USAGE_QUALIFICATION_GROUPS;

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('resplus',1, '(OBJECT.c_transport == #intercall.com/ConfCommon/Transport/Toll-Free# or OBJECT.c_transport == #intercall.com/ConfCommon/Transport/Toll#) and OBJECT.c_product == #intercall.com/ConfCommon/Product/R# and OBJECT.c_intl_call == 0');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('premium',1, 'OBJECT.c_product == #intercall.com/ConfCommon/Product/P#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('ium',1, 'OBJECT.c_product == #intercall.com/ConfCommon/Product/UMP#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('operator_assisted',1, 'OBJECT.c_product == #intercall.com/ConfCommon/Product/L#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('P9_post_conference_emails',1, 'OBJECT.c_trans_code == #intercall.com/ConfCommon/FeatureCode/P9#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('WR_res_plus_record',1, 'OBJECT.c_trans_code == #intercall.com/ConfCommon/FeatureCode/WR#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('OW_res_plus_playback_phone',1, 'OBJECT.c_trans_code == #intercall.com/ConfCommon/FeatureCode/OW#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('PB_res_plus_playback_stream',1, 'OBJECT.c_trans_code == #intercall.com/ConfCommon/FeatureCode/PB#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('R',1, 'OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/R#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('R8',1, 'OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/R8#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('RVP',1, 'OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/RVP#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('RVP1',1, 'OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/RVP1#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('UMP',1, 'OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/UMP#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('UK_G8',1, 'OBJECT.c_surcharge_charge_code == #intercall.com/ConfCommon/ChargeCode/UK# and OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/G8#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('SBWAA_RCs',1, 'OBJECT.id_view == #metratech.com/flatrecurringcharge# and OBJECT.c_orig_id_sess == "" and OBJECT.c_rc_charge_code == #intercall.com/ConfCommon/ChargeCode/SBWAA#');

 INSERT INTO usage_qualification_groups (usage_qualification_group, row_num, filter)
 VALUES('SBWAM_RCs',1, 'OBJECT.id_view == #metratech.com/flatrecurringcharge# and OBJECT.c_orig_id_sess == "" and OBJECT.c_rc_charge_code == #intercall.com/ConfCommon/ChargeCode/SBWAM#');

 INSERT INTO usage_qualification_groups values ('R_or_R8', 1, '(OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/R# or OBJECT.c_bill_code == #intercall.com/ConfCommon/BillCode/R8#)');
