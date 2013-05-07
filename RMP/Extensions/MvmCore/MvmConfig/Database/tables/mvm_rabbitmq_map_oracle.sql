create table mvm_rabbitmq_map (
	logical_cluster varchar2(100),
	logical_node_id_start number,
	logical_node_id_end number,
	queue_type varchar2(100),
	queue varchar2(100)
);

insert into mvm_rabbitmq_map (logical_cluster,logical_node_id_start,logical_node_id_end,queue_type,queue) values ('nrt_cluster',0,9999999,'usage','usage');

