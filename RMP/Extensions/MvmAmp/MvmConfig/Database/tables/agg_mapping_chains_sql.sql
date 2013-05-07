create table agg_mapping_chains (
 mapping_chain VARCHAR(100) NOT NULL
);
create unique index agg_mapping_chains_ndx on agg_mapping_chains(mapping_chain);
