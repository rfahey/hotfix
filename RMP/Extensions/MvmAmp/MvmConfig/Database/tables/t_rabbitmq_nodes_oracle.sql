create table t_rabbitmq_nodes (
	rabbitmq_nodename varchar2(100) PRIMARY KEY,
	server varchar2(100) NULL,
	username varchar2(100) NULL,
	password varchar2(100) NULL,
	port number NULL,
	vhost varchar2(100) NULL
);

insert into t_rabbitmq_nodes (rabbitmq_nodename,server,username,password,port,vhost) values ('localhost','localhost','guest','guest',5672,'%2f');
