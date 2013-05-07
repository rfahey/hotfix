insert into t_current_long_id (id_current, nm_current) select 1,'boundary_group_id' from dual where 0 = (select count(*) from t_current_long_id where nm_current = 'boundary_group_id');
