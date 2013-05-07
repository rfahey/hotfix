create or replace
PROCEDURE mvm_generate_table_name(
    p_prefix VARCHAR2,        -- prefix on temp table name
    p_table_name OUT VARCHAR2 -- temp table we created
  )
AS
  v_attempts     NUMBER:=0;
  v_max_attempts NUMBER:=100;
  v_curr_count   NUMBER:=0;
BEGIN
  LOOP
    IF (v_attempts > v_max_attempts) THEN
      RAISE_APPLICATION_ERROR (-20000,'mvm_generate_table_name cannot find unused tablename after '||v_max_attempts||' attempts with p_prefix='||p_prefix);
    END IF;
    v_attempts := v_attempts + 1;
    SELECT UPPER(SUBSTR(p_prefix|| dbms_random.string('A', 30),0,30)) INTO p_table_name FROM dual;
    SELECT COUNT(*)
    INTO v_curr_count
    FROM user_tables
    WHERE table_name = p_table_name;
    EXIT
  WHEN v_curr_count = 0;
  END LOOP;
END;


