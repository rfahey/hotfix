create or replace
PROCEDURE mvm_create_blk_del_table2(
    p_table  VARCHAR2,           -- table to bulk update
    p_prefix VARCHAR2,           -- prefix on blk_del_table name
    p_mvm_run_id NUMBER,           --  identifier of mvm run
    p_node_id VARCHAR2,           --  identifier of mvm node_id
    p_blk_del_table OUT VARCHAR2 -- table we created
  )
AS
  CURSOR cur_columns
  IS
    -- RAW needs 1 added to datalength to work around OracleBulkCopy bug:
    -- http://forums.oracle.com/forums/thread.jspa?threadID=968824
    SELECT utc.column_name
      ||' '
      ||utc.data_type
      || DECODE(utc.data_type,'NUMBER',DECODE(utc.data_precision, NULL, '','('
      ||utc.data_precision
      ||','
      ||utc.data_scale
      ||')'),'CHAR','('
      ||utc.data_length
      ||')','VARCHAR2','('
      ||utc.data_length
      ||')','NVARCHAR2','('
      ||utc.char_length
      ||')','RAW','('
      ||(utc.data_length+1)
      ||')',' ') col_string
    FROM user_constraints cons, user_cons_columns cols,user_tab_columns utc
    WHERE cols.table_name = upper(p_table)
    AND cons.constraint_type = 'P'
    AND cons.constraint_name = cols.constraint_name
    AND cons.owner = cols.owner
    and utc.table_name=cols.table_name and utc.column_name=cols.column_name
    ORDER BY utc.column_id;

  sql_stmt LONG;
  v_col_string VARCHAR2(4000);
  v_curr_count NUMBER;
  field_prefix VARCHAR2(4000);
  temp_prefix  VARCHAR2(1000);
BEGIN
  -- name of tmp bulk update table
   mvm_generate_table_name(p_prefix, p_blk_del_table);
   
  -- create statement
  sql_stmt     := 'create table '||p_blk_del_table||' (';
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
  insert into amp_staging_tables (mvm_run_id, node_id, staging_table_name, create_dt) values(p_mvm_run_id, p_node_id, p_blk_del_table, SYSDATE);
END;

