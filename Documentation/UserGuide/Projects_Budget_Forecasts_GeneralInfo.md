# Project Budget Forecasts: General Information {#_9516601a-8bb1-4cce-ccb7-9b136be2b013 .concept}

You prepare a budget forecast for a long-term project if you need to break down the structure of the project budget by financial period. This gives you the ability to compare and analyze monthly budgets versus actual revenue and expenditures.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a budget forecast for a project
-   Add financial periods to the budget forecast
-   Distribute budgeted values among the financial periods
-   Update the project budget based on the forecast
-   Update the financial periods in the forecast based on the updated actual values

## Applicable Scenarios { .section}

You create a budget forecast for a project if you need to break down the budget structure by financial periods to be able to control the budget performance by periods.

## Creation of the Project Budget Forecast {#section_fdf_x42_p2b .section}

Each project can have multiple revisions of the budget forecast. For a new project budget forecast, in the Summary area of the [Project Budget Forecast](../Shared/../UserGuide/PM_20_96_00.md) \(PM209600\) form, you select the project and enter an alphanumeric revision identifier of the budget forecast, which must be unique within the project. When you enter the revision, the system automatically fills in the table with the revenue and cost budget lines of the selected project.

In a forecast revision, you distribute the original and revised budget amounts of existing revenue and cost budget lines among the financial periods in the selected range to estimate planned project revenue and expenses by these periods.

You can manually add financial periods for a selected budget line of the forecast revision by clicking **Add Periods** on the table toolbar and selecting the range of financial periods in the **Add Periods** dialog box.

You can also make the system automatically add financial periods for all the project budget lines of the forecast revision listed in the table according to the selection criteria specified in the Summary area. When you click **Generate Periods** on the form toolbar, for each line that’s currently listed in the table, the system adds financial periods based on the settings of the project task and related project transactions. For more information on how the system determines the range of periods to be added, see [Project Budget Forecasts: Generation of Periods](../Shared/../UserGuide/Projects_Budget_Forecasts_Generate_Periods.md).

Each financial period added for a project budget line of the forecast revision has quantities and amounts of 0. You can manually specify the **Original Budgeted Quantity**, **Original Budgeted Amount**, **Revised Budgeted Quantity**, and **Revised Budgeted Amount** values for each period of the project budget line.

You can also distribute the original and revised quantities and amounts of project budget lines among period lines automatically by clicking **Generate Forecast** on the form toolbar. In the **Generate Forecast** dialog box, you specify which values the system should distribute, in which columns, and for which budget lines. The distribution function rounds equally distributed values by using the logarithmic rounding algorithm. For an example of rounding, see [Project Budget Forecasts: Example of Rounding](../Shared/../UserGuide/Projects_Budget_Forecasts_Rounding.md).

For each project budget line with added period lines, the system calculates the following totals in the **Original Budgeted Quantity**, **Original Budgeted Amount**, **Revised Budgeted Quantity**, and **Revised Budgeted Amount** columns:

-   **Total**: The total of the period lines
-   **Delta**: The difference between the value of the project budget line and the total of the period lines

## Processing Project Budget Forecasts { .section}

When the actual values of a project are updated, the system automatically updates the actual values of the budget forecasts of the project. The system calculates the differences between the revised budgeted values and the actual values in the **Revised Quantity - Actual Quantity** and **Revised Amount - Actual Amount** columns on the [Project Budget Forecast](../Shared/../UserGuide/PM_20_96_00.md) \(PM209600\) form, so that you can compare the performance of each budget line by period.

If you need to update financial periods of a project budget line of the forecast revision, you click this line in the table on the [Project Budget Forecast](../Shared/../UserGuide/PM_20_96_00.md) form, and on the table toolbar, click **Update Forecast Lines**. For the selected line, the system adds the financial periods to which actual values or change order values have been posted for the corresponding project budget line and that have been missed in the forecast revision.

If you need to update the original and revised budgeted values of the corresponding project budget line on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form with the delta values of a project budget line of the forecast revision, you click this line of the forecast revision in the table on the [Project Budget Forecast](../Shared/../UserGuide/PM_20_96_00.md) form, and on the table toolbar, click **Update Project Budget Line**.

You can restructure the budget of the project and delete the project budget lines for which the corresponding forecast lines have been created. The changes in the project budget structure affect the project budget forecast as follows:

-   If you delete a project budget line, the corresponding budget forecast lines are not deleted. The system will keep the forecast, and if you restore this project budget line, the forecast for this line will be also restored.
-   If you delete a project task along with all the cost budget lines that include this project task, the corresponding budget forecast lines are deleted.

**Parent topic:**[Forecasting Budgets by Periods](../UserGuide/Projects_Budget_Forecasts_Mapref.md)

