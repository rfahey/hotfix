create table agg_boundary_groups (
boundary_group_id INTEGER NOT NULL,
lock_date datetime,
lock_guid VARCHAR(100),
logical_instance_id INTEGER NOT NULL, 
CONSTRAINT agg_boundary_groups_pk PRIMARY KEY (boundary_group_id)
 );

