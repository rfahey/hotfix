CREATE TABLE mvm_physical_cluster_def(
	physical_cluster varchar(100) NOT NULL,
	server varchar(100) NOT NULL,
	num_cores int NOT NULL,
	num_resource_cores decimal(18,6) NOT NULL,
	port_start int NULL,
	port_end int NULL
)

insert into mvm_physical_cluster_def (physical_cluster,server,num_cores,num_resource_cores) values ('default','localhost',2,0)

