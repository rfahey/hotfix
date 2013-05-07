CREATE TABLE mvm_resource_nodes(
	resource_type varchar(100) NOT NULL,
	logical_cluster varchar(100) NOT NULL,
	physical_node_id varchar(100) NULL,
	lock_who varchar(100) NOT NULL,
	lock_timeout date NOT NULL
)

