/*
DROP PROCEDURE mvm_generate_table_name
*/
CREATE PROCEDURE mvm_generate_table_name(
    @p_prefix VARCHAR(50),        -- prefix on temp table name
    @p_table_name VARCHAR(50) output -- temp table we created
  )
AS
BEGIN
  declare @v_attempts     int
  declare @v_max_attempts int
  declare @v_curr_count   int
  declare @v_not_done int
  declare @errmsg NVARCHAR
  select @v_attempts = 0
  select @v_max_attempts = 100
  select @v_curr_count = 0
  select @v_not_done = 1
  WHILE (@v_not_done = 1)
  BEGIN
    IF (@v_attempts > @v_max_attempts)
    BEGIN
      select @errmsg = N'-20000,mvm_fake_temp_table_name cannot find unused tablename after '
                 + (CAST(@v_max_attempts AS NVARCHAR(10)))
                 + ' attempts. p_prefix='
                 + @p_prefix
      RAISERROR (@errmsg, 16, 1)
    END
    select @v_attempts = @v_attempts + 1
    SELECT @p_table_name = REPLACE(SUBSTRING(@p_prefix + CAST(NEWID() AS VARCHAR(50)),1,30),'-','')
    SELECT @v_curr_count = COUNT(*)
    FROM sys.tables st
    WHERE st.name = @p_table_name AND st.type = 'U'
    IF (@v_curr_count = 0)
    BEGIN
      SELECT @v_not_done = 0
    END;
  END
END

