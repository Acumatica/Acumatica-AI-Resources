# Employee Payroll Classes: Implementation Activity {#_e2c6262f-d906-4387-ab05-4e6964d99c01 .task}

In the following implementation activity, you will learn how to create an employee payroll class.

## Story { .section}

Suppose that the SweetLife company employs the following types of employees: salaried, who are paid once a month, and hourly, who are paid on a weekly basis and whose overtime is calculated additionally. Each of these types has specific characteristics that should be reflected in the settings of the employees and, eventually, in their paychecks. Acting as a system administrator, you need to create and set up the needed employee payroll classes.

## Configuration Overview {#section_vlt_dpj_vsb .section}

In the *U100 Payroll* dataset, for the purposes of this activity, on the [Work Calendar](CS_20_90_00.md) \(CS209000\) form, the *MAIN* work calendar has been defined. This calendar is used for standard working hours.

## Process Overview { .section}

You create and set up employee payroll classes by using the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) form.

## System Preparation { .section}

Before you start creating deduction and benefit codes, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Government Reporting: Implementation Activity](Payroll_Government_Reporting_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating a Payroll Class for Hourly Employees { .section}

To create an employee payroll class for hourly employees, do the following:

1.  On the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) form, create a new record.
2.  In the Summary area of the form, specify the following information:
    -   **Payroll Class ID**: `HOURLY`
    -   **Description**: `Employees paid on a weekly basis`
3.  On the **Default Settings** tab, specify the following settings:
    -   **Employee Type**: *Hourly*
    -   **Pay Group**: *WEEKLY*
    -   **Default Calendar**: *MAIN*
    -   **Net Pay Minimum**: `500.00`
4.  In the **Work Locations** table, add a new row, and in the added row select *HEADOFFICE* in the **Location** column.

    For the rest of the settings on this tab, leave the default values.

5.  On the form toolbar, click **Save**.

## Step 2: Creating a Payroll Class for Salaried Employees { .section}

To create an employee payroll class for salaried employees, while you are still on the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area of the form, specify the following information:
    -   **Payroll Class ID**: `SALARIED`
    -   **Description**: `Salaried employees`
3.  On the **Default Settings** tab, specify the following settings:
    -   **Employee Type**: *Salaried Non-Exempt*
    -   **Pay Group**: *MONTHLY*
    -   **Default Calendar**: *MAIN*
    -   **Net Pay Minimum**: `1200.00`
    -   **Default WCC Code**: *8810*
4.  In the **Work Locations** table, add a new row, and in the added row select *HEADOFFICE* in the **Location** column.

    For the rest of the settings on this tab, leave the default values.

5.  On the form toolbar, click **Save**.

**Parent topic:**[Creating Employee Payroll Classes](../UserGuide/config_Payroll_Employee_Classes_Mapref.md)

