if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_orig_field_map]'))
drop table [dbo].[agg_orig_field_map]

create table agg_orig_field_map (
	table_name VARCHAR(30),
	field_name VARCHAR(30),
	orig_field_name VARCHAR(30)
);

