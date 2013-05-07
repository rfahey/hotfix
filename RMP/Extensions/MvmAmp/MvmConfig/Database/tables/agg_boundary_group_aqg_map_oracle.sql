create table agg_boundary_group_aqg_map (
boundary_group_id NUMBER,
id_acc NUMBER,
account_qualification_group VARCHAR2(100),
CONSTRAINT agg_boundary_group_aqg_map_pk PRIMARY KEY (boundary_group_id, id_acc, account_qualification_group)
 );

create index agg_bg_grp_aqg_map_ndx on AGG_BOUNDARY_GROUP_AQG_MAP (id_acc, account_qualification_group);

