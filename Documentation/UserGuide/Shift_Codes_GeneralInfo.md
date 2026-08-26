# Shift Codes: General Information {#_268b5aa1-e419-4644-ad39-e073f32bb26a .concept}

In Acumatica ERP, you can define shift differentials to be able to compensate employees for work outside normal working hours.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable shift differentials in the system
-   Create shift codes
-   Enter work shift information in time activities and payroll documents

## Applicable Scenarios { .section}

You create shift codes if you need to define shift differentials to compensate employees for work outside normal working hours.

## Enabling Shift Differentials { .section}

To be able to define shift differentials in Acumatica ERP, you need to enable the *Shift Differential* feature, under the *Time Management* group of features, on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When this feature is enabled, the [Shift Codes](EP_10_30_00.md) \(EP103000\) form becomes available in the system. Also, UI elements that allow establishing the connection between pay rates and work shifts become available on forms related to employee time activities, employee settings, and, if the *Payroll* feature is also enabled on the [Enable/Disable Features](CS_10_00_00.md) form, payroll documents.

## Creating Shift Codes {#section_vv2_1y4_y4b .section}

By using the [Shift Codes](EP_10_30_00.md) \(EP103000\) form, you can create a shift code, which is a set of rules that the system uses to calculate a pay increase for activities performed during a specific work shift.

In the **Shift Codes** table, you can enter a shift code identifier and a description of the work shift. A shift code with the **Active** check box selected is available for selection on the relevant forms.

In the **Rates** table, you can specify how a pay increase should be calculated for the work shift that is selected in the **Shift Codes** table. If different rules should be used for the same work shift over the course of time, you can enter multiple rules, but each entry must have a different effective date. When the shift is specified for a time activity \(or for an earning detail line\), the system compares the activity date \(or the earning date\) with the effective dates of the shift rules to determine which rule must be used for the calculation of the pay rate.

If the *Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, when creating a rule on the [Shift Codes](EP_10_30_00.md) form, you have to specify in the **Type** column whether the current pay rate will be increased by an amount or by a percentage. If *Percent* is selected, you need to enter a percent of the current pay rate in the **Percent** column; in this case, the system will add the percentage to the current pay rate. If *Amount* is selected, you need to do the following:

-   In the **Wage Amount** column, specify the amount to be added to the pay rate used for earning entries in payroll documents
-   In the **Costing Amount** column, specify the amount to be added to the labor rate used in project cost calculation. This amount includes the wage amount and the cost of benefits and taxes incurred for the employee, or the burden amount.

    The difference between the costing amount and wage amount will be calculated automatically and displayed in the **Burden Amount** column.

    **Tip:** In a rule, a costing amount cannot be lower than the wage amount in the same line, and a wage amount cannot be higher than the costing amount.


If the *Payroll* feature is disabled in the system, you can only select a shift differential type in the **Type** column and define the percentage or amount that will be added to the current labor rate.

## Using Shift Codes { .section}

To indicate that a time activity or earning activity was performed during a specific work shift, you can use the **Shift Code** column on the following forms:

-   [Employee Time Activities](EP_30_70_00.md) \(EP307000\)
-   [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\), on the **Time Activities** tab
-   [Employee Time Cards](EP_30_50_00.md) \(EP305000\), on the **Summary** and **Details** tabs
-   [Payroll Batches](PR_30_10_00.md) \(PR301000\), on the **Earning** tab and in the **Employee Earning Details** dialog box
-   [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\), on the **Earning** tab

In the **Shift Code** box in the **Employee Settings** section on the **General** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form, you can specify a shift code that will be inserted by default for any new time activity or earning record entered for the employee through any of the forms listed above.

A shift code that is specified for a time activity or earning entry cannot be deleted through the [Shift Codes](EP_10_30_00.md) \(EP103000\) form.

**Parent topic:**[Creating Shift Codes](../UserGuide/Shift_Codes_Mapref.md)

