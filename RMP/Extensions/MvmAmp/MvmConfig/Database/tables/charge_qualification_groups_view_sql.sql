        create or replace view charge_qualification_groups
        as
        select
        a.c_Name as charge_qualification_group,
        b.c_Name as charge_name,
        a.c_ProductViewName as productview_name
        from t_amp_pvtoamountchain a
        inner join t_amp_amountchain b on a.c_AmountChain_Id = b.c_AmountChain_Id
