if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_bundle_pos]'))
drop table [dbo].[agg_bundle_pos]

create table agg_bundle_pos (
id_po INTEGER
 );

create index agg_bundle_pos_ndx on agg_bundle_pos(id_po);

