CREATE TABLE mvm_physical_cluster_def(
	physical_cluster varchar2(100) NOT NULL,
	server varchar2(100) NOT NULL,
	num_cores number NOT NULL,
	num_resource_cores numeric(18,6) NOT NULL,
	port_start number NULL,
	port_end number NULL
);

insert into mvm_physical_cluster_def (physical_cluster,server,num_cores,num_resource_cores) values ('default','localhost',2,0);

