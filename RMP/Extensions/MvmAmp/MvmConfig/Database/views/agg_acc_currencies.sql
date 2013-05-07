create or replace view AGG_ACC_CURRENCIES as
select a.id_acc my_id_acc, b.c_ratecurrency c_rate_curr, b.c_invoicecurrency am_currency, c.c_div_iso_currency c_div_curr, d.c_rpt_iso_currency c_bu_curr, 'USD' c_gbl_curr  from t_av_ancestorview a
inner join t_av_company b on a.c_companyidacc = b.id_acc
inner join t_av_divinfo c on a.c_divisionidacc = c.id_acc
inner join t_av_buinfo d on a.c_buidacc = d.id_acc;
