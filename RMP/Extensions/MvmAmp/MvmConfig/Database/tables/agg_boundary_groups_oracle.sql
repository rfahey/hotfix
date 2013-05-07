create table agg_boundary_groups (
boundary_group_id NUMBER NOT NULL,
lock_date DATE,
lock_guid VARCHAR2(100),
logical_instance_id NUMBER NOT NULL, 
CONSTRAINT agg_boundary_groups_pk PRIMARY KEY (boundary_group_id)
 );

