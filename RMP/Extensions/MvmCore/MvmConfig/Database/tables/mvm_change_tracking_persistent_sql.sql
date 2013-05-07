create table mvm_change_tracking_persistent (
                logical_cluster_name varchar(100) not null,
                table_name varchar(100) not null,
                routing_proc varchar(100) not null,
                prerouting_proc varchar(100) not null,
                postrouting_proc varchar(100) not null,
                integration_proc varchar(100) not null,
                included_columns varchar(4000),
                excluded_columns varchar(4000),
                operation_field varchar(100),
                table_field varchar(100),
                inclusion_proc varchar(100),
                database_predicate varchar(4000),
                priority integer,
                constraint mvm_change_tracking_persist_pk primary key (logical_cluster_name, table_name)
);

