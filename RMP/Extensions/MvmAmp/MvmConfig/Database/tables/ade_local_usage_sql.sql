create table ade_local_usage (
 id_acc INTEGER NOT NULL,
 node_id INTEGER NOT NULL
);
create index ade_local_usage_ndx on ade_local_usage(id_acc);
