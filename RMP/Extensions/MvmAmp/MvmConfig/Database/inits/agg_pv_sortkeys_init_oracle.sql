DELETE AGG_PV_SORTKEYS;

insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values(NULL,NULL,NULL,'OBJECT.dt_session~OBJECT.id_sess');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('InterCallConference',1,NULL,'OBJECT.c_folo_start_time~OBJECT.id_sess');
insert into agg_pv_sortkeys (productview_name, sortkey_order, sortkey_filter, sortkey_expression) values('InterCallConnection',2,NULL,'OBJECT.c_connecttime~OBJECT.id_sess');
