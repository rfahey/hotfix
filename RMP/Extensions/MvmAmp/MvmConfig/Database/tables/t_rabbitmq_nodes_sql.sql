create table t_rabbitmq_nodes (
	rabbitmq_nodename varchar(100) PRIMARY KEY,
	server varchar(100) NULL,
	username varchar(100) NULL,
	password varchar (100) NULL,
	port int NULL,
	vhost varchar(100) NULL
)

insert into t_rabbitmq_nodes (rabbitmq_nodename,server,username,password,port,vhost) values ('localhost','localhost','guest','guest',5672,'%2f');
