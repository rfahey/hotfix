if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[decision_qualification_groups]'))
drop table [dbo].[decision_qualification_groups]

create table decision_qualification_groups (
decision_qualification_group VARCHAR(100),
row_num INTEGER,
filter VARCHAR(4000)
 );

