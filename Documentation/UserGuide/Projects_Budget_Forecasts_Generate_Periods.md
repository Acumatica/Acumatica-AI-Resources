# Project Budget Forecasts: Generation of Periods {#_bac9251a-3aa4-4cce-ccb7-9b136be2b013 .concept}

For a forecast revision selected on the [Project Budget Forecast](PM_20_96_00.md) \(PM209600\) form, you can make the system automatically add financial periods for all the project budget lines listed in the table according to the selection criteria specified in the Selection area.

When you click **Generate Periods** on the form toolbar, for each line listed in the table, the system adds periods of the master calendar in the range of periods that it selects as follows:

-   As the starting financial period of the range, the system selects the earliest of the following periods, subject to the additional conditions specified:
    -   The financial period of the **Planned Start Date** of the project task, which has been specified on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form.
    -   The earliest financial period containing actual amounts, including amounts of unreleased transactions, or change order amounts of the budget lines related to the project task.
    -   The financial period of the **Start Date** of the project task, which has been specified on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. This option is applicable only if no planned start date is found for the project task and no actual or change order amount has been posted for the project budget lines related to the project task.
    -   The financial period of the **Start Date** of the project, which has been specified on the **Summary** tab of the [Projects](PM_30_10_00.md) form. This option is applicable only if no start date is found for the project task.
-   As the ending financial period of the range, the system selects the latest of the following periods:
    -   The financial period of the **Planned End Date** of the project task, which has been specified on the [Project Tasks](PM_30_20_00.md) form
    -   The latest financial period containing actual amounts, including amounts of unreleased transactions, or change order amounts of the budget lines related to the project task

Each financial period added for a project budget line of the forecast revision has quantities and amounts of 0.

**Parent topic:**[Forecasting Budgets by Periods](../UserGuide/Projects_Budget_Forecasts_Mapref.md)

