# Deduction and Benefit Codes: Implementation Activity {#_c1f124dc-9f1e-4f0d-b080-71662fee7917 .task}

In the following implementation activity, you will learn how to create and set up deduction and benefit codes.

## Story { .section}

Suppose that the SweetLife company needs to calculate the following deductions and benefits:

-   401\(k\) retirement plan, which has an employee deduction part and an employer contribution part
-   Overdue child support deductions
-   Workers' compensation for the New York state where the company is located
-   Union dues

Acting as a system administrator, you need to create and define the needed deduction and benefit codes.

## Configuration Overview { .section}

In the *U100 Payroll* snapshot, the following tasks have been performed for the purposes of this activity:

-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, GL accounts that you will use for deduction and benefit expenses and liabilities, including *20300* and *69600*, have been added.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *NYBANK*, *NYLABOR*, and *NYTAXDEP* vendors have been configured.

## Process Overview { .section}

You create the needed deduction and benefit codes by using the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

## System Preparation { .section}

Before you start creating deduction and benefit codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Payment Methods: To Define a Direct Deposit Payment Method](Payroll_Payment_Methods_To_Define_Direct_Deposit.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating a Deduction and Benefit Code for the 401\(k\) Retirement Plan { .section}

To create a deduction and benefit code for the 401\(k\) retirement plan, do the following:

1.  On the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, add a new record.
2.  In the Summary area, specify the following information:

    -   **Code**: `401K`
    -   **Description**: `401(k) Retirement Plan`
    -   **Contribution Type**: *Both Deduction &amp; Contribution*
    -   **Associated With**: *Employee Settings*
    -   **Vendor**: *NYBANK*
    -   **Invoice Description Source**: *Code + Code Name*
    -   **Active**: Selected
    -   **Affects Tax Calculation**: Selected
    Make sure that the remaining check boxes in the Summary area are cleared.

3.  On the **US Tax Settings** tab, specify the following settings:
    -   **Impact on Taxable Wage**: *Calculated by Tax Engine*
    -   **Code Type**: *PLAN401K*
4.  On the **Employee Deduction** tab, specify the following settings:
    -   **Calculation Method**: *Percent of Gross*
    -   **Percent**: `6.00`
5.  Review the following settings on the **Employee Deduction** tab that the system inserted by default:
    -   **Limit Frequency**: *No Maximum*
    -   **Applicable Earnings**: *Total Earnings*
    -   **Reporting Type**: *BOX12D*
6.  On the **Employer Contribution** tab, specify the following information:
    -   **Calculation Method**: *Percent of Gross*
    -   **Percent**: `3`
7.  Review the following settings on the **Employer Contribution** tab that the system inserted by default:
    -   **Limit Frequency**: *No Maximum*
    -   **Applicable Earnings**: *Total Earnings*
    -   **Reporting Type**: *NORMAL*
    -   **No Financial Transaction**: Cleared
8.  On the **GL Accounts** tab, specify the following accounts:
    -   **Deduction Liability Account**: *20300*
    -   **Benefit Expense Account**: *69600*
    -   **Benefit Liability Account**: *20300*
9.  On the form toolbar, click **Save**.

## Step 2: Creating a Deduction and Benefit Code for Workers' Compensation { .section}

To create a deduction and benefit code for workers' compensation for the New York state, while you are still on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following information:

    -   **Code**: `NYWC`
    -   **Description**: `NY Workers' Compensation`
    -   **Contribution Type**: *Employer Contribution*
    -   **Associated With**: *Workers' Compensation*
    -   **Vendor**: *NYTAXDEP*
    -   **Invoice Description Source**: *Code Name*
    -   **Active**: Selected
    Make sure that the remaining check boxes in the Summary area are cleared.

3.  On the **Employer Contribution** tab, specify *Percent of Gross* in the **Calculation Method** box.
4.  Review the following settings on the **Employer Contribution** tab that the system inserted by default:
    -   **Applicable Earnings**: *Total Earnings*
    -   **Reporting Type**: *NORMAL*
5.  On the **WCC Code** tab, in the Summary area, in the **State** box, select *NY*.
6.  On the form toolbar, click **Save**.
7.  In the table on the **WCC Code** tab, specify the previously created workers' compensation codes by specifying the settings from the following table and save the changes.

    |WCC Code|Description|Benefit Rate|Effective Date|
    |--------|-----------|------------|--------------|
    |*5437*|*Installation*|`7.05`|*1/1/2021*|
    |*5606*|*Project Manager*|`0.62`|*1/1/2021*|
    |*8292*|*Warehousing*|`5.62`|*1/1/2021*|
    |*8742*|*Salespeople*|`0.44`|*1/1/2021*|
    |*8810*|*Clerical Work*|`0.2`|*1/1/2021*|

8.  On the form toolbar, click **Save**.
9.  On the **GL Accounts** tab, specify the accounts as follows:
    -   **Benefit Expense Account**: *69600*
    -   **Benefit Liability Account**: *20300*
10. On the form toolbar, click **Save**.

## Step 3: Creating a Deduction and Benefit Code for Overdue Child Support { .section}

To create a deduction and benefit code for workers' compensation that is applicable to the New York state, while you are still on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following information:

    -   **Code**: `CHILD`
    -   **Description**: `Overdue Child Support`
    -   **Contribution Type**: *Employee Deduction*
    -   **Associated With**: *Employee Settings*
    -   **Vendor**: *NYTAXDEP*
    -   **Invoice Description Source**: *Code + Code Name*
    -   **Active**: Selected
    -   **Garnishment**: Selected
    Notice that the remaining check boxes in the Summary area are cleared and non-editable.

3.  On the **Employee Deduction** tab, specify the following information:
    -   **Calculation Method**: *Fixed Amount*
    -   **Amount**: `50`
    -   **Limit Frequency**: *Per Calendar Year*
    -   **Limit Amount**: `2000`
    -   **Reporting Type**: *NORMAL* \(the default value\)
4.  On the **GL Accounts** tab, in the **Deduction Liability Account** box, select *20300*.
5.  On the form toolbar, click **Save**.

## Step 4: Creating a Deduction and Benefit Code for Union Dues { .section}

To create a deduction and benefit code for union dues, while you are still on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following information:

    -   **Code**: `DUES`
    -   **Description**: `Union Dues`
    -   **Contribution Type**: *Employee Deduction*
    -   **Associated With**: *Union*
    -   **Vendor**: *NYLABOR*
    -   **Invoice Description Source**: *Code + Code Name*
    -   **Active**: Selected
    Make sure that the remaining check boxes in the Summary area are cleared.

3.  On the **Employee Deduction** tab, specify the following information:
    -   **Calculation Method**: *Amount per Hour*
    -   **Amount**: `0`
4.  Review the following settings on the **Employee Deduction** tab that the system inserted by default:
    -   **Limit Frequency**: *No Maximum*
    -   **Applicable Earnings**: *Total Earnings*
    -   **Reporting Type**: *NORMAL*
5.  On the **GL Accounts** tab, in the **Deduction Liability Account** box, select *20300*.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Deductions and Benefits](../UserGuide/config_Payroll_Deductions_Benefits_Mapref.md)

