if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_pv_sortkeys]'))
drop table [dbo].[agg_pv_sortkeys]

create table agg_pv_sortkeys (
productview_name VARCHAR(100),
sortkey_order INTEGER,
sortkey_filter VARCHAR(1000),
sortkey_expression VARCHAR(1000)
 );

insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values(NULL,NULL,NULL,'OBJECT(OBJECT.parent_oid).dt_session~OBJECT.dt_session');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('CONFCONN',1,'OBJECT.parent_id_sess ne "" and OBJECT.parent_id_sess ne OBJECT.id_sess','OBJECT(OBJECT.parent_oid).c_actualstarttime~OBJECT.c_connecttime');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('CONFCONN',NULL,NULL,'OBJECT.c_connecttime~OBJECT.c_connecttime');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('CONFERENCE',NULL,NULL,'OBJECT.c_actualstarttime');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('CONFFEATURE',NULL,NULL,'OBJECT(OBJECT.parent_oid).c_actualstarttime~OBJECT.c_chargetimestamp');

