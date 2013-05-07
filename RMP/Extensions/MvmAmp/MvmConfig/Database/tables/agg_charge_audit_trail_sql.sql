if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_charge_audit_trail]'))
drop table [dbo].[agg_charge_audit_trail]

create table agg_charge_audit_trail (
id_payee INTEGER,
id_sess BIGINT,
id_usage_interval INTEGER,
decision_unique_id VARCHAR(4000),
tier_start VARCHAR(4000),
tier_end VARCHAR(4000),
charge_direction VARCHAR(4000),
CONSTRAINT agg_chg_audit_trail_pk PRIMARY KEY (id_payee, id_usage_interval, id_sess)
 );

