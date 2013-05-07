CREATE TABLE mvm_logical_cluster_nodes(
	logical_cluster varchar(100) NOT NULL,
	logical_node_id varchar(100) NOT NULL,
	physical_node_id varchar(100) NOT NULL,
	weight decimal(18,6) NOT NULL
)


