# Construction Reports: Project Variance {#_92fe6043-5342-4e0d-a89e-dcbd4282cd09 .concept}

The [Project Variance](PM_65_10_20.md) \(PM651020\) generic inquiry form shows you where and why the project is over or under budget, schedule, or scope. Also, you can compare budgeted or scheduled values with actual values—a key step in keeping projects on track.

**Important:** Before you start using this generic inquiry form, you must do the following on the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form:

1.  Select the **Recalculate Project Budget History** check box.
2.  Recalculate project balances.

This ensures that the system’s calculations include data from project-related documents that have been processed.

## Review of a Project’s Revenue and Expenses { .section}

On the [Project Variance](PM_65_10_20.md) \(PM651020\) generic inquiry form, you can see how quantity and unit rates drive project cost and revenue variances. It shows this information as of the date you specify—even before project tasks are complete. The system uses a factor analysis method to calculate the variance.

To get started, you select the date and the project you want to review. Each row represents a cost or revenue budget line of the project, with amounts shown in the project currency. The leftmost columns of the table display the tasks’ basic information—such as status, completion percentage, start and end dates, inventory item, and cost code.

Column colors make revenue and expenses easy to spot:

-   Blue: Revenue
-   Green: Expenses
-   Yellow: Labor expenses
-   Orange: Material expenses
-   Red: Subcontract expenses
-   Purple: Equipment expenses

You can review separate column sets for account groups—labor, material, subcontract, and equipment—used to record expenses. This lets you track project costs more precisely. Each expense type has a similar set of columns.

By comparing values in the following columns, you can easily identify overspending and underbilling:

-   **Task Completion \(%\)**
-   **Completed Contract \(%\)**
-   **Total Completed Cost Quantity \(%\)**

You can also view project total amounts in the table footer.

**Tip:** For a different perspective, you can create a pivot view of the table to group the data by task, cost code, and item. For details, see [Pivot Tables: Creation of a Pivot Table](Pivot_Tables_Pivot_As_FilterTab.md).

## Calculation of the Project Variance { .section}

The system calculates values for all reporting groups in a consistent way. For example, let’s look at the formulas for the overall project expenses.

Here's the formula the system uses to calculate the cost completion percentage by quantity.

```
Total Completed Cost Quantity (%) = Actual Total Cost (Amount to Date) / Revised Budgeted Cost (Quantity)
```

The system uses the following formula to calculate the variance amount. A positive value means savings, and a negative value means overspending.

```
Cost Variance Amount = Actual Total Cost (Amount to Date) - Revised Budgeted Cost (Amount)
```

The system splits cost variance into parts so that you can see its causes in the following columns:

-   **Cost Variance Amount by Quantity**: How much of the variance comes from the difference between the budgeted quantity and the actual quantity
-   **Cost Variance Amount by Unit Rate**: How much of the variance comes from the difference between the budgeted unit rate and the actual unit rate

Here, too, a positive value means savings, and a negative value means overspending.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

