create table agg_mapping_chain_members (
 mapping_chain VARCHAR2(100) NOT NULL,
 mapping_name VARCHAR2(100) NOT NULL,
 mapping_order NUMBER(10) NOT NULL
);
create unique index agg_mapping_chain_member_ndx on agg_mapping_chain_members(mapping_chain, mapping_name);
