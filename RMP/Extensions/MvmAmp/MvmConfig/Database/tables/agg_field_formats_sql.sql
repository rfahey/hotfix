if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agg_field_formats]'))
drop table [dbo].[agg_field_formats]

create table agg_field_formats (
format_id INT IDENTITY (1,1) NOT NULL,
format_string1 VARCHAR(4000) NOT NULL,
format_string2 VARCHAR(4000),
format_string3 VARCHAR(4000),
format_string4 VARCHAR(4000),
format_string5 VARCHAR(4000),
CONSTRAINT agg_field_formats_pk PRIMARY KEY (format_id) 
);

--CREATE UNIQUE INDEX agg_field_formats_1ndx ON agg_field_formats(format_id);
