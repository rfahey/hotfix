create table mvm_clusters(
	mvm_cluster_name varchar2(4000) not null,
	server varchar2(4000) not null,
	num_instances number not null,
	port_start number null,
	port_end number null,
	bin varchar2(4000) null,
	group_id number null,
	exe varchar2(4000) null,
	is_master number null
);
