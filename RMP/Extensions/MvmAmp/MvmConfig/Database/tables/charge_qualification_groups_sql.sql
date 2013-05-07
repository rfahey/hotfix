if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[charge_qualification_groups]'))
drop table [dbo].[charge_qualification_groups]

create table charge_qualification_groups (
charge_qualification_group VARCHAR(100),
charge_name VARCHAR(100),
productview_name VARCHAR(100)
 );

 INSERT INTO charge_qualification_groups
 (charge_qualification_group, charge_name, productview_name)
 VALUES('base','bridgeamount', NULL);
 
