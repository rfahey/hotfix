        create view usage_charge_fields
        as
        select
        lower(a.c_ProductViewName) as productview_name,
        lower(a.c_Name) as charge_name,
        lower(b.c_FieldName) as field_name,
        lower(b.c_FieldType) as field_type,
        lower(b.c_ContributingField) as contributing_field,
	case b.c_Rounding 
		when 'roundToDigits' then b.c_RoundingNumDigits 
		when 'roundToCurrency' then NULL
		else -99
	end as precision,
        lower(b.c_CurrencyField) as currency_field,
        lower(b.c_PercentageField) as percentage_field,
        b.c_Modifier as modifier,
        b.c_Filter as filter,
        lower(b.c_Direction) as direction,
        b.c_Priority as field_order
	from t_amp_amountchain a
	inner join t_amp_amountchainfield b on a.c_Name = b.c_AmountChainName;
