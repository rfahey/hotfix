CREATE TABLE mvm_resource_def(
	resource_type varchar2(100) NOT NULL,
	mvm_args varchar2(4000) NOT NULL,
	weight numeric(18,6) NOT NULL
);

insert into mvm_resource_def (resource_type,mvm_args,weight) values ('id_server','-proc=run_id_server',1);
insert into mvm_resource_def (resource_type,mvm_args,weight) values ('ct_server','-proc=track_changes -use_id_server=1',1);

