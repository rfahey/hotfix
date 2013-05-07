create or replace view AGG_ACC_CURRENCIES as
select a.id_descendent id_acc, max(b.c_ratecurrency) c_rate_curr, max(b.c_invoicecurrency) am_currency, max(c.c_div_iso_currency) c_div_curr, max(d.c_rpt_iso_currency) c_bu_curr, max('USD') c_gbl_curr  from t_account_ancestor a
left outer join t_av_company b on a.id_ancestor = b.id_acc
left outer join t_av_divinfo c on a.id_ancestor = c.id_acc
left outer join t_av_buinfo d on a.id_ancestor = d.id_acc
group by a.id_descendent;

