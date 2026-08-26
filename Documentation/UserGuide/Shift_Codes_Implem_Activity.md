# Shift Codes: Implementation Activity {#_15fdbe06-a590-485e-9724-4ba44bef6804 .task}

In the following implementation activity, you will learn how to create shift codes.

## Story { .section}

Suppose that some employees of the SweetLife company may work regular hours, graveyard shifts, or weekend shifts. Employee pay rate is increased by $5 for graveyard shifts or by 50% for weekend shifts. Acting as an administrator, you need to define shift differentials for work outside regular hours.

## Process Overview { .section}

First, you enable the *Shift Differential* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form to be able to define shift differentials in the system. Then you create necessary shift codes by using the [Shift Codes](EP_10_30_00.md) \(EP103000\) form.

## System Preparation { .section}

Before you start creating shift codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Time Tracking: Implementation Activity](Payroll_Time_Tracking_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Enabling the Shift Differential Feature { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Shift Differential* feature.

## Step 2: Creating a Graveyard Shift Code { .section}

To create a shift code for graveyard shifts, with the pay rate increased by an amount, do the following:

1.  On the [Shift Codes](EP_10_30_00.md) \(EP103000\) form, in the **Shift Codes** table, add a row and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Code**: `NIGHT`
    -   **Description**: `Graveyard shift`
2.  For the entered row, in the **Rates** table, add a row and specify the following information:
    -   **Effective Date**: *1/1/2021*
    -   **Type**: *Amount*
    -   **Wage Amount**: `5.00`
    -   **Costing Amount**: `5.00`
3.  On the form toolbar, click **Save**.

## Step 3: Creating a Weekend Shift Code { .section}

To create a shift code for weekend shifts with the pay rate increased by percent, while you are still viewing shift codes on the [Shift Codes](EP_10_30_00.md) \(EP103000\) form, do the following:

1.  In the **Shift Codes** table, add a row with the following information:
    -   **Active**: Selected
    -   **Code**: `WEEKEND`
    -   **Description**: `Weekend shift`
2.  For the entered row, in the **Rates** table, add a row and specify the following information:
    -   **Effective Date**: *1/1/2021*
    -   **Type**: *Percent*
    -   **Percent**: `50`
3.  On the form toolbar, click **Save**.

Now these shift codes may be specified for time activities performed outside normal working hours.

**Parent topic:**[Creating Shift Codes](../UserGuide/Shift_Codes_Mapref.md)

