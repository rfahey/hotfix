create table mvm_change_tracking_status (
                logical_cluster_name varchar(100) not null,
                last_transaction_id varchar(1000),
                last_transaction_date datetime,
                constraint mvm_change_tracking_status_pk primary key (logical_cluster_name)
);

