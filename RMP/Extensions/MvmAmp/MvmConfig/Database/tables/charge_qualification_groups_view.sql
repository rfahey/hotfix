/*
drop view charge_qualification_groups;
*/
create view charge_qualification_groups
as
select
a.c_Name as charge_qualification_group,
b.c_ChargeName as charge_name,
b.c_ProductViewName as productview_name
from t_be_mvm_ade_chargequalgroup a
left outer join t_be_mvm_ade_chargequalific b on a.c_ChargeQualGroup_Id = b.c_ChargeQualGroup_Id
;
/* (
charge_qualification_group VARCHAR2(100),
charge_name VARCHAR2(100),
productview_name VARCHAR2(100)
 );
*/
