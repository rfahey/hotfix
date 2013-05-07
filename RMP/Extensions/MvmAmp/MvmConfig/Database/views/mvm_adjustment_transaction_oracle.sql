-- Add adj_ prefix to T_ADJUSTMENT_TRANSACTION
-- select 'create or replace view MVM_ADJUSTMENT_TRANSACTION as (select ' from dual
-- union all
-- select lower(column_name)||' as adj_'||lower(column_name)||',' from user_tab_columns where table_name='T_ADJUSTMENT_TRANSACTION'
-- union all 
-- select '1 as adj_junk from T_ADJUSTMENT_TRANSACTION)' from dual;


create or replace view MVM_ADJUSTMENT_TRANSACTION as (select 
id_acc_payer as adj_id_acc_payer,
c_status as adj_c_status,
n_adjustmenttype as adj_n_adjustmenttype,
dt_crt as adj_dt_crt,
dt_modified as adj_dt_modified,
id_aj_template as adj_id_aj_template,
id_aj_instance as adj_id_aj_instance,
id_aj_type as adj_id_aj_type,
id_usage_interval as adj_id_usage_interval,
adjustmentamount as adj_adjustmentamount,
aj_tax_federal as adj_aj_tax_federal,
aj_tax_state as adj_aj_tax_state,
aj_tax_county as adj_aj_tax_county,
aj_tax_local as adj_aj_tax_local,
aj_tax_other as adj_aj_tax_other,
am_currency as adj_am_currency,
tx_default_desc as adj_tx_default_desc,
tx_desc as adj_tx_desc,
arbatchid as adj_arbatchid,
ardelbatchid as adj_ardelbatchid,
ardelaction as adj_ardelaction,
archive_sess as adj_archive_sess,
id_adj_trx as adj_id_adj_trx,
id_sess as adj_id_sess,
id_parent_sess as adj_id_parent_sess,
id_reason_code as adj_id_reason_code,
id_acc_creator as adj_id_acc_creator
);

