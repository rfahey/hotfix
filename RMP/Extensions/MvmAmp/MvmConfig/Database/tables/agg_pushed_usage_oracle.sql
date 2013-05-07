create table agg_pushed_usage (
id_acc NUMBER,
id_sess NUMBER,
old_usage_interval NUMBER,
new_usage_interval NUMBER,
CONSTRAINT agg_pushed_usage_pk PRIMARY KEY (id_acc, id_sess, old_usage_interval)
);

