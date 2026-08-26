# Paid Time Off: General Information {#_83a73e05-59e3-4ed2-960a-fa5a660f99f9 .concept}

Many companies permit employees to accrue hours or days of paid time off \(PTO\) as they work, to use for sick or vacation leave. In Acumatica ERP, you can define various accrual plans for paid time off \(PTO banks\) and apply them to entire employee classes or to individual employees.

## Learning Objectives { .section}

In this chapter, you will learn how to create PTO banks and link them with individual employees.

## Applicable Scenarios { .section}

You configure PTO banks if you want to be able to accrue hours that employees may use for paid time off and to keep track of these hours.

## PTO Banks { .section}

You can create new PTO banks or modify existing ones by using the [PTO Banks](PR_20_40_00.md) \(PR204000\) form.

In the Summary area of the form, you need to specify a unique disbursing earning type for each PTO bank. This earning type defines the pay rate to be used to disburse the hours accrued in the bank.

On the **General** tab, you define a common configuration of the PTO bank, and the system applies these settings by default to all employees across all employee classes that use this PTO bank. On the **Employee Classes** tab, you can specify PTO settings for specific employee classes, which then can be adjusted for individual employees through the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. Common, class-specific, and individual employee settings are described in more detail in the following sections.

You can mark a PTO bank as active or inactive. Inactive PTO banks stop accruing hours, but you still can use hours from those banks.

## Common PTO Settings { .section}

You use the **General** tab of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form to specify PTO settings that are applied by default to employees of any employee class.

For each PTO bank, you need to specify an accrual method that defines the way how PTO hours are accrued for an employee. In the Accrual Method box, you can select one of the following options:

-   *Percentage*: The accrual rate is calculated as a percentage. In the **Accrual %** column on the **Employee Classes** tab, you specify the accrual rate to be used to accumulate hours for the PTO bank for employees of the particular employee class.
-   *Total Hours per Year*: A specific number of hours is added to the PTO bank every pay period. In the **Hours per Year** column on the **Employee Classes** tab, you specify the number of hours that an employee of the particular employee class may accrue throughout the year. This number is divided by the number of pay periods, which is specified in the **Number of Periods** box on the [Pay Periods](PR_20_10_00.md) \(PR201000\) form, to determine the number of hours included in a paycheck.

    **Tip:** If the number of periods for a particular year is different from the usual number \(for example, *53* against *52* for a weekly pay group\), you can select the **Override** check box on the [Pay Periods](PR_20_10_00.md) form and specify the usual number of periods \(that would be *52* in our example\) that will be used in the calculation of PTO hours accrued within one pay period; as a result, there will be no fluctuations in the numbers of accrued hours from period to period and year to year.

-   *Front Loading*: Front-loading hours are added to the PTO balance of an employee on the transfer date. You specify this number in the **Front-Loading Hours** column on the **Employee Classes** tab.
-   *Front Loading and Percentage* and *Front Loading and Hours per Year*: Paid time off is accrued with a combination of the *Front Loading* and *Percentage* or *Front Loading* and *Hours Per Year* accrual methods, respectively.

In the **Transfer Date Type** box, you select the *Anniversary Date* option to use the individual employee's hire date as the transfer date; alternatively, you can select *Specific Date* and use the **Start Date** group of elements, which appears, to specify the month and day of a custom-defined transfer date. The transfer date is the date when the PTO bank resets. Depending on the selected accrual method, the system may use this date to add front-loading hours to the PTO balance. In most common scenarios, custom-defined transfer dates align with the start of the calendar or fiscal year.

The system also uses the transfer date of the PTO bank to carry over accruals from one year to the next. The carryover rules are determined by the option selected in the **Carryover Type** box, which may be one of the following:

-   *None*: The system starts over to accrue hours every year and resets unused hours.
-   *Partial*: The system carries over a number of hours accrued from the previous year. You specify how many hours to keep in the **Carryover Hours** box.
-   *Total*: The system carries over all accrued hours from the previous year.

If the transfer date of a PTO bank falls between the start date and the end date of the pay period, the system includes the carryover and the front loading amount in the payroll payment calculation.

In the **On Settlement** box, you select the rule that will be applied to the PTO bank when a final paycheck is calculated for an employee who is assigned this PTO bank. You can select one of the following options:

-   *Pay Balance*: The PTO bank will be automatically disbursed. This option is selected by default for a new PTO bank.
-   *Keep Balance*: The system will preserve the balance of the PTO bank associated with the employee profile.
-   *Discard Balance*: The system will empty the balance of the PTO bank but not disburse it to the employee.

All common settings, except the transfer date, can be adjusted at the employee level on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

## Class-Specific PTO Settings { .section}

On the **Employee Classes** tab of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, you can specify PTO bank settings that will be applied by default to all employees of a particular employee class \(if this class is specified in the **Employee Class** column\) or to all employee classes \(if no class is specified\).

On this tab, for each combination of employee class and effective date, you can specify the following settings:

-   **Accrual %**: The accrual rate to be used to accumulate hours.
-   **Hours per Year**: The number of hours that an employee may accrue throughout the year.
-   **Balance Limit**: The maximum number of available hours that can be accumulated for the bank.
-   **Allow Negative Balance**: A check box that indicates \(if selected\) that the system does not put restrictions on the disbursing amount.
-   **Disburse Only from Carryover**: A check box that indicates \(if selected\) that only the carryover hours from the previous year can be used for paid time off.
-   **Carryover Hours**: The number of hours the system carries over to the following year on the transfer date.
-   **Front Loading Hours**: The number of hours the system adds to the bank each year on the transfer date.
-   **During Probation Period**: A new setting that determines the ability of the PTO bank to accrue and disburse paid time off during an employee's probation period. The following options are available:
    -   *Accrued and Available*: Time off is accrued and can be used during the probation period.
    -   *Accrued but Not Available*: Time off is accrued but cannot be used during the probation period.
    -   *Not Accrued*: No time off can be accrued or used during the probation period.

If you want the same PTO bank to have different accrual rates over the course of time, you can specify this PTO bank multiple times, but each entry must have a different effective date.

All class-specific settings can be adjusted at the employee level on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

**Note:** After an upgrade from a version preceding Acumatica ERP 2024 R1, settings previously specified in the Summary area and on the **General Settings** tab might appear as a row on the **Employee Classes** tab with *&lt;NONE&gt;* specified in the **Employee Class** column and *1/1/1900* in the **Effective Date** column.

## Applicable Earning Types { .section}

If you select the *Percentage* or *Front-Loading and Percentage* accrual method in the **Accrual Method** box on the **General** tab of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, the **Applicable Earning Types** tab appears. On this tab, you define the earning types to be used for accruing time off for the PTO bank, You specify the earning types in one of the following ways:

-   Select the *Selected Earning Types* option in the **Accrue Time Off Based On** box in the upper area of the tab, and add to the table the earning types to accrue time off. The system will use only the earning types added to the table to accrue time off for the PTO bank.
-   Select the *All Earning Types Except Selected* option in the **Accrue Time Off Based On** box, and add to the table the earning types that will not accrue time off. The system will use all the earning types configured in the system on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form except the ones listed in the table to accrue time off for the PTO bank.

## Banding Rules { .section}

If you select the **Apply Banding Rules** check box in the Summary area of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, the **Banding Rules** tab appears, where you can define tiered PTO rules so that employees may accrue or be eligible for different amounts of paid time off based on years of service.

You can add any number of banding rules to the table, associating them with specific employee classes in the **Employee Class** column or with all employees if no class is selected. In each table row, you need to specify the years of service, determining when the PTO settings in that row take precedence over the settings for the same employee class on the **Employee Classes** tab. If no settings exist for that class on the **Employee Classes** tab, the banding rule is not applied. Similarly, if no employee classes are specified on the **Employee Classes** tab \(meaning that the PTO bank can be used for all employee classes\), no banding rules can be applied to the PTO bank.

In the **Rounding Method for Years of Service** box, you need to select *Round Up* or *Round Down* to specify how employees' employment time is rounded during the transfer date or paycheck calculation, affecting the application of banding rules.

Once defined for a PTO bank, banding rules extend to employees, with further adjustments allowed at the employee level on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. Banding rules apply only to the calculation of new paychecks; calculated paychecks are not affected by new banding rules.

## Paid Time Off in Employee Payroll Settings { .section}

On the **Paid Time Off** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, you can review information about an employee’s paid time off and modify the settings if needed.

If the **Use Custom Settings** check box is cleared in the Summary area of the tab, the system loads the PTO banks \(those that are associated with the employee's class through the **Employee Classes** tab of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form and those that are not associated with any particular class\) to the table below the check box, and these settings are non-editable at the employee level.

If you select the **Use Custom Settings** check box, you can modify the settings in the table and add or delete rows. If you want the same PTO bank to have different accrual rates over the course of time, you can specify this PTO bank multiple times, but each entry must have a different effective date. The effective date of a PTO bank may differ from the start date of a pay period.

If the **Use Custom Settings** check box has been selected and you want to clear it, you may need to first remove all the rows with custom settings from the table.

If you want to temporarily disable an accrual plan used for the employee, you can clear the **Active** check box in the corresponding row on the **Paid Time Off** tab of the [Employee Payroll Settings](PR_20_30_00.md) form. If the **Active** check box has been cleared for a PTO bank on the **Employee Classes** tab of the [PTO Banks](PR_20_40_00.md) form, the **Active** check box also becomes cleared for this PTO bank on the **Paid Time Off** tab of the [Employee Payroll Settings](PR_20_30_00.md) form.

Accrual plans that are no longer applicable to the employee \(for example, if a banding rule has been applied\) are not shown in the table.

## Accrual of PTO Hours { .section}

A PTO bank accrues hours from earnings that are specified for the bank. The system accrues PTO hours based on the date of an earning detail line in a paycheck.

If a PTO bank has the *Percentage* or *Front Loading and Percentage* accrual method and if the PTO bank becomes effective in the middle of a pay period, the system will apply the accrual rate based on the date specified in the earning detail line of the payroll document for that pay period. If a PTO bank has the *Total Hours per Year* or *Front Loading and Hours per Year* accrual method and if the PTO bank becomes effective in the middle of a pay period, the system will prorate the hours according to the number of days to which the rate applies during the pay period.

If the accrual settings of a PTO bank change within the pay period, the system displays one detail line for each accrual rate in the payroll document. Only the line with the latest effective rate will have values displayed in the **Total Accrued Hours**,**Total Used Hours**, and **Total Available Hours** columns on the **Paid Time Off** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form.

**Parent topic:**[Configuring Paid Time Off](../UserGuide/config_Payroll_PTO_Banks_Mapref.md)

