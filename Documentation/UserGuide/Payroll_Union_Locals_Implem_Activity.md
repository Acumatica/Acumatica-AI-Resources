# Unions: Implementation Activity {#_d77db378-8ac8-4473-9090-0e88240426aa .task}

In the following implementation activity, you will learn how to create and specify the settings of a union.

## Story { .section}

Suppose that some employees in your company are part of a union. Your company will have to make sure it is paying the rate agreed in the collective agreement and withhold the union dues from the employees. Acting as a system administrator, you need to create a union record for the New York State Laborers' Union and define the earning rates.

## Configuration Overview {#section_akw_j25_tsb .section}

In the *U100 Payroll* snapshot, on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULTJR* and *CONSULTSR* non-stock items have been created for the purposes of this activity.

## Process Overview { .section}

You create unions and modify their settings by using the [Union Locals](PR_20_97_00.md) \(PR209700\) form.

## System Preparation { .section}

Before you start creating a union, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Deduction and Benefit Codes: Implementation Activity](Payroll_Deductions_Benefits_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step: Creating a Union { .section}

To create a union, do the following:

1.  On the [Union Locals](PR_20_97_00.md) \(PR209700\) form, add a new record.
2.  In the Summary area of the form, specify the following information:
    -   **Union Local ID**: `NYS`
    -   **Active**: Selected
    -   **Description**: `NYS Laborers Union`
3.  On the **Earning Rates** tab, add two rows and specify the settings from the table below.

    |Labor Item|Wage Rate|Effective Date|
    |----------|---------|--------------|
    |*CONSULTJR*|`30.0000`|*1/1/2021*|
    |*CONSULTSR*|`45.0000`|*1/1/2021*|

4.  On the **Deductions and Benefits** tab, add a row with the following settings:
    -   **Deduction and Benefit Code**: *DUES*
    -   **Deduction Amount**: `0.5`
    -   **Effective Date**: *1/1/2021*
5.  On the form toolbar, click **Save**.

**Parent topic:**[Creating Unions](../UserGuide/config_Payroll_Union_Locals_Mapref.md)

