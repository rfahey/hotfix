if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[usage_qualification_groups]'))
drop table [dbo].[usage_qualification_groups]

create table usage_qualification_groups (
usage_qualification_group VARCHAR(100),
row_num INTEGER,
filter VARCHAR(4000)
 );

 INSERT INTO usage_qualification_groups
 (usage_qualification_group, row_num, 
 filter)
 VALUES('self',1,
 '1 == 1');
 
