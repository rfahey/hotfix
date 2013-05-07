create table agg_decision_info (
id_acc NUMBER,
id_group NUMBER,
id_sub NUMBER,
start_date DATE,
end_date DATE,
id_po NUMBER,
id_sched NUMBER,
n_order NUMBER,
tt_start DATE,
account_qualification_group VARCHAR2(100),
tier_column_group VARCHAR2(100),
tier_priority NUMBER(22,10),
tier_category VARCHAR2(100),
tier_responsiveness VARCHAR2(100),
decision_unique_id VARCHAR2(4000) NOT NULL,
decision_object_id VARCHAR2(4000),
CONSTRAINT agg_dec_info_pk PRIMARY KEY (decision_unique_id)
 );

create index agg_dec_info_ndx1 on AGG_DECISION_INFO(id_acc, id_sched, n_order, tt_start);

