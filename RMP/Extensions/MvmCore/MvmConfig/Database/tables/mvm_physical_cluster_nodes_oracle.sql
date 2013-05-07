CREATE TABLE mvm_physical_cluster_nodes(
	physical_cluster varchar2(100) NOT NULL,
	physical_node_id varchar2(100) NOT NULL,
	parent_physical_node_id varchar2(100) NULL,
	server varchar2(100) NOT NULL,
	num_cores numeric(18,6) NULL,
	port number NULL,
	pid number NULL,
	status varchar2(100) NULL,
	status_date date NULL,
	heartbeat_date date NULL,
	timeout_date date NULL,
	keep_alive number NULL,
	mvm_run_id number NULL,
	starting_proc varchar2(100) NULL,
	args varchar2(4000) NULL,
	assembly varchar2(100) NULL,
	is_x64 number NULL
);

