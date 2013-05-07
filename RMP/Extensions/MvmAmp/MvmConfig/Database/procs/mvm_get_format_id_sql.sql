--drop procedure mvm_get_format_id
create PROCEDURE mvm_get_format_id(
    @p_format_string1 VARCHAR(8000),
    @p_format_string2 VARCHAR(8000),
    @p_format_string3 VARCHAR(8000),
    @p_format_string4 VARCHAR(8000),
    @p_format_string5 VARCHAR(8000),
    @p_format_id INT OUTPUT) as
BEGIN
  SELECT @p_format_id = isnull(MAX(format_id),-1)
  FROM agg_field_formats
  WHERE format_string1=@p_format_string1
  AND ((format_string2 is null and @p_format_string2 is null) or (format_string2  =@p_format_string2))
  AND ((format_string3 is null and @p_format_string3 is null) or (format_string3  =@p_format_string3))
  AND ((format_string4 is null and @p_format_string4 is null) or (format_string4  =@p_format_string4))
  AND ((format_string5 is null and @p_format_string5 is null) or (format_string5  =@p_format_string5));
  IF @p_format_id                  = -1 
	begin
    select @p_format_id = min(format_id) from agg_field_formats with (TABLOCKX)
  SELECT @p_format_id = isnull(MAX(format_id),-1)
  FROM agg_field_formats
  WHERE format_string1=@p_format_string1
  AND ((format_string2 is null and @p_format_string2 is null) or (format_string2  =@p_format_string2))
  AND ((format_string3 is null and @p_format_string3 is null) or (format_string3  =@p_format_string3))
  AND ((format_string4 is null and @p_format_string4 is null) or (format_string4  =@p_format_string4))
  AND ((format_string5 is null and @p_format_string5 is null) or (format_string5  =@p_format_string5));
    IF @p_format_id = -1 begin
      INSERT
      INTO agg_field_formats
        (
          format_string1,
          format_string2,
          format_string3,
          format_string4,
          format_string5
        )
        VALUES
        (
          @p_format_string1,
          @p_format_string2,
          @p_format_string3,
          @p_format_string4,
          @p_format_string5
        );
	set @p_format_id=@@identity
    END
  END
END

