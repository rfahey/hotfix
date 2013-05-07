create table agg_boundary_group_acc_map (
boundary_group_id NUMBER,
id_acc NUMBER,
group_counter NUMBER,
CONSTRAINT agg_boundary_group_acc_map_pk PRIMARY KEY (boundary_group_id, id_acc)
 );

create index agg_boundary_group_id_acc_ndx on AGG_BOUNDARY_GROUP_ACC_MAP(id_acc);
