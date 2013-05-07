create table agg_field_formats (
format_id NUMBER,
format_string1 VARCHAR2(4000),
format_string2 VARCHAR2(4000),
format_string3 VARCHAR2(4000),
format_string4 VARCHAR2(4000),
format_string5 VARCHAR2(4000),
CONSTRAINT agg_field_formats_pk PRIMARY KEY (format_id) 
);
CREATE INDEX agg_field_formats_ndx ON agg_field_formats (format_string1);
