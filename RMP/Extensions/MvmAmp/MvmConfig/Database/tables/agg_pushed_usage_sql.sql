create table agg_pushed_usage (
id_acc INTEGER,
id_sess BIGINT,
old_usage_interval INTEGER,
new_usage_interval INTEGER,
CONSTRAINT agg_pushed_usage_pk PRIMARY KEY (id_acc, id_sess, old_usage_interval)
);

