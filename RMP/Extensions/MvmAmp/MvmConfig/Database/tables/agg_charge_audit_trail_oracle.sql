create table agg_charge_audit_trail (
id_payee NUMBER,
id_sess NUMBER,
id_usage_interval NUMBER,
decision_unique_id VARCHAR2(4000),
tier_start VARCHAR2(4000),
tier_end VARCHAR2(4000),
charge_direction VARCHAR2(4000),
CONSTRAINT agg_charge_audit_trail_pk PRIMARY KEY (id_payee, id_usage_interval, id_sess)
 );

