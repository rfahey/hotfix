CREATE TABLE mvm_physical_cluster_nodes(
	physical_cluster varchar(100) NOT NULL,
	physical_node_id varchar(100) NOT NULL,
	parent_physical_node_id varchar(100) NULL,
	server varchar(100) NOT NULL,
	num_cores decimal(18,6) NULL,
	port int NULL,
	pid int NULL,
	status varchar(100) NULL,
	status_date datetime NULL,
	heartbeat_date datetime NULL,
	timeout_date datetime NULL,
	keep_alive int NULL,
	mvm_run_id int NULL,
	starting_proc varchar(100) NULL,
	args varchar(4000) NULL,
	assembly varchar(100) NULL,
	is_x64 int NULL
)

