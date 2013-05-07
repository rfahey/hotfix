create table agg_mapping_chain_members (
 mapping_chain VARCHAR(100) NOT NULL,
 mapping_name VARCHAR(100) NOT NULL,
 mapping_order INTEGER NOT NULL
);
create unique index agg_mapping_chain_member_ndx on agg_mapping_chain_members(mapping_chain, mapping_name);
