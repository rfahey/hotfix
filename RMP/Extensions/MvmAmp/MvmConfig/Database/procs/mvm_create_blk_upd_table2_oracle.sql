CREATE OR REPLACE
PROCEDURE mvm_create_blk_upd_table2(
    p_table  VARCHAR2,            -- table to bulk update
    p_prefix VARCHAR2,            -- prefix on blk_upd_table name
    p_mvm_run_id NUMBER,           --  identifier of mvm run
    p_node_id VARCHAR2,           --  identifier of mvm node_id
    p_blk_upd_table OUT VARCHAR2, -- table we created
    p_pk_col_string VARCHAR2 DEFAULT '' )
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
  my_attempts  NUMBER;
TYPE T_TABLE
IS
  TABLE OF VARCHAR2(30);
  v_pk_cols T_TABLE;
BEGIN
  -- Populate v_pk_cols with ordered list of primary key columns.
  -- Use comma delimited string p_pk_col_string if passed, else look at pk fields
  -- in p_table
  v_pk_cols          :=T_TABLE();
  IF p_pk_col_string IS NULL THEN
    FOR csr          IN
    (SELECT column_name,
      rownum idx
    FROM user_constraints cons,
      user_cons_columns cols
    WHERE cols.table_name    = upper(p_table)
    AND cons.constraint_type = 'P'
    AND cons.constraint_name = cols.constraint_name
    AND cons.owner           = cols.owner
    ORDER BY cols.table_name,
      cols.position
    )
    LOOP
      v_pk_cols.extend;
      v_pk_cols(csr.idx):=csr.column_name;
    END LOOP;
  ELSE
    FOR csr IN
    (
    -- this is a way to split p_pk_col_string 'a,b,c' into 3 rows
  WITH lines AS
    (SELECT level line FROM dual CONNECT BY level <= 10
    ),
    data AS
    (SELECT ','||p_pk_col_string||',' pk_string_list FROM dual
    )
  SELECT line                                              -1 pk_idx,
    SUBSTR(pk_string_list, instr(pk_string_list,',',1,line)+1, instr(pk_string_list,',',1,line+1)-instr(pk_string_list,',',1,line)-1 ) pk_col
  FROM data,
    lines
  WHERE line < LENGTH(pk_string_list)-LENGTH(REPLACE(pk_string_list,',',''))
  ORDER BY 1,
    2
    )
    LOOP
      v_pk_cols.extend;
      v_pk_cols(csr.pk_idx+1):=csr.pk_col;
    END LOOP;
  END IF;
  -- name of tmp bulk update table
  mvm_generate_table_name(p_prefix, p_blk_upd_table);
  -- create statement
  sql_stmt     := 'create table '||p_blk_upd_table||'( format_id int,';
  field_prefix := '';
  -- add orig pk cols --
  FOR v_pk_idx IN v_pk_cols.FIRST..v_pk_cols.LAST
  LOOP
    FOR col IN
    (SELECT 'pk_'
      || (v_pk_idx-1)
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
    WHERE a.table_name= upper(p_table)
    AND lower(a.column_name) = lower(v_pk_cols(v_pk_idx))
    )
    LOOP
      sql_stmt    :=sql_stmt || field_prefix ||col.col_string;
      field_prefix:=',';
    END LOOP;
  END LOOP;
  ----------------------
  -- add every field in the table
  FOR v_rec IN cur_columns
  LOOP
    sql_stmt     := sql_stmt||field_prefix||' '||v_rec.col_string;
    field_prefix := ',';
  END LOOP;
  -- specify  the pk
  field_prefix := '';
  sql_stmt     :=sql_stmt||',CONSTRAINT '||p_blk_upd_table||' PRIMARY KEY (';
  FOR v_pk_idx IN v_pk_cols.FIRST..v_pk_cols.LAST
  LOOP
    sql_stmt    :=sql_stmt || field_prefix ||'pk_'||(v_pk_idx-1);
    field_prefix:=',';
  END LOOP;
  IF field_prefix IS NULL THEN
    raise_application_error(-20101 , 'Error, cannot create bulk update table for '||p_table|| ' since it has no unique index');
  END IF;
  sql_stmt :=sql_stmt||')';
  --end the create
  sql_stmt := sql_stmt||')';
  dbms_output.put_line(sql_stmt);
  EXECUTE IMMEDIATE (sql_stmt);

  insert into amp_staging_tables (mvm_run_id, node_id, staging_table_name, create_dt) values(p_mvm_run_id, p_node_id, p_blk_upd_table, SYSDATE);
END;

