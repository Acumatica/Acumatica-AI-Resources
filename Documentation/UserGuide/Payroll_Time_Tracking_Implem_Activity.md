# Time Tracking: Implementation Activity {#_60cd37cd-f3e8-4c03-89b6-72d3a656282e .task}

In the following implementation activity, you will learn how to configure the system to be able to track employee time in payroll.

## Story { .section}

Suppose that you, as an administrative user of the SweetLife Fruits &amp; Jams company, are configuring payroll. The manager of the company has decided to track time that employees spend on their work activities and calculate paychecks based on this information.

You must configure the basic time tracking configuration.

## System Preparation { .section}

Before you start configuring time tracking, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Payment Methods: To Define a Direct Deposit Payment Method](Payroll_Payment_Methods_To_Define_Direct_Deposit.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step: Reviewing the Basic Configuration for Time Reporting { .section}

Make sure the minimum required configuration for time reporting has been performed by doing the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Time Management* feature is enabled.
2.  On the [Company Tree](EP_20_40_61.md) \(EP204061\) form, make sure that each employee who may need to report time activities is included in a proper workgroup and their manager is included in a parent workgroup to be able to review and approve reported time activities.
3.  On the [Activity Types](CR_10_20_00.md) \(CR102000\) form, make sure the **Track Time and Costs** check box is selected for the *Work Item* activity type, which you will use for logging employee time.

**Parent topic:**[Configuring Time Tracking](../UserGuide/config_Payroll_Time_Tracking_mapref.md)

