# Pay Groups, Payroll Calendars, and Pay Periods: General Information {#_9c047250-7bd6-44aa-961d-2404497948b5 .concept}

A pay group is a group of employees that have the same pay period frequency and pay dates, which are defined through a payroll calendar individually for each pay group. For a pay group that has a configured payroll calendar, pay periods are generated.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create pay groups
-   Configure payroll calendars for pay groups
-   Generate pay periods

## Applicable Scenarios { .section}

You create pay groups to group employees that have the same pay period frequency \(for instance, once a month\) and pay dates. For each pay group, you need to create a pay schedule, which you do by configuring a template for pay periods \(that is, a payroll calendar\) and then generating pay periods for a particular year.

## Pay Groups { .section}

You create pay groups by using the [Pay Groups](PR_20_50_00.md) \(PR205000\) form. Pay groups are used for grouping employees according to when they are paid during a specific pay run. For example, all hourly employees that are paid biweekly on Tuesdays might constitute a specific pay group. Pay groups can also be used to create different pay runs by location, department, or any other required category. An employee may be included in only one pay group at a time. A pay group may be assigned to an employee by default based on the employee class settings.

**Attention:** Employees who work on certified projects must be paid hourly on a weekly basis so that they may be included in certified reporting. For more information, see [Certified Projects: General Information](CertifiedProject_GeneralInfo.md).

## Payroll Data Visibility by Pay Group { .section}

In the **User Role** column on the [Pay Groups](PR_20_50_00.md) \(PR205000\) form, you can specify a user role for each pay group.

On the [Payroll Batches](PR_30_10_00.md) \(PR301000\), [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\), [Create Payroll Payment](PR_50_50_00.md) \(PR505000\), [Payment Batches](PR_30_50_00.md) \(PR305000\), and [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) forms, only the users that are assigned the user role selected for a specific pay group have access to payroll data of the employees that belong to that pay group. For the other users, which are not assigned this user role, the pay group, the employees that belong to this pay group, and the related records are not available for selection in the corresponding UI elements.

Also, on the [Payment Batches](PR_30_50_00.md) form, the batch total is not shown to a user whose access to payroll data is restricted for at least one employee from the batch. This user will not be able to delete, export, or release the batch.

## Payroll Calendars { .section}

You create payroll calendars on the [Payroll Calendar](PR_20_60_00.md) \(PR206000\) form. You can open this form from the [Pay Groups](PR_20_50_00.md) form by selecting a pay group in the table and then clicking **Calendar** on the form toolbar.

A payroll calendar is a template that the system uses to generate a payroll schedule for a pay group. One payroll calendar can be assigned to one pay group.

For a payroll calendar, you need to specify the starting year of the payroll schedule and the pay frequency, which you can select from a list of predefined options or define by specifying a custom number of periods. If you have created a payroll calendar for a wrong year, you may need to shift the first year to one year earlier by clicking **Shift First Year** on the More menu.

If you select the weekly or biweekly pay frequency, you need to specify a day of the week on which the pay period starts and the day of the week on which employees are to be paid.

Once you have specified the necessary settings, you can click **Create Periods** on the More menu to create template pay periods for the selected pay group. \(The **Create Periods** command is not available if the weekly or biweekly pay frequency is selected because in this case the number of pay periods may be different for different years, which cannot be reflected in a template schedule.\) The system uses the created periods as a template when generating pay periods for a particular year on the [Pay Periods](PR_20_10_00.md) \(PR201000\) form.

You can delete the calendar periods created for a particular pay group by clicking **Delete Pay Group Periods** on the More menu.

## Pay Periods { .section}

After a payroll calendar has been configured for a pay group, you can generate pay periods for this pay group by using the [Pay Periods](PR_20_10_00.md) \(PR201000\) form.

When you select a pay group and click **Create Periods** on the form toolbar, the **Create Periods** dialog box opens. In this dialog box, you can choose whether you want the system to automatically change transaction dates based on the exceptions calendar, which is maintained on the **Transaction Date Exceptions** tab of the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form. Also, you can choose whether employees should be paid on the first business day before the exception or on the first business day after the exception. When you click **Create**, pay periods are created for the pay group in accordance with the specified settings.

**Parent topic:**[Defining Pay Groups, Payroll Calendars, and Pay Periods](../UserGuide/config_Payroll_Pay_Groups_Mapref.md)

