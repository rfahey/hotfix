create table mvm_change_tracking_status (
                logical_cluster_name varchar2(100) not null,
                last_transaction_id varchar2(1000),
                last_transaction_date date,
                constraint mvm_change_tracking_status_pk primary key (logical_cluster_name)
);

