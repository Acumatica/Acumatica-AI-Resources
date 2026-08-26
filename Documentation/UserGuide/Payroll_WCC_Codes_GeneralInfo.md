# Workers' Compensation Codes: General Information {#_c8495d0a-423a-437c-8937-418d23d4a1a4 .concept}

Workers' compensation codes \(WCC codes\) are used to fairly distribute the costs of workers’ compensation insurance among employers. A WCC code determines the amount of the workers' compensation depending on the category of work performed by the workers.

## Learning Objectives { .section}

In this chapter, you will learn how to create workers' compensation codes.

## Applicable Scenarios { .section}

You create workers' compensation codes to determine the compensation rates for the types of jobs that your employees do.

## Creating Workers' Compensation Codes { .section}

You create new workers' compensation codes by using the [Workers' Compensation Codes](PR_20_98_00.md) \(PR209800\) form. You may need to have one WCC code for each category of work performed by employees in your organization.

The system calculates workers' compensation through deduction and benefit codes. By using the **Rates** table on the [Workers' Compensation Codes](PR_20_98_00.md) form, you can associate a WCC code with any number of deduction and benefit codes, each of which should be associated with a different state. In this table, through the use of deduction codes, you can specify the rate for the WCC code in different states. Alternatively, you can use the **WCC Code** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) form to specify a WCC code rate for a particular state.

**Note:** Only deduction and benefit codes with *Workers' Compensation* selected in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form can be associated with a workers' compensation code.

For each deduction code, you need to specify the effective date, which is the date when the specified rate comes into effect. A deduction code with an actual rate is marked as **Active**. The **Active** check box is cleared for a deduction code whose rate is no longer effective.

## Specifying Sources for Workers' Compensation Codes { .section}

By using the **Sources** pane on the [Workers' Compensation Codes](PR_20_98_00.md) \(PR209800\) form, you can specify the sources for the workers' compensation codes that the system inserts by default when a paycheck or a time activity is created.

A project, project task, labor item, or cost code \(which is available if the *Cost Codes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\) can be used as the source for workers' compensation codes. If a project is selected on the **Project Tasks** tab of the **Sources** pane but no specific project task is specified, the system will use the WCC code from the project for all project tasks related to that project. One cost code, project, project task, or labor item cannot be assigned to multiple workers' compensation codes.

The system inserts the appropriate workers' compensation code as the default setting into the **WCC Code** column of an earning detail line when a user creates a paycheck by using the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) or [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, and into the **WCC Code** column of a time activity detail line when a user enters a time activity by using the [Employee Time Activities](EP_30_70_00.md) \(EP307000\), [Employee Time Cards](EP_30_50_00.md) \(EP305000\), or [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\) form.

If multiple sources are specified for a workers' compensation code, the system checks the availability of the following sources and populates the **WCC Code** column with the first value it finds, in the specified order of priority:

1.  Project task
2.  Project
3.  Labor item
4.  Cost code
5.  Employee payroll settings

**Parent topic:**[Creating Workers' Compensation Codes](../UserGuide/config_Payroll_WCC_Codes_Mapref.md)

