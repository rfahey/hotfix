CREATE OR REPLACE Procedure MVM_GET_LONG_ID
   ( 
   p_nm_current IN varchar2,
   p_batch_size IN number,
   p_id_start OUT number,
   p_id_end OUT number
   )
AS
    cnumber number;
    CURSOR c1
    IS
       SELECT id_current
        from t_current_long_id
        where nm_current = p_nm_current
        FOR UPDATE of id_current;
BEGIN
    open c1;
    fetch c1 into p_id_start;
    if c1%notfound then
          RAISE_APPLICATION_ERROR (-20000,'MVM_GET_LONG_ID cannot find t_current_long_id with nm_current=['||p_nm_current||']');
    else
        p_id_end:=p_id_start+p_batch_size-1;
         UPDATE t_current_long_id
            SET id_current = id_current + p_batch_size
            WHERE CURRENT OF c1;
        COMMIT;
    end if;
    close c1;
END;

-- test code
--
--declare
--   v_id_start number;
--   v_id_end number;
--   begin
--    mvm_get_long_id('id_sess',2,v_id_start,v_id_end);
--    dbms_output.put_line(v_id_start||'-'||v_id_end);
--   end;
--
