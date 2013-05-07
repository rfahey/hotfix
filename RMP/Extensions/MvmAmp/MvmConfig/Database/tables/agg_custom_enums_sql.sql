if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_custom_enums]'))
drop table [dbo].[agg_custom_enums]

create table agg_custom_enums (
table_name VARCHAR(2000),
namespace VARCHAR(2000),
enum_value VARCHAR(2000),
enum_id VARCHAR(2000),
filter VARCHAR(2000)
 );


