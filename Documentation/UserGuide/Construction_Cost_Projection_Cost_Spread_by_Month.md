# Project Cost Projections: Cost Spreads by Month

Construction projects rarely follow an even spending pattern from month to month. Some have higher costs at the beginning, others in the middle, and some toward the end. This variability makes it harder for project managers and foremen to understand how costs are expected to change over time and how actual costs compare with the forecast as a project progresses.

In Acumatica ERP Construction Edition, you can spread projected costs over the project timeline realistically and get a clear view of expected spending throughout the project lifecycle. On the [Project Cost Spread by Month](PM_30_57_00.md) \(PM305700\) form, you can:

-   Forecast a project’s costs by calendar month
-   Compare the baseline, projected, and actual costs
-   Adjust the projected monthly amounts

## Selecting a Project’s S-Curve Type

An *S-curve* is a distribution pattern, represented visually in a chart, that shows how a project’s costs are expected to accumulate over time. On the [Projects](PM_30_10_00.md) \(PM301000\) form, you select the project’s S-curve type based on your expectations of projected costs over the project's duration:

-   *Front-Loaded*: More at the start
-   *Back-Loaded*: More at the end
-   *Bell*: More in the middle \(typical for construction projects\)
-   *Linear*: Spread evenly

## Releasing a Date-Sensitive Cost Projection

Before you create a monthly cost spread for a project, you need to create and release a date-sensitive cost projection on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. The project’s monthly cost spread will be based on the total projected cost at completion from the latest cost projection.

**Tip:** If no released cost projection is available, the system uses the revised budgeted amount from the project's cost budget on the [Projects](PM_30_10_00.md) \(PM301000\) form.

## Creating a Project’s Monthly Cost Spread

To create a monthly forecast on the [Project Cost Spread by Month](PM_30_57_00.md) \(PM305700\) form, do the following:

1.  In the Summary area, select the project.
2.  Review the automatically inserted settings, including these:
    -   **End Date**: The end date specified for the project. If the project has no end date, enter the estimated completion date manually.
    -   **S-Curve Type**: The S-curve type specified for the project.
    -   **Cost Spread Date**: The date of the cost spread’s creation. By default, the current business date is inserted, but you can select a different date.
    -   **Effective Period**: The period for which the cost spread is generated. By default, the first period with no released cost spread is inserted.

        **Tip:** In cost spreads, a period is a calendar month and year; these periods aren't necessarily the same as the company's financial periods.

    -   **Projected Cost at Completion**: The projected final cost on project completion copied from the latest released date-sensitive cost projection.
3.  Save the cost spread.

You can create a cost spread for a different period by selecting it in the **Effective Period** box. In the confirmation dialog box, click **Change**; then save your changes.

## Reviewing the Monthly Cost Spread

On the **Details** tab of the [Project Cost Spread by Month](PM_30_57_00.md) \(PM305700\) form, you can review how the project costs are expected to change over the project’s duration. The table shows baseline, projected, actual, cost-to-complete, and variance amounts by month.

The table’s rows cover the time frame from the project’s start date through its end date, with each row representing one calendar month. For the periods before the effective period—that is, the period selected in the **Effective Period** box of the Summary area, the table shows actual costs. For the effective period and future periods, the system calculates projected monthly costs based on the project's S-curve type and the remaining amount to be spent.

The table compares what you expected to spend, what you now project, and what's actually been spent—broken down by month and cumulatively

You can review and edit the amounts in these columns:

-   **Projected PTD Cost**: The projected amount for the selected month
-   **Projected Cost**: The cumulative projected amount from the project’s start through the selected month

Keep in mind that:

-   For completed months, the projected values match the actual costs and can’t be edited.
-   For the current month, you can edit the **Projected PTD Cost** value. If you do, the system recalculates and redistributes projected costs for future months.
-   For future months, you can edit projected values. The system keeps the values you enter and doesn't recalculate the remaining months.

## Hotel-Building Example: Adjusting the Monthly Costs

Imagine that your company is contracted to build a hotel and you're the project manager. The project started in February and runs for one year.

At the start of the project, the *Bell* S-curve type was selected on the [Projects](PM_30_10_00.md) \(PM301000\) form, reflecting the company's expectation that construction activity and spending will peak in the middle months. The financial controller creates and releases a date-sensitive cost projection for the project each month.

Now it's July 2, and you need to review and adjust the projected costs for the remaining months. You create the project’s July cost spread on the [Project Cost Spread by Month](PM_30_57_00.md) \(PM305700\) form.

In the table, you notice that the actual costs in May and June are much lower than in April. Some planned work was delayed because key materials weren’t delivered on time—shifting the expected spending to later months.

You increase the **Projected PTD Cost** for July because part of the delayed work is now expected to be completed in July.

Because you've changed the projected amount for the current month, the system recalculates the projected values for future months. You can now update projected costs, review future cost-to-complete amounts and variances, and then remove the cost spread from hold and release it.

To quickly interpret the forecast and spot where projected spending diverges from the baseline, you can open a visual comparison chart showing the baseline, projected, and actual costs by month. To do this, you click **View Chart** on the **Details** tab.

Based on the updated forecast, you plan to monitor the next cost spread closely to see whether July’s actual costs begin to catch up with the revised projected costs.

## Copying an Existing Project Cost Spread

To save time, you can create a new monthly forecast on the [Project Cost Spread by Month](PM_30_57_00.md) \(PM305700\) form that’s based on a previously released cost spread for the project. To do this, click **Copy from Cost Spread** on the table toolbar of the **Details** tab.

In the dialog box that opens, select the cost spread to be copied. The projected monthly amounts are copied from the selected project cost spread for the applicable periods to the table; current actual costs are used for earlier periods.

## Additional Setup Capabilities

-   Select the S-curve type in the **S-Curve Type** box on the [Project Templates](PM_20_80_00.md) \(PM208000\) form for any project template. When you create a project based on that template, this S-curve type will be inserted by default.
-   Configure approvals by creating an approval map for monthly project cost spreads on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form and selecting it on the **Approvals** tab of the [Projects Preferences](PM_10_10_00.md) form. This helps ensure that a responsible person reviews and approves each cost spread before it’s released. You can also create an email notification about project cost spreads pending approval. For details, see [Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md).
-   Modify the predefined numbering sequence for cost spreads, which is specified by default in the **Cost Spread Numbering Sequence** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If you use a specific numbering format for project-related documents, you can define a new sequence or change the predefined sequence's settings on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

