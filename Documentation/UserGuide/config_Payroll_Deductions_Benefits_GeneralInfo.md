# Deduction and Benefit Codes: General Information {#_1e1030ef-99f5-4c8a-b48f-a9ad9d9f573e .concept}

A deduction code reduces the employee net pay and a benefit code increases the cost of payroll for the company. In Acumatica ERP, a deduction and benefit code may include an employee \(deduction\) or an employer \(contribution\) component, or both components. Each component may involve complex calculation methods. Also, a deduction and benefit code may or may not be subject to various taxes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create deduction and benefit codes
-   Specify whether the created code is an employee deduction, an employer contribution, or both
-   Specify a source entity with which the code can be used
-   Specify how deductions or benefits should be calculated
-   Specify what earning types may be used in the calculation of deductions and benefits
-   Specify which payroll items may increase or decrease the applicable wage, if applicable

## Applicable Scenarios { .section}

You configure deduction and benefit codes if you need to calculate employee deductions and employer contributions to employee wages.

## Creation of a Deduction and Benefit Code { .section}

You can create deduction and benefit codes by using the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

For each code, you need to specify in the **Contribution Type** box whether it should be calculated as an employee deduction, an employer contribution, or both.

You can also specify a vendor for a deduction and benefit code. This vendor is to be owed the liability resulting from the deduction or benefit and will be used for an AP liability bill.

## Calculation of Deductions and Benefits { .section}

Depending on the contribution type specified for the deduction and benefit code, on the **Employee Deduction** or **Employer Contribution** tab \(or on both tabs\) of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, you can select one of the following options in the **Calculation Method** box:

-   *Fixed Amount*: The deduction uses the amount specified in the **Amount** box on the same tab. The amount is added in each pay period.
-   *Percent of Gross*: The deduction is calculated by multiplying the gross wages \(the total of all earning types that contribute to gross wages\) by the percentage specified in the **Percent** box on the same tab.
-   *Percent of Custom*: The deduction or benefit is calculated as a percentage of the applicable wage. For the calculation, the system uses the percent specified in the **Percent** box on this tab and the information specified on the **Applicable Wage** tab of this form where you can define which payroll items may increase or decrease the applicable wage.
-   *Percent of Net*: The deduction is calculated by multiplying the net wages \(the total of all earning types that contribute to net wages\) by the percentage specified in the **Percent** box on the same tab.
-   *Amount per Hour*: The deduction is calculated by multiplying the total hours for all earning types \(typically hours, but could be piecework, miles, or another unit\) by the amount specified in the **Amount** box on the same tab.

In the **Applicable Earnings** box on these tabs, you can specify what earning types can be used in the calculation of employee deductions or employer contributions based on the categories of those earning types. The category of each earning type code is specified in the Summary area of the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form.

-   *Total Earnings*: Earning types of the *Wage*, *Overtime*, *Amount-Based*, and *Time Off* categories can be used in the calculation.

    This option appears in the drop-down list only if the *Percent of Gross*, *Percent of Custom*, or *Amount per Hour* calculation method is selected on this tab.

-   *Total Earnings and Paid Fringe Amount*: Earning types of the *Wage*, *Overtime*, *Amount-Based*, and *Time Off* categories, as well as paid fringe amounts, can be used in the calculation.

    This option appears in the drop-down list only if the *Percent of Gross* calculation method is selected on this tab.

-   *Regular Earnings*: Only *Wage* earnings can be used for the calculation.

    This option appears in the drop-down list only if the *Percent of Gross* or *Amount per Hour* calculation method is selected on this tab.

-   *Regular and OT Earnings*: Earning types of the *Wage* and *Overtime* categories can be used in the calculation.

    This option appears in the drop-down list only if the *Percent of Gross* or *Amount per Hour* calculation method is selected on this tab.

-   *Regular and OT Earnings with Time Off*: Earning types of the *Wage*, *Overtime*, and *Time Off* categories can be used in the calculation.

    This option appears in the drop-down list only if the *Percent of Gross* calculation method is selected on this tab.

-   *Straight Time Earnings*: If the *Percent of Gross* calculation method is selected on this tab, earning types of the *Wage* and *Overtime* categories can be used in the calculation. If the *Percent of Custom* calculation method is selected on this tab, earning types of any category can be used in the calculation.

    During the calculation, the system will not apply the overtime multiplier \(if any\), using overtime earnings as if they are regular time earnings—that is, for an overtime earning type, the system will use only the employee’s standard pay rate, which is based on the earning type specified in the **Regular Time Type Code** box on the [Earning Type Codes](../Shared/../UserGuide/PR_10_20_00.md) \(PR102000\), without the overtime multiplier applied to it.

    This option appears in the drop-down list only for the *Percent of Gross* and *Percent of Custom* calculation methods.

-   *Straight Time Earnings and Time Off*: Earning types of the *Wage*, *Overtime*, and *Time Off* categories can be used in the calculation.

    During the calculation, the system will not apply the overtime multiplier \(if any\), using overtime earnings as if they are regular time earnings.

    This option appears in the drop-down list only if the *Percent of Gross* calculation method is selected on this tab.

-   *Total Earnings with Multiplier Applied to Overtime*: Earning types of the *Wage*, *Overtime*, and *Time Off* categories can be used in the calculation. For an earning type of the *Overtime* category, the overtime multiplier, which is specified in the settings of the earning type, is applied to the number of worked hours.

    This option appears in the drop-down list only if the *Amount per Hour* calculation method is specified on this tab.

-   *Regular and Overtime Earnings with Multiplier Applied to Overtime*: Earning types of the *Wage* and *Overtime* categories can be used in the calculation. For an earning type of the *Overtime* category, the overtime multiplier, which is specified in the settings of the earning type, is applied to the number of worked hours.

    This option appears in the drop-down list only if the *Amount per Hour* calculation method is specified on this tab.


## Deduction and Benefit Code Source { .section}

Each deduction and benefit code can be associated with only one source: employee settings, certified projects, unions, or workers’ compensation codes. You can select a source in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

With this capability, correct YTD, QTD, and MTD amounts of deductions and benefits associated with a particular union or certified project can be calculated for reports.

For an existing deduction and benefit code, you cannot modify the **Associated With** option specified for the code if the code is already associated with an entity or payment.

## Workers' Compensation Codes { .section}

Workers' compensation is calculated through the use of deduction codes. If *Workers' Compensation* is selected in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, the **WCC Code** tab appears on that form, where you can specify all WCC code rates that should be calculated for the specified state through the selected deduction code. For each WCC code, you need to specify a rate, which is applicable in the specified state.

If you need to calculate workers' compensation for different states, you should create and set up a deduction code for each state.

## Reporting { .section}

In the **Reporting Type** box on the **Employee Deduction** and **Employer Contribution** tabs of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, you can specify if the contribution is to appear in Box 12 of the W-2 report and which code it will use. If the contribution should not appear in Box 12 of the W-2 report, you need to select the *0-Normal* option.

## Taxes { .section}

If you select the **Affects Tax Calculation** check box, the **Tax Settings** tab becomes available on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. You can use that tab to determine which taxes this code is subject to.

## ACA Information { .section}

You can mark a deduction and benefit code as containing ACA information by selecting the **ACA Applicable** check box in the Summary area of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. As a result, the **ACA Information** tab will appear on the form where you can specify information needed for ACA reporting. For further details, see [Government Reporting: Affordable Care Act \(ACA\) Reporting](Payroll_Government_Reporting_ACA_Reporting.md).

## Benefits with No Impact on the General Ledger { .section}

You can create benefits that do not produce financial transactions and thus have no impact on the posting to the general ledger. To set up such a benefit, select the **No Financial Transaction** check box on the **Employer Contribution** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

**Note:** The **No Financial Transaction** check box is not available if in the Summary area of the form, the **Payable Benefit** check box is selected or the *Workers' Compensation* option is specified in the **Associated With** box.

The deduction and benefit code with this check box selected is calculated and displayed on the **Deduction** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form for the related document, but this code is not displayed in the **Benefit Details** dialog box, which you can open by clicking **Benefit Details** on the table toolbar of that tab. Also, the system does not use the calculated amount of the benefit when verifying that the summary amount equals the details total. The system does not create a liability bill for this benefit, and when the document is released, the system does not create any record for the deduction and benefit code in the GL batch, but the benefit is included in the pay stub.

You do not need to specify GL accounts for the benefit when setting up the deduction and benefit code.

If the deduction and benefit code is associated with a certified project, the system uses this code in calculations for the certified project. Also, if a certified reporting type is specified for the deduction and benefit code, this code is available for selection in the **Benefits Reducing the Rate** table on the **Fringe Benefits** tab of the [Certified Projects](PR_20_99_00.md) \(PR209900\) form.

## Payable Benefits { .section}

A payable benefit is a recurring payment that may be included in employee paychecks. To be able to set up a payable benefit, you need to select the **Payable Benefit** check box in the Summary area of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

When this check box is selected, the system does the following:

-   Inserts *Employer Contribution* in the **Contribution Type** box of the Summary area \(in this case, no other option is available in the drop-down list\)
-   Makes the **Garnishment** and **ACA Applicable** check boxes in the Summary area unavailable
-   Displays only the *Fixed Amount* and *Amount per Hour* options in the **Calculation Method** box on the **Employer Contribution** tab
-   Displays only the **Benefit Expense Account** and **Benefit Expense Sub.** settings on the **GL Accounts** tab
-   If the **Affects Tax Calculation** check box is selected in the Summary area, displays only the *Increased by Contribution Except Listed Below* option—that is, the option that may increase the taxable wage if the payable benefit is properly configured—in the **Impact on Taxable Wage** box on the **Tax Settings** tab

A payable benefit increases the gross amount of the paycheck. As a result, the sum of the earnings might not be equal to the gross pay.

**Parent topic:**[Configuring Deductions and Benefits](../UserGuide/config_Payroll_Deductions_Benefits_Mapref.md)

