/**********************
 * REMOVE EXISTING ROWS
 **********************/
delete t_be_mvm_ade_decisionglobal;

/**********************
 * QUALIFICATION
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Account Qualification Group','Determines the subset of accounts to be processed by a decision.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Usage Qualification Group','Determines the subset of usage to be processed by a decision.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge Selection Group','Determines the subset of charges to be processed by a decision.','Base');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Domain Impact','Determines the rateable domain that is used to  track the tier''s impact on charges, discounts, and rates.',NULL);

/**********************
 * CHARGE DECISION TYPE
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge Type','Determines how the charge is calculated (Proportional or Inverse Proportional) or a set amount is specified (Currency Amount).',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge Type Id','Sets a reference to information used to populate a row in a  product view.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge On Inbound','Sets a charge amount when usage rises above the tier''s lower threshold.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge On Outbound','Sets a charge amount when usage passes the tier''s upper threshold.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Charge On Final','Sets a final charge amount if all the usage has been applied and the total usage is within the range of the tier.',NULL);

/**********************
 * RATING DECISION TYPE
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Per Event Rate','Defines a per event rate that overwrites the original usage event amount by calculating an updated total charge.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Per Unit Rate','Defines a per unit rate that overwrites the original usage event amount by calculating  an updated total charge.',NULL);

/**********************
 * DISCOUNT DECISION TYPE
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Discount Type','Specifies the method for calculating the discount.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Discount','Sets a plus or minus percentage amount that is applicable to any qualified charge passing through a tier threshold.',NULL);

/**********************
 * TIERS
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Domain',' can be any of the following 8 options: countable, ratable, discountable,  generatable, ratable and generatable, ratable and discountable, discountable and generatable, ratable discountable and generatable. Nullable (means countable)','COUNTABLE');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Override Name','Sets an optional name to override rating that uses an ICB rate.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Priority','Sets a systemwide processing priority for the tier that enforces the order in which decisions should be applied.',0);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Unit Type','Sets a countable unit for determining tier thresholds.','Units');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Start','Sets the lower bound of the tier - the lower threshold for the tier methods, events, and properties to apply.',0);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier End','Sets the upper bound of the tier - the upper threshold for the tier methods, events, and properties to apply.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Qualified Usage','Determines if all qualified usage is applied to the tier or only qualified usage contained within the tier.','Incremental');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Proration','Scales the tier according to the number of days the decision was active relative to the decision cycle.','No Proration');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Repetition','Determines if an individual tier or all tiers in a decision set are repeated.','None');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Continue Counting','Determines if the tier counter should continue counting beyond its upper or lower thresholds.','0');

/**********************
 * TIER CYCLE
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Cycles','Sets the number of cycles that the tier will remain active.',0);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Cycle Unit Offset','Sets the number of cycles to skip before the tier is active.',0);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Cycle Units Per Tier','Sets the number of cycles to be completed before the tier is processed.',1);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Cycle Unit Type','Set the cycle type for the tier.','Interval');

/**********************
 * TARGETS
 **********************/
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Target Domain','Determines how multiple decisions can affect the same target when the target is different than the qualified account group.','Countable');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Target Account Qualification Group','Defines the group of accounts any charges should be applied to if different than the Account Qualification group. ',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Target Usage Qualification Group','Defines the group of events the rate should be applied to if different than the qualified usage group.',NULL);
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Target Charge Selection Group','Defines the specific charge the rate should be applied to if different than the Charge Selection group.',NULL);

/******************
 * REMOVED FOR NOW
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Rate Impact',' can be any of the following 8 options: countable, ratable, discountable,  generatable, ratable and generatable, ratable and discountable, discountable and generatable, ratable discountable and generatable. Nullable (means ratable)','RATABLE');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Discount Impact',' can be any of the following 8 options: countable, ratable, discountable,  generatable, ratable and generatable, ratable and discountable, discountable and generatable, ratable discountable and generatable. Nullable (means discountable)','DISCOUNTABLE');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Tier Charge Impact',' can be any of the following 8 options: countable, ratable, discountable,  generatable, ratable and generatable, ratable and discountable, discountable and generatable, ratable discountable and generatable. Nullable (means chargeable)','CHARGEABLE');
insert into t_be_mvm_ade_decisionglobal (c_DecisionGlobalDefault_Id, c__version, c_CreationDate, c_UpdateDate, c_Name, c_Description, c_DefaultValue) 
values (NEWID(),1, GETUTCDATE(), GETUTCDATE(),'Rate Currency','Currency for the per-Unit rate to allow for multiple currencies to be handled by the same PO. Null here implies that the rate will apply regardless of currency. If a currency is specified but does not match the account’s rating currency, the row will be ignored. Nullable (means any currency will match)',NULL);
*******************/
