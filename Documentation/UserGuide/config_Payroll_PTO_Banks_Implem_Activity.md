# Paid Time Off: Implementation Activity {#_906b45a6-1764-49d1-85b1-ebec7491d435 .task}

In the following implementation activity, you will learn how to create PTO banks for accrual of paid time off.

## Story { .section}

Suppose that in the SweetLife company, paid time off can be accrued and used for employees' personal time and vacation. Acting as a system administrator, you need to create corresponding PTO banks.

## Process Overview { .section}

You create PTO banks by using the [PTO Banks](PR_20_40_00.md) \(PR204000\) form.

## System Preparation { .section}

Before you start creating deduction and benefit codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Pay Groups, Payroll Calendars, and Pay Periods: Implementation Activity](Payroll_Pay_Groups_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating a Personal Time PTO Bank { .section}

To create a PTO bank to accrue hours of personal time, do the following:

1.  On the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, create a new record.
2.  In the Summary area, specify the following information:

    -   **Bank ID**: `PTO`
    -   **Description**: `Personal Time`
    -   **Disbursing Earning Type**: *PT*
    -   **Active**: Selected
    Make sure that the remaining check boxes in the Summary area are cleared.

3.  On the **General** tab, specify the following settings:
    -   **Accrual Method**: *Front Loading and Percentage*
    -   **Transfer Date Type**: *Specific Date*
    -   **Start Date**: *January* `1`
    -   **Carryover Type**: *None*
    -   **On Settlement**: *Pay Balance*
4.  On the **Employee Classes** tab, add a row and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Employee Class**: *SALARIED*
    -   **Effective Date**: *1/1/2021*
    -   **Accrual %**: `0`
    -   **Balance Limit**: `0`
    -   **Allow Negative Balance**: Cleared
    -   **Front Loading Hours**: `24.00`
    -   **During Probation Period**: *Accrued and Available*
5.  On the **Applicable Earning Types** tab, in the **Accrue Time Off Based On** box in the Summary area, select the *All Earning Types Except Selected* option. Leave the table empty so that the system will use all the earning types configured in the system on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form to accrue time off for the PTO bank.
6.  On the form toolbar, click **Save**.

## Step 2: Creating a Vacation PTO Bank { .section}

To create a PTO bank to accrue hours of vacation time, while you are still on the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, do the following :

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following information:

    -   **Bank ID**: `VLC`
    -   **Description**: `Vacation`
    -   **Disbursing Earning Type**: *VL*
    -   **Active**: Selected
    Make sure that the remaining check boxes in the Summary area are cleared.

3.  On the **General** tab, specify the following settings:
    -   **Accrual Method**: *Percentage*
    -   **Transfer Date Type**: *Specific Date*
    -   **Start Date**: *January* `1`
    -   **Carryover Type**: *Total*
    -   **On Settlement**: *Pay Balance*
4.  On the **Employee Classes** tab, add a row and specify the following settings in the added row:

    -   **Active**: Selected
    -   **Employee Class**: Empty
    -   **Effective Date**: *1/1/2021*
    -   **Accrual %**: `6.00`
    -   **Balance Limit**: `0`
    -   **Allow Negative Balance**: Selected
    -   **During Probation Period**: *Accrued and Available*
    Notice that the system has specified *&lt;ALL&gt;* in the **Employee Class** column for the added row.

5.  On the **Applicable Earning Types** tab, in the **Accrue Time Off Based On** box in the Summary area, select the *All Earning Types Except Selected* option. Leave the table empty so that the system will use all the earning types configured in the system on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form to accrue time off for the PTO bank.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Paid Time Off](../UserGuide/config_Payroll_PTO_Banks_Mapref.md)

