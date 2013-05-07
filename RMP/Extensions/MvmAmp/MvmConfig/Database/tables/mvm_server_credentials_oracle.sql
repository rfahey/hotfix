create table mvm_server_credentials(
	server varchar2(400) not null,
	username varchar2(4000) not null,
	password varchar2(4000) not null,
	CONSTRAINT mvm_server_cred_pk PRIMARY KEY (server,username)
);

