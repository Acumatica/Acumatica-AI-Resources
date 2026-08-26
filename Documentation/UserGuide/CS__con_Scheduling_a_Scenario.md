# Scenario Scheduling {#_35206990-0966-4817-a7fd-230a92245f10 .concept}

With Acumatica ERP, you can schedule the activation of the scenarios that have to be performed on a periodic basis. You can create a schedule for a scenario or multiple scenarios that meets your business needs. A schedule defines how many times and how often specific scenarios should be activated in the system. You can assign multiple scenarios to one schedule, or you can create a separate schedule for each scenario.

The schedules can be run manually or automatically. These approaches are described in greater detail in the following sections of this topic.

## Creating a Schedule { .section}

To schedule the activation of the recurring scenarios, you need to create a schedule and specify schedule parameters for the particular scenario or scenarios. The parameters define the periods when the scenarios assigned to the schedule should be activated.

To create a schedule, you should use the [Recurring Scenarios](WZ_30_10_00.md) \(WZ301000\) form. On that form, you define the start date and expiration date of using the schedule, or define that it should never expire by selecting the **Never Expires** check box. You can also limit the number of schedule execution sessions and set up the frequency of running the schedule. To set up this frequency, you need to select one of the following options:

-   **Daily**: A scenario should be activated every day or every *x* days.
-   **Weekly**: A scenario should be activated every week or every *x* weeks, on the selected day or days of the week.
-   **Monthly**: A scenario should be activated once per month or every *x* months, on the specified day of the month.
-   **By Financial Period**: A scenario should be activated once per financial period or every *x* periods, on the specified day of the period.

After you have defined all the required parameters, you can assign the appropriate scenarios to that schedule. To do that, you need to click **Add Row** on the table toolbar and add scenarios to the schedule. You then save the schedule.

As a result of this operation, you have created a schedule for the scenario or scenarios activation. To run the schedule, you need to click the **Run Now** button. When you run the schedule, the system determines whether it should activate the scenario depending on the business date and the next execution date specified in the schedule. The scenario will not be activated if the next execution date has not occurred yet. Otherwise, the scenario will be activated and the system will update the **Last Executed** date in the schedule.

For example, suppose that you schedule the scenario to be activated monthly on the first Tuesday of each month. If you run the schedule the first Tuesday of every month, the scenario will be activated each time. If you run this schedule every day, the scenario will be activated only on the first Tuesday of the month.

## Activating Recurring Scenarios { .section}

If you have multiple scenarios that should be activated according to different schedules, it would be quite difficult to remember to run all these schedules on time. In that case, you can automate the process of running the scenario schedules by creating the automation schedule. According to this schedule, the system will run the scenario schedules automatically.

To create an automation schedule, you should click the **Schedules** button on the toolbar of the [Activate Recurring Scenarios](WZ_50_10_00.md) \(WZ501000\) form, and then click the **Add** item in the menu. After that, the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form opens. On this form, you should specify the schedule parameters and save the schedule. For details, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

For example, suppose that there are two recurring scenarios configured in your system. On the [Recurring Scenarios](WZ_30_10_00.md) \(WZ301000\) form, you have created the schedules for activation these scenarios. The first scenario has to be activated on the first Monday of every month, and the second one has to be activated on the last Friday of each month. To automate the process of running these schedules, you create an automation schedule by using the [Activate Recurring Scenarios](WZ_50_10_00.md) \(WZ501000\) form. According to this automation schedule, each scenario schedule will be run automatically, so that the scenarios will also be activated automatically. In our example, the first scenario will be activated every month on the first Monday, and the second scenario will be activated every month on the last Friday.

**Note:** Only scenarios with the *Pending* or *Completed* status can be activated by running the schedule.

**Parent topic:**[Managing Scenarios](../UserGuide/CS__MNG_Managing_a_Scenario.md)

