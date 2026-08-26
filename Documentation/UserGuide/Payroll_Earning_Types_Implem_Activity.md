# Earning Types: Implementation Activity {#_99683901-2e1a-49c9-bd4c-257099544833 .task}

In the following implementation activity, you will learn how to define new earning types in addition to the predefined set of earning types in Acumatica ERP.

## Story { .section}

Suppose that in addition to the predefined earning types for regular work hours, overtime, public holidays, and vacations, the SweetLife company is going to use earning type codes for bonuses, double time, personal time, and tips. Also, the predefined code for vacations will be used to accrue paid time off, so its default settings need to be updated correspondingly. Acting as a system administrator, you need to create and define the needed earning type codes.

## Configuration Overview { .section}

In the *U100 Payroll* snapshot, for the purposes of this activity, the *69500* account of the *Expense* type has been created on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

## Process Overview { .section}

You create the needed earning type codes by using the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form.

## System Preparation { .section}

Before you start creating earning type codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Taxes: Implementation Activity](Payroll_Taxes_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating an Earning Type Code for Bonuses { .section}

To create an earning type code for bonuses, do the following:

1.  On the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form, create a new record.
2.  In the Summary area of the form, specify the following settings:
    -   **Code**: `BN`
    -   **Description**: `Bonus`
    -   **Earning Type Category**: *Amount-Based*
    -   **Active**: Selected \(the default value\)
    -   **Contributes to WCC Calculation**: Selected \(the default value\)
3.  On the **US Tax and Reporting** tab, specify the following settings:
    -   **Wage Type**: *SUPPLEMENTAL*
    -   **Reporting Type**: *NORMAL*
    -   **Subject to Taxes**: *Per Tax Engine*
4.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
5.  On the form toolbar, click **Save**.

## Step 2: Creating an Earning Type Code for Double Time { .section}

To create an earning type code for double time, while you are still on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area of the form, specify the following settings:
    -   **Code**: `DT`
    -   **Description**: `Double Time`
    -   **Earning Type Category**: *Overtime*
    -   **Multiplier**: `2.00`
    -   **Active**: Selected \(the default value\)
    -   **Contributes to WCC Calculation**: Selected \(the default value\)
3.  On the **Regular Time** tab, add a row to the table and select *RG* in the **Code** column for the added row.

    Notice that the system has selected *Wage* in the **Earning Type Category** column.

4.  Review the following settings on the **US Tax and Reporting** tab that the system inserted by default:
    -   **Wage Type**: *REGULAR*
    -   **Reporting Type**: *NORMAL*
    -   **Subject to Taxes**: *Per Tax Engine*
5.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
6.  On the form toolbar, click **Save**.

## Step 3: Creating an Earning Type Code for Personal Time { .section}

To create an earning type code for personal time, while you are still on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area of the form, specify the following settings:
    -   **Code**: `PT`
    -   **Description**: `Personal Time`
    -   **Earning Type Category**: *Time Off*
    -   **Regular Time Type Code**: *RG*
    -   **Active**: Selected \(the default value\)
    -   **Contributes to WCC Calculation**: Selected \(the default value\)
3.  Review the following settings on the **US Tax and Reporting** tab that the system inserted by default:
    -   **Wage Type**: *REGULAR*
    -   **Reporting Type**: *NORMAL*
    -   **Subject to Taxes**: *Per Tax Engine*
4.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
5.  On the form toolbar, click **Save**.

## Step 4: Creating an Earning Type Code for Tips { .section}

To create an earning type code for tips, while you are still on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area of the form, specify the following settings:
    -   **Code**: `TP`
    -   **Description**: `Tips`
    -   **Earning Type Category**: *Wage* \(the default value\)
    -   **Active**: Selected \(the default value\)
    -   **Contributes to WCC Calculation**: Selected \(the default value\)
3.  On the **US Tax and Reporting** tab, select *TIPS* in the **Wage Type** box.
4.  Review the following settings on the **US Tax and Reporting** tab that the system inserted by default:
    -   **Reporting Type**: *NORMAL*
    -   **Subject to Taxes**: *Per Tax Engine*
5.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
6.  On the form toolbar, click **Save**.

## Step 5: Updating the Predefined Earning Type Codes { .section}

To update the settings of the predefined earning type codes, while you are still on the [Earning Type Codes](PR_10_20_00.md) \(PR102000\) form, do the following:

1.  In the Summary area, select the *RG* earning type in the **Code** box, and do the following:
    1.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
    2.  On the form toolbar, click **Save**.
2.  In the Summary area, select the *OT* earning type in the **Code** box, and do the following:
    1.  On the **Regular Time** tab, add a row with the *RG* code selected.
    2.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
    3.  On the form toolbar, click **Save**.
3.  In the Summary area, select the *HL* earning type in the **Code** box, and do the following:
    1.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
    2.  On the form toolbar, click **Save**.
4.  In the Summary area, select the *VL* earning type in the **Code** box, and do the following:
    1.  In the Summary area, specify the following information:
        1.  In the **Earning Type Category** box, select *Time Off*.
        2.  In the **Regular Time Type Code** box, select *RG*.
    2.  On the **GL Accounts** tab, in the **Earnings Account** box, specify *69500*.
    3.  On the form toolbar, click **Save**.

**Parent topic:**[Defining Earning Types](../UserGuide/config_Payroll_Earning_Types_Mapref.md)

