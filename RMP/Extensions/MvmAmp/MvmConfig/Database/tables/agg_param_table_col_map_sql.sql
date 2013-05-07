if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_param_table_col_map]'))
drop table [dbo].[agg_param_table_col_map]

create table agg_param_table_col_map (
paramtable_name VARCHAR(100),
column_group VARCHAR(100), 
column_name VARCHAR(100), 
pt_column_name VARCHAR(100) NULL, 
default_value VARCHAR(1000) NULL,
push_to_usage INTEGER NULL
 );
