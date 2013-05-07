if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mvm_server_credentials]'))
drop table [dbo].[mvm_server_credentials]

create table mvm_server_credentials(
	server varchar(400) not null,
	username varchar(4000) not null,
	password varchar(4000) not null,
	CONSTRAINT mvm_server_cred_pk PRIMARY KEY (server,username)
);


