# Overtime Rules: Implementation Activity {#_8d3c394f-6c1a-4253-b2f5-f278a5649724 .task}

In the following implementation activity, you will learn how to configure overtime rules.

## Story { .section}

Suppose that the SweetLife company wants to use the following overtime rules:

-   If an employee works over eight hours \(but less than 10 hours\) on any day, the overtime pay rate should be calculated based on the *OT* \(*Overtime*\) earning type.
-   If an employee works over 10 hours on any day, the overtime pay rate should be calculated based on the *DT* \(*Double Time*\) earning type.

Acting as a system administrator, you need to configure the needed overtime rules.

## Process Overview { .section}

You configure overtime rules on the [Overtime Rules](PR_10_40_00.md) \(PR104000\) form.

## System Preparation { .section}

Before you start creating deduction and benefit codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Unions: Implementation Activity](Payroll_Union_Locals_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step: Configuring Overtime Rules { .section}

To configure overtime rules, do the following:

1.  On the form toolbar of the [Overtime Rules](PR_10_40_00.md) \(PR104000\) form, click **Add Row**.
2.  In the table, specify the following settings for the added row:
    -   **Active**: Selected
    -   **Overtime Rule**: `DAILY8`
    -   **Description**: `Daily over 8 hours`
    -   **Disbursing Earning Type**: *OT*
    -   **Type**: *Daily*
    -   **Threshold for Overtime \(Hours\)**: `8`
3.  On the form toolbar, click **Add Row**.
4.  In the table, specify the following settings for the added row:
    -   **Active**: Selected
    -   **Overtime Rule**: `DAILY10`
    -   **Description**: `Daily over 10 hours`
    -   **Disbursing Earning Type**: *DT*
    -   **Type**: *Daily*
    -   **Threshold for Overtime \(Hours\)**: `10`
5.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Overtime Rules](../UserGuide/config_Payroll_Overtime_Rules_Mapref.md)

