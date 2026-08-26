# Pay Groups, Payroll Calendars, and Pay Periods: Implementation Activity {#_5f34915e-8933-4836-abea-f195d708fc51 .task}

In the following implementation activity, you will learn how to create pay groups, configure payroll calendars, and generate pay periods for each pay group with the configured payroll calendar.

## Story { .section}

Suppose that the SweetLife company is going to use the following pay period schedule:

-   Hourly employees are to be paid on a weekly basis.
-   Salaried employees are to be paid once a month.

Acting as a system administrator, you need to create two pay groups—one for hourly employees and one for monthly employees, and then prepare a pay period schedule by configuring payroll calendars and generating pay periods for these pay groups.

## Configuration Overview { .section}

In the *U100 Payroll* snapshot, for the purposes of this activity, on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, GL accounts that you will use for deduction and benefit expenses and liabilities, including *20300*, *24100*, *65100*, *69500*, and *69600*, have been added.

## Process Overview { .section}

You create pay groups on the [Pay Groups](PR_20_50_00.md) \(PR205000\) form. For each pay group, on the [Payroll Calendar](PR_20_60_00.md) \(PR206000\) form, you configure a payroll calendar. For each pay group with the configured payroll calendar, on the [Pay Periods](PR_20_10_00.md) \(PR201000\) form, you generate pay periods.

## System Preparation { .section}

Before you start configuring pay groups, payroll calendars, and pay periods, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Overtime Rules: Implementation Activity](Payroll_Overtime_Rules_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating a Monthly Pay Group { .section}

To create a monthly pay group, do the following:

1.  On the form toolbar of the [Pay Groups](PR_20_50_00.md) \(PR205000\) form, click **Add Row**.
2.  In the table, specify the following settings for the added row:
    -   **Pay Group ID**: `MONTHLY`
    -   **Pay Group Name**: `Salaried employee group`
    -   **Earnings Account**: *69500*
    -   **Deduction Liability Account**: *20300*
    -   **Benefit Expense Account**: *69600*
    -   **Benefit Liability Account**: *20300*
    -   **Tax Expense Account**: *65100*
    -   **Tax Liability Account**: *24100*
    -   **Default**: Cleared
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Weekly Pay Group { .section}

To create a weekly pay group, while you are still viewing pay groups on the [Pay Groups](PR_20_50_00.md) \(PR205000\) form, do the following:

1.  On the form toolbar, click **Add Row**.
2.  In the table, specify the following settings for the added row:
    -   **Pay Group ID**: `WEEKLY`
    -   **Pay Group Name**: `Hourly employee group`
    -   **Earnings Account**: *69500*
    -   **Deduction Liability Account**: *20300*
    -   **Benefit Expense Account**: *69600*
    -   **Benefit Liability Account**: *20300*
    -   **Tax Expense Account**: *65100*
    -   **Tax Liability Account**: *24100*
    -   **Default**: Cleared
3.  On the form toolbar, click **Save**.

## Step 3: Configuring a Payroll Calendar for the Monthly Pay Group { .section}

To configure a payroll calendar for the monthly pay group, , while you are still viewing pay groups on the [Pay Groups](PR_20_50_00.md) \(PR205000\) form, do the following:

1.  In the table, click the line with the *MONTHLY* pay group in the table.
2.  On the form toolbar, click **Calendar**.

    The [Payroll Calendar](PR_20_60_00.md) \(PR206000\) form opens in the same tab with the *MONTHLY* pay group selected in the **Pay Group** box.

3.  Make sure that *Monthly* is selected in the **Period Type** box.
4.  On the form toolbar, click **Create Periods**.

    As a result, the table on the form is populated with template periods.

5.  On the form toolbar, click **Save**.

## Step 4: Configuring a Payroll Calendar for the Weekly Pay Group { .section}

To configure a payroll calendar for the weekly pay group, while you are still on the [Payroll Calendar](PR_20_60_00.md) \(PR206000\) form, do the following:

1.  In the Summary area, in the **Pay Group** box, select *WEEKLY*.
2.  In the **Period Type** box, select *Weekly*.
3.  On the form toolbar, click **Save**.

## Step 5: Generate Pay Periods for the Monthly Pay Group { .section}

To generate pay periods for the monthly pay group, do the following:

1.  On the [Pay Periods](PR_20_10_00.md) \(PR201000\) form, open the *MONTHLY* pay group.
2.  Make sure that the current year is selected in the **Year** box.
3.  On the form toolbar, click **Create Periods**.
4.  In the **Create Periods** dialog box, which opens, review the default settings and click **Create**.

    As a result, the dialog box closes. The system populates the table on the form with pay periods according to the template of the payroll calendar that was set up for this pay group.

5.  On the form toolbar, click **Save**.

## Step 6: Generate Pay Periods for the Weekly Pay Group { .section}

To generate pay periods for the weekly pay group, while you are still on the [Pay Periods](PR_20_10_00.md) \(PR201000\) form, do the following:

1.  In the Summary area, in the **Pay Group** box, select *WEEKLY*.
2.  Make sure that the current year is selected in the **Year** box.
3.  On the form toolbar, click **Create Periods**.
4.  In the **Create Periods** dialog box, which opens, review the default settings and click **Create**.

    As a result, the dialog box closes. The system populates the table on the form with pay periods according to the template of the payroll calendar that was set up for this pay group.

5.  On the form toolbar, click **Save**.

**Parent topic:**[Defining Pay Groups, Payroll Calendars, and Pay Periods](../UserGuide/config_Payroll_Pay_Groups_Mapref.md)

