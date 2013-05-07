if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tier_domain_mapping]'))
drop table [dbo].[tier_domain_mapping]

create table tier_domain_mapping (
tier_domain_group VARCHAR(100),
tier_domain VARCHAR(100)
 );

 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('countable','countable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable','ratable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('discountable','discountable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('generatable','generatable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable and discountable','ratable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable and discountable','discountable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable and generatable','ratable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable and generatable','generatable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('discountable and generatable','discountable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('discountable and generatable','generatable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable, discountable and generatable','ratable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable, discountable and generatable','discountable');
 INSERT INTO tier_domain_mapping (tier_domain_group, tier_domain) VALUES('ratable, discountable and generatable','generatable');
 
