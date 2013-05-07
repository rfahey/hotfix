if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mvm_counters]'))
drop table [dbo].[mvm_counters]

create table mvm_counters (
	mvm_batch_id INT,
	mvm_node_id INT,
	counter_date DATETIME,
	counter_name VARCHAR(1000),
	counter_value VARCHAR(1000)
);

