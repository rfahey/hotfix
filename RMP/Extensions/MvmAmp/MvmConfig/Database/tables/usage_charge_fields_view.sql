/*
drop view usage_charge_fields
*/
create view usage_charge_fields
as
select
c_ProductViewName as productview_name,
c_ChargeName as charge_name,
c_FieldName as field_name,
LOWER(c_FieldType) as field_type,
c_ContributingField as contributing_field,
c_Precision as precision,
c_CurrencyField as currency_field,
c_PercentageField as percentage_field,
c_Modifier as modifier,
c_Filter as filter,
c_FieldOrder as field_order,
c_Direction as direction
from t_be_mvm_ade_usagechargefie
;
/* (
productview_name VARCHAR2(100),
charge_name VARCHAR2(100),
field_name VARCHAR2(100),
field_type VARCHAR2(100),
contributing_field VARCHAR2(100),
precision VARCHAR2(100),
currency_field VARCHAR2(100),
percentage_field VARCHAR2(100),
modifier VARCHAR2(1000),
filter VARCHAR2(1000),
field_order NUMBER
 );
*/
