if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_usage_hook_id_accs]'))
drop table [dbo].[agg_usage_hook_id_accs]

create table agg_usage_hook_id_accs (
 [hook_name] VARCHAR(100),
 [id_acc] [int] NOT NULL
);
