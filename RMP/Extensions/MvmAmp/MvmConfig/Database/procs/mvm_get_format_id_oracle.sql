create or replace
PROCEDURE mvm_get_format_id(
    p_format_string1 VARCHAR2,
    p_format_string2 VARCHAR2,
    p_format_string3 VARCHAR2,
    p_format_string4 VARCHAR2,
    p_format_string5 VARCHAR2,
    p_format_id OUT INT )
AS
PROCEDURE try_get_format_id(
    p_format_string1 VARCHAR2,
    p_format_string2 VARCHAR2,
    p_format_string3 VARCHAR2,
    p_format_string4 VARCHAR2,
    p_format_string5 VARCHAR2,
    p_format_id OUT INT)
IS
BEGIN
  SELECT NVL(MAX(format_id),-1)
  INTO p_format_id
  FROM agg_field_formats
  WHERE format_string1=p_format_string1
  AND ((format_string2 is null and p_format_string2 is null) or (format_string2  =p_format_string2))
  AND ((format_string3 is null and p_format_string3 is null) or (format_string3  =p_format_string3))
  AND ((format_string4 is null and p_format_string4 is null) or (format_string4  =p_format_string4))
  AND ((format_string5 is null and p_format_string5 is null) or (format_string5  =p_format_string5));
END try_get_format_id;
BEGIN
  try_get_format_id(p_format_string1,p_format_string2,p_format_string3,p_format_string4,p_format_string5,p_format_id);
  IF p_format_id                  = -1 THEN
    LOCK TABLE agg_field_formats   IN EXCLUSIVE MODE;
    try_get_format_id(p_format_string1,p_format_string2,p_format_string3,p_format_string4,p_format_string5,p_format_id);
    IF p_format_id = -1 THEN
      SELECT mvm_get_format_id_seq.nextval INTO p_format_id FROM dual;
      INSERT
      INTO agg_field_formats
        (
          format_string1,
          format_string2,
          format_string3,
          format_string4,
          format_string5,
          format_id
        )
        VALUES
        (
          p_format_string1,
          p_format_string2,
          p_format_string3,
          p_format_string4,
          p_format_string5,
          p_format_id
        );
    END IF;
  END IF;
END; 

