if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_param_table_master]'))
drop table [dbo].[agg_param_table_master]

create table agg_param_table_master (
column_name VARCHAR(100),
 description VARCHAR(1000),
 global_default_value VARCHAR(1000));
