--drop procedure [dbo].[mvm_get_long_id]
create procedure [dbo].[mvm_get_long_id] 
   ( 
   @p_nm_current nvarchar(4000),
   @p_batch_size int,
   @p_id_start nvarchar(30) output,
   @p_id_end nvarchar(30) output
   )
as
declare @errmsg NVARCHAR
declare @t_id_start bigint
declare @t_id_end bigint
begin
      set @t_id_start=(SELECT id_current from t_current_long_id WITH (updlock) where nm_current = @p_nm_current)
      if @t_id_start is NULL
      begin
             select @errmsg = N'MVM_GET_LONG_ID cannot find t_current_long_id with nm_current=['
                 + (CAST(@p_nm_current AS NVARCHAR(100)))
                 + N']'
      RAISERROR (@errmsg, 16, 1)
      end
    set @t_id_end=@t_id_start+@p_batch_size-1;
    UPDATE t_current_long_id SET id_current = id_current + @p_batch_size where nm_current = @p_nm_current
    set @p_id_start = convert(nvarchar,@t_id_start)
    set @p_id_end = convert(nvarchar,@t_id_end)
end


-- test code
--USE [NetMeter]
--GO
--
--DECLARE	@return_value int,
--		@p_id_start bigint,
--		@p_id_end bigint
--
--EXEC	@return_value = [dbo].[mvm_get_long_id]
--		@p_nm_current = N'id_sess',
--		@p_batch_size = 2,
--		@p_id_start = @p_id_start OUTPUT,
--		@p_id_end = @p_id_end OUTPUT
--
--SELECT	@p_id_start as N'@p_id_start',
--		@p_id_end as N'@p_id_end'
--
--SELECT	'Return Value' = @return_value
--
--GO

