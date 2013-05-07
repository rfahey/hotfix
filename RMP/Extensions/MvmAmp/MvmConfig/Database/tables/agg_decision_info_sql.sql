if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_decision_info]'))
drop table [dbo].[agg_decision_info]

	create table agg_decision_info (
		id_acc INTEGER,
		id_group INTEGER,
		id_sub INTEGER,
		start_date DATETIME,
		end_date DATETIME,
		id_po INTEGER,
		id_sched INTEGER,
		n_order INTEGER,
		tt_start DATETIME,
		account_qualification_group VARCHAR(100),
		tier_column_group VARCHAR(100),
		tier_priority NUMERIC(22,10),
		tier_category VARCHAR(100),
		tier_responsiveness VARCHAR(100),
		decision_unique_id VARCHAR(400) NOT NULL,
		decision_object_id VARCHAR(8000),
		CONSTRAINT agg_dec_info_pk PRIMARY KEY (id_acc, decision_unique_id)
	);

create index agg_dec_info_ndx1 on AGG_DECISION_INFO(id_acc, id_sched, n_order, tt_start);
