CREATE TABLE mvm_logical_cluster_nodes(
	logical_cluster varchar2(100) NOT NULL,
	logical_node_id varchar2(100) NOT NULL,
	physical_node_id varchar2(100) NOT NULL,
	weight numeric(18,6) NOT NULL
);


