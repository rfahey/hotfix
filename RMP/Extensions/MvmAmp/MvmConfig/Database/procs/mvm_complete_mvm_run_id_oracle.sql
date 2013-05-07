CREATE OR REPLACE
PROCEDURE mvm_complete_mvm_run_id(
    p_preserve_tables NUMBER, 
    p_preserve_offset NUMBER, 
    p_mvm_run_id NUMBER )
AS
my_preserve_tables NUMBER;
my_preserve_offset NUMBER;
my_command VARCHAR2(8000);
BEGIN

  my_preserve_tables := p_preserve_tables;
  my_preserve_offset := p_preserve_offset;
  if (my_preserve_offset IS NULL) THEN
	my_preserve_offset := 31;
  END IF;
  IF my_preserve_tables = -1 THEN
   FOR csr      IN
    (SELECT distinct a.mvm_run_id old_mvm_run_id
    FROM amp_staging_tables a
	inner join mvm_run_history b on a.mvm_run_id = b.mvm_run_id
    WHERE a.mvm_run_id != p_mvm_run_id
	AND b.end_dt IS NULL
	and b.start_dt < (SYSDATE - my_preserve_offset)
    )
    LOOP
      mvm_complete_mvm_run_id(0,0,csr.old_mvm_run_id); 
    END LOOP;
    my_preserve_tables := 0; 
  END IF;


  IF my_preserve_tables = 0 THEN
    FOR csr          IN
    (SELECT staging_table_name
    FROM amp_staging_tables a
    WHERE mvm_run_id = p_mvm_run_id
    )
    LOOP
      my_command := 'drop table '||csr.staging_table_name;
      execute immediate(my_command);
    END LOOP;
    delete amp_staging_tables where mvm_run_id = p_mvm_run_id;
  END IF;

  update MVM_RUN_HISTORY set end_dt = SYSDATE where mvm_run_id = p_mvm_run_id;

END; 

