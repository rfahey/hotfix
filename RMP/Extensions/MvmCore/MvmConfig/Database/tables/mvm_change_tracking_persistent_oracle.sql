create table mvm_change_tracking_persistent (
                logical_cluster_name varchar2(100) not null,
                table_name varchar2(100) not null,
                routing_proc varchar2(100) not null,
                prerouting_proc varchar2(100) not null,
                postrouting_proc varchar2(100) not null,
                integration_proc varchar2(100) not null,
                included_columns varchar2(4000),
                excluded_columns varchar2(4000),
                operation_field varchar2(100),
                table_field varchar2(100),
                inclusion_proc varchar2(100),
                database_predicate varchar2(4000),
                priority NUMBER,
                constraint mvm_change_tracking_persist_pk primary key (logical_cluster_name, table_name)
);

