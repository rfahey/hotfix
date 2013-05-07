if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mvm_clusters]'))
drop table [dbo].[mvm_clusters]

create table mvm_clusters(
	mvm_cluster_name varchar(4000) not null,
	server varchar(4000) not null,
	num_instances INT not null,
	port_start INT null,
	port_end INT null,
	bin varchar(4000) null,
	group_id INT null,
	exe varchar(4000) null,
	is_master INT null
);
GO
insert into mvm_clusters values ('default', 'localhost' , 2, null,null,null, null,null,0);
GO

