create table agg_aqg_map (
id_acc NUMBER,
account_qualification_group VARCHAR2(100),
child_id_acc NUMBER,
start_date DATE,
end_date DATE,
CONSTRAINT agg_aqg_map_pk PRIMARY KEY (id_acc, account_qualification_group, child_id_acc, start_date)
 );

