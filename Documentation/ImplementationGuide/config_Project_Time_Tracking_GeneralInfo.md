# Time Tracking Configuration: General Information {#_3e23f330-a441-452f-9420-0078f0576304 .concept}

In Acumatica ERP, you can configure time tracking so that employees will be able to report the time spent on any project based on time cards and, optionally, time activities. Employees' reported time will be tracked in the project and billed automatically when project billing is run.

## Learning Objectives { .section}

In this chapter, you will learn how to configure the system so that employee time can be tracked for individual projects. In particular, you will do the following:

-   Prepare the system for the configuration of time tracking
-   Enable the needed system features
-   Specify the minimum required configuration so that time cards \(and time activities, if applicable\) can be used to track employee time spent for a project

## Applicable Scenarios {#section_adl_lp2_dmb .section}

When you are initially configuring accounting for projects, you configure time tracking if your organization is going to bill the customers for the time employees spend working on any projects.

## Time Tracking with Time Cards in Projects {#section_zhk_d3w_2mb .section}

If time tracking is in use in your organization, the time the employees spend on daily activities is recorded in time cards to track the expenses. A time card is a weekly report on the time an employee has spent each day on particular activities, including project-related ones. If time tracking is configured for use with projects, the time reported by employees is logged to the related project \(or to the non-project code if no project is involved\). The employee time logged to a particular project is billed during the project billing procedure.

When a time card that includes project-related activities is released, for each line of a time card that relates to a project, the system retrieves the labor cost rate at which the employee's labor is billed and generates the corresponding project transaction. The project transaction affects the cost budget of the related project: The system either updates the actual amount and quantity of the existing line or adds a new cost budget line with the incurred costs. Further, this project transaction is billed according to the billing rule specified for the corresponding project task.

## Time Tracking with Time Activities in Projects {#section_mwn_sdb_xmb .section}

You can configure the system so that an employee will report working hours by using time cards in combination with time activities. The information from time activities entered by the employee is then copied to the employee time card for the week that includes the date for which the time activity has been entered. For more information, see [Time Tracking Configuration: Tracking Time with Time Activities](config_Project_Time_Tracking_TimeActivities.md).

## Time Tracking Implementation { .section}

To prepare the system for time reporting for projects with time cards, you perform the following general steps:

1.  You enable the *Advanced Financials* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, and specify the minimum required configuration for time reporting. For more information, see [Time Tracking Configuration: To Configure Time Tracking in Projects](config_Project_Time_Tracking_Implem_Activity.md).
2.  On the [Earning Types](../UserGuide/EP_10_20_00.md) \(EP102000\) form, you select the **Billable** check box for the earning types that will be specified in the time cards that must be billed within a project. The earning type determines how the system calculates the cost of employee labor.
3.  Optionally, you configure time tracking with time activities, as illustrated in the [Time Tracking Configuration: To Track Time with Time Activities](config_Project_Time_Tracking_Implem_Activity2.md).
4.  On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, you define labor non-stock items that correspond to the services provided by employees; then on the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you assign the labor items to the employees who will perform those types of labor. For an example of the creation of labor items, see [Labor Items: To Configure a Labor Item](../UserGuide/Non_Stock_Item_Projects_Implem_Activity.md).
5.  On the [Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\) form, you define labor cost rates that are specific to employees, projects, and project tasks. For an example of this task being performed, see [Labor Items: To Define Labor Cost Rates](../UserGuide/Non_Stock_Item_Projects_Implem_Activity_LaborCostRates.md).
6.  You configure the basic project accounting settings, as demonstrated in the [Basic Project Configuration: Implementation Activity](config_Project_Basic_Implem_Activity.md).

After you perform the basic time tracking configuration, employees will be able to log project-related work by using time cards \(and, optionally, time activities\).

**Parent topic:**[Employee Time Tracking](../ImplementationGuide/config_Project_Time_Tracking_Mapref.md)

