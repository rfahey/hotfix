create table t_rabbitmq_queues (
	queue varchar2(100) PRIMARY KEY,
	rabbitmq_nodename varchar2(100)
);

insert into t_rabbitmq_queues (queue,rabbitmq_nodename) values ('usage','localhost');
