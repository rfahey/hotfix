CREATE TABLE mvm_logical_cluster_def(
	logical_cluster varchar(100) NOT NULL PRIMARY KEY,
	nodes int NOT NULL,
	has_backup_nodes int NOT NULL,
	weight decimal(18,6) NOT NULL
)

insert into mvm_logical_cluster_def (logical_cluster,nodes,has_backup_nodes,weight) values ('nrt_cluster',2,0,1)

