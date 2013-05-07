create table mvm_rabbitmq_map (
	logical_cluster varchar(100)
	logical_node_id_start int,
	logical_node_id_end int,
	queue_type varchar(100),
	queue varchar(100)
)

insert into mvm_rabbitmq_map (logical_cluster,logical_node_id_start,logical_node_id_end,queue_type,queue) values ('nrt_cluster',0,9999999,'usage','usage');

