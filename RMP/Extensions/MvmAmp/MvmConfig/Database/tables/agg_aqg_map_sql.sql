if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_aqg_map]'))
drop table [dbo].[agg_aqg_map]

create table agg_aqg_map (
id_acc INTEGER,
account_qualification_group VARCHAR(100),
child_id_acc INTEGER,
start_date DATETIME,
end_date DATETIME,
CONSTRAINT agg_aqg_map_pk PRIMARY KEY (id_acc, account_qualification_group, child_id_acc, start_date)
 );

