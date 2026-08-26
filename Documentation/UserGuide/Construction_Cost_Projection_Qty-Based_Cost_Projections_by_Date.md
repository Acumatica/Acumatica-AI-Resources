# Project Cost Projections: Cost Projections Based on Quantity and Unit Rate {#_76eb421b-b267-42f1-bd1a-e1e3972ee493 .concept}

In Acumatica ERP Construction Edition, date-sensitive cost projections let you estimate project costs based on the remaining quantity of items in budget lines along with the projected unit rate.

You can create a fully quantity-based cost projection or a mixed one, with some lines calculated by quantity and others by cost.

## Setting Up Calculation by Quantity and Unit Rate { .section}

To forecast a project’s costs by using quantity and unit rate, you must set up this calculation for the project and, if applicable, for the relevant account groups.

For the project, you select the **Calculate Projected Cost by Quantity** check box on the [Projects](PM_30_10_00.md) \(PM301000\) form.

**Tip:** In this context, *by quantity* means that quantity and unit rate are used together for quantity-based calculations.

Also, at the account group level, you select the **Calculate Projected Cost by Quantity** check box on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. You need to do this for each expense account group used in the project's cost budget lines included in the cost projection.

Optionally, you can select the **Calculate Projected Cost by Quantity** check box on the [Project Templates](PM_20_80_00.md) \(PM208000\) form for any project template. This check box will be selected for each project based on this template.

## The Resulting Cost Projection Settings { .section}

For a project configured to calculate projected costs by quantity, you’ll see the following in the cost projection on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form:

-   The **Calculate Projected Cost by Quantity** check box is selected in the Summary area.
-   If account groups are included in the cost projection’s budget level \(that is, the **Account Group** check box is selected\), the **Calculate by Quantity** check box is selected on the **Details** tab for each applicable line.
-   The following columns show values based on quantity and unit rate:
    -   **Calculate by Quantity**
    -   **Projected Quantity to Complete**
    -   **Projected Unit Rate to Complete**
    -   **Projected Quantity at Completion**
    -   **Projected Unit Rate at Completion**
    -   **Revised Budgeted Quantity**
    -   **Revised Budgeted Unit Rate**
    -   **Actual Quantity to Date**
    -   **Actual Unit Rate to Date**
    -   **Open Committed Quantity**
    -   **Open Committed Unit Rate**
    -   **Completed by Quantity \(%\)**
    -   **UOM**

## Creating a Quantity-Based Cost Projection { .section}

To forecast project costs by quantity and unit rate on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form, you need to:

1.  Ensure that the **Calculate Projected Cost by Quantity** check box in the Summary area is selected. If it's cleared, select it.
2.  Verify that the **Calculate by Quantity** check box is selected for each line that should use quantity-based calculation. If needed, select it.

## Quantity-Based Calculations in a Cost Projection { .section}

With the **Calculate Projected Cost by Quantity** check box selected on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form, you can forecast a project's costs to complete and costs at completion based on quantity and unit rate.

For each line with the **Calculate by Quantity** check box selected, the system calculates:

-   Projected costs and the cost completion percentage based on quantity, unit rate, and quantity completion percentage.
-   Projected quantities and the quantity completion percentage.
-   Various unit rates, such as the actual unit rate to date and the projected unit rate at completion. You can compare these rates with the projected unit rate you use for cost calculation.

Because the **Calculate by Quantity** check box is selected in the line, the **Projected Cost to Complete** and **Projected Cost at Completion** columns are read-only. To adjust costs based on the quantity and unit rate, you can change these underlying column values:

-   **Projected Quantity to Complete**
-   **Projected Unit Rate to Complete**
-   **Projected Quantity at Completion**
-   **Completed by Quantity \(%\)**

If you change any of these values, the projected values are recalculated.

If the cost budget level \(for example, account group, cost code, and project task\) of the project and cost projection match, the **Description** column shows the description of the corresponding cost budget line. Also, if a unit of measure is specified in a cost budget line, it appears in the **UOM** column; otherwise, the column is empty.

## Quantity and Unit Rate Buckets in Cost Projections { .section}

On the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form, you can review quantity- and rate-related values in the columns of the following buckets:

-   Budgeted: **Revised Budgeted Quantity** and **Revised Budgeted Unit Rate**
-   Actual: **Actual Quantity to Date** and **Actual Unit Rate to Date**
-   Committed: **Open Committed Quantity** and **Open Committed Amount**
-   Potential: **Pending CO Quantity**, **Pending CO Unit Rate** \(if change orders are used\)

    **Tip:** To include unreleased change order amounts related to the project's cost budget lines, select the **Include Pending CO in Calculations** check box in the Summary area. These amounts are added to the anticipated values.


Additionally, you can view:

-   The anticipated values based on existing commitments—purchase orders, subcontracts, and project drop-ships: The **Anticipated Quantity** and **Anticipated Unit Rate** columns
-   The quantity-related performance percentage: The **Quantity Performance \(%\)**, **Anticipated Quantity Performance \(%\)** columns
-   The variance values: The **Projected Quantity Variance** and **Projected Cost Variance** columns

## Forecasting Quantity-Based Costs Using Cost Projection: Example { .section}

Suppose that your company is a contractor building a hotel. For this project, you track material costs by amount and subcontractor work by hours. The subcontractor's progress is calculated by quantity \(hours worked\).

To use quantity-based forecasting for the project's costs, you’ve selected the **Calculate Projected Cost by Quantity** check box for the *SUBCON* account group on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. Because you track the subcontractor's work hours by quantity, you've selected the **Calculate Projected Cost by Quantity** check box for the project on the [Projects](PM_30_10_00.md) \(PM301000\) form.

The project started in March. The concrete work was partially done, but in early June, you had to hire a new subcontractor to complete it. The labor unit rate has slightly increased:

-   From $160.00 to $162.00 per hour for cast-in-place \(CIP\) slab installation
-   From $86.50 to $87.00 per hour for rough carpentry

You need to estimate how these expenses will affect the project cost budget. On June 10, you've created a cost projection on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. In the **Projected Unit Rate to Complete** column, you've entered the current unit rates for the labor. Now you can review the projected values:

-   The projected cost to complete has increased by $20,000.
-   The projected quantity at completion remains the same because no additional hours are needed.
-   The unit rate at completion for all the hours has slightly increased.
-   The projected cost at completion has increased by $20,000.

The actual unit rate and actual cost to date remain available for comparison.

After reviewing the estimated costs, you can release the cost projection to update your project budget with the most precise cost information.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

