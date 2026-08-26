# Time Tracking: General Information {#_65265682-f88d-4efc-837b-819fd530412a .concept}

In Acumatica ERP, you can configure time tracking so that employees can report the time spent on various tasks and activities. Also, employee time may be imported from an external time tracking system through an import scenario. All that time tracking information can be brought to payroll and used for the calculation of employee paychecks.

## Learning Objectives { .section}

In this chapter, you will learn how to configure time tracking in the system. In particular, you will do the following:

-   Prepare the system for the configuration of time tracking
-   Enable the needed system features
-   Specify the minimum required configuration so that time activities and time cards can be used to track employee time

## Applicable Scenarios { .section}

You configure time tracking if your organization is going to track the time that employees spend on work activities.

## Ways of Entering Employee Time { .section}

If the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, employee time can be reported in Acumatica ERP through the following entities, depending on the configuration of your system:

-   Employee time cards on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form, which is available only if the *Advanced Financials* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form
-   Employee time activities on the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form
-   Weekly crew time entries on the [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\) form
-   Daily field reports on the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, which is available only if the *Construction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form

Also, employee time can be entered through field services or in the mobile app. If needed, employee time can be imported from an external time tracking service through the use of an import scenario.

**Important:** If time cards are mandatory in your organization and are made required on a per-employee basis—that is, if the **Time Card is Required** check box is selected for employees on the [Employees](EP_20_30_00.md) \(EP203000\) form—users will not be able to process time activities that are not included in time cards. This may affect the work with time activities in payroll.

Regardless of the state of the *Time Management* feature, you can enter employee time directly in payroll in any of the following ways:

-   By using the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, on which you can enter data manually or import a file with time reporting information collected through an external service
-   By entering data manually on the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form

## Workflow of the Time Tracking Implementation { .section}

To prepare the system for time reporting for payroll, you perform the following general steps:

1.  You specify the minimum required configuration for time reporting and configure time tracking with time activities, as demonstrated in [Time Tracking: Implementation Activity](Payroll_Time_Tracking_Implem_Activity.md).
2.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you define labor non-stock items that correspond to the services provided by employees; then on the [Employees](EP_20_30_00.md) \(EP203000\) form, you assign the labor items to the employees who will perform those types of labor.

After you have performed the basic time tracking configuration, employees will be able to report their work time by using time activities and time cards.

**Parent topic:**[Configuring Time Tracking](../UserGuide/config_Payroll_Time_Tracking_mapref.md)

