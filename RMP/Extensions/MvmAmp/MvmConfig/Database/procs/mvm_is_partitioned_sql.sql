--drop procedure  [dbo].[mvm_is_partitioned]

create
PROCEDURE [dbo].[mvm_is_partitioned](
    @p_table  VARCHAR(4000),           -- table to bulk update
    @p_is_partitioned integer OUTPUT -- table we created
  )
AS
begin
	declare @errmsg VARCHAR(4000)

	--determine if table is partioned
	set @p_is_partitioned=-1
	if (EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME=@p_table))
	begin
		set @p_is_partitioned=0
	end
	else
		begin try
			if (EXISTS (SELECT 1 FROM n_default.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME=@p_table))
			begin
				set @p_is_partitioned=1
			end
		end try
		begin catch
		end catch;

	if @p_is_partitioned=-1
	begin
 		select @errmsg = 'Error, table ['+@p_table+'] does not appear in either n_default.INFORMATION_SCHEMA.TABLES or INFORMATION_SCHEMA.TABLES'
		RAISERROR (@errmsg, 16, 1)
	end
end
GO


