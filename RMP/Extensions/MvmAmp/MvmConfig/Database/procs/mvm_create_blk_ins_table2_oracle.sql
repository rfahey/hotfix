create or replace
PROCEDURE mvm_create_blk_ins_table2(
    p_table  VARCHAR2,           -- table to bulk update
    p_prefix VARCHAR2,           -- prefix on blk_upd_table name
    p_mvm_run_id NUMBER,           --  identifier of mvm run
    p_node_id VARCHAR2,           --  identifier of mvm node_id
    p_blk_upd_table OUT VARCHAR2 -- table we created
  )
AS
  CURSOR cur_columns
  IS
    -- RAW needs 1 added to datalength to work around OracleBulkCopy bug:
    -- http://forums.oracle.com/forums/thread.jspa?threadID=968824
    SELECT column_name
      ||' '
      ||data_type
      || DECODE(data_type,'NUMBER',DECODE(data_precision, NULL, '','('
      ||data_precision
      ||','
      ||data_scale
      ||')'),'CHAR','('
      ||data_length
      ||')','VARCHAR2','('
      ||data_length
      ||')','NVARCHAR2','('
      ||char_length
      ||')','RAW','('
      ||(data_length+1)
      ||')',' ') col_string
    FROM user_tab_columns a
    WHERE table_name = upper(p_table)
    ORDER BY column_id;
  sql_stmt LONG;
  v_col_string VARCHAR2(4000);
  v_curr_count NUMBER;
  field_prefix VARCHAR2(4000);
  temp_prefix  VARCHAR2(1000);
BEGIN
  -- name of tmp bulk update table
   mvm_generate_table_name(p_prefix, p_blk_upd_table);
   
  -- create statement
  sql_stmt     := 'create table '||p_blk_upd_table||' (';
  field_prefix := '';
  FOR v_rec    IN cur_columns
  LOOP
    sql_stmt     := sql_stmt||field_prefix||' '||v_rec.col_string;
    field_prefix := ',';
  END LOOP;
  
  --end the create
  sql_stmt := sql_stmt||')';
  dbms_output.put_line(sql_stmt);
  EXECUTE IMMEDIATE (sql_stmt);
  insert into amp_staging_tables (mvm_run_id, node_id, staging_table_name, create_dt) values(p_mvm_run_id, p_node_id, p_blk_upd_table, SYSDATE);
END;

