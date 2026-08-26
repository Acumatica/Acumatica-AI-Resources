# Earning Types: General Information {#_63c4ba03-9cf7-4215-8654-5145856a9c8d .concept}

In payroll, an earning type code determines the type of earnings an employee is paid during the pay period.

## Learning Objectives { .section}

In this chapter, you will learn how to create and set up earning type codes in payroll.

## Applicable Scenarios { .section}

You configure earning type codes to be able to record hours and earnings information for employees.

## Categories of Earning Types { .section}

The system recognizes the following categories of earning types:

-   *Wage*: An earning type of this category is processed as a normal earning. These earning types are available on the **Compensation** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. Also, earning types of only this category are available in the **Regular Hours Earning Type for Quick Pay** box on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form; the system uses this settings for the quick pay process, which may be run through the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, for regular hours.
-   *Overtime*: The system processes an earning type of this category as overtime. For an overtime earning type, you need to specify the multiplier by which an employee's regular pay rate is to be multiplied to determine the final pay rate, and the earning type or earning types to be used as the source of the regular pay rate.
-   *Amount-Based*: Earning types of this category are amount-based. That is, if such an earning type is specified for a record on the **Earning** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form, the **Hours** and **Rate** columns are non-editable for that record and you need to specify an amount in the **Amount** column.

    Only an amount-based earning type may be selected in the **Commission Earning Type** box on the [Payroll Preferences](PR_10_10_00.md) form.

-   *Piecework*: An earning type of this category is processed as a piecework. That is, if such an earning type is selected for a record on the **Earning** tab of the [Paychecks and Adjustments](PR_30_20_00.md) form, the **Unit** and **Unit Type** columns become available for the record and the system calculates earned amount by multiplying the rate by the number of units instead of hours.

    If an employee has been assigned a piecework earning type on the [Employee Payroll Settings](PR_20_30_00.md) form and you add such an employee to a payroll batch on the [Payroll Batches](PR_30_10_00.md) form, you can specify the number of units and their type in the table of the **Employee Earning Details** dialog box.

    This type of earnings is not included in overtime calculation.

-   *Time Off*: Earning types of this category are processed as time off. Only these earning types are available on the [PTO Banks](PR_20_40_00.md) \(PR204000\) form for a disbursing earning. Also, earning types of only this category are available in the **Holidays Earning Type for Quick Pay** box on the [Payroll Preferences](PR_10_10_00.md) form; the system uses this setting for the quick pay process, which may be run through the [Payroll Batches](PR_30_10_00.md) form, for time off hours. For a *Time Off* earning type, you need to specify an earning type of the *Wage* category that is to be used as the source of the pay rate.

You can create earning types by using the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form. Earning types of the *Piecework* category can be created only if the **Enable Piecework as an Earning Type** check box is selected on the [Payroll Preferences](PR_10_10_00.md) form.

## Predefined Earning Types { .section}

By default, the following earning types are available in the system:

-   *Regular Hours \(RG\)*: Standard working hours that are paid based on the standard employee rate.
-   *Overtime \(OT\)*: Overtime working hours that are paid based on the standard rate multiplied by the value of the overtime multiplier.
-   *Public Holidays \(HL\)*: Non-working hours for public holidays, which are payable. You can use this earning type to indicate that certain days included in the paycheck are public holidays when no work is done.
-   *Vacations \(VL\)*: Non-working hours for vacations, which are also payable. You can use this earning type to indicate that the employee is on vacation and thus not working.

## Earning Type Settings { .section}

For an earning type code, you can do the following:

-   Indicate whether the hours linked with the earning type code are considered for PTO calculation
-   Indicate whether the earning type is to appear in Box 12 of the W-2 report and which code it will use
-   Specify the method used to determine the list of applicable taxes
-   Specify a project and project task to be associated with the earning type code by default
-   Specify GL accounts to be used to record transactions linked with the earning type code

Only earning types marked as *Active* can be used in the calculation of a paycheck.

**Parent topic:**[Defining Earning Types](../UserGuide/config_Payroll_Earning_Types_Mapref.md)

