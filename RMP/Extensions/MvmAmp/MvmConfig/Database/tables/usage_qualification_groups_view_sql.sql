        create view usage_qualification_groups
        as
        select
        c_Name as usage_qualification_group,
        b.c_ExecutionSequence as row_num,
        b.c_Filter as filter
        from t_amp_usagequalgroup a
        left outer join t_amp_usagequalifica b on a.c_UsageQualGroup_Id = b.c_UsageQualGroup_Id
        ;
