# Production Cost Drivers: Overhead Costs {#_1772c757-5c31-4d09-937c-835125526c08 .concept}

In Acumatica ERP Manufacturing Edition, you can apply additional costs to a cost of a produced items, so called *overhead*. Overhead costs can be fixed or variable. You can use fixed overhead costs if you want the system to apply the same amount to each production order and does not depend on the production volume. You can use variable overhead costs when you want the system to apply costs based on production volume, such as the completed quantity or labor cost of a particular production order.

You can view planned and actual overhead costs for each operation of a production order on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can find total overhead costs for a production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

The system considers overhead costs when calculating cost of a bill of material, planned cost of a production order, or actual cost of a production order. In this topic, you will find details about overhead costs in production.

## Fixed Overhead Costs { .section}

The system applies fixed overhead costs to an operation of production order in full when a positive quantity of completed items is recorded for the operation. Total fixed overhead cost of a production order is calculated as a sum of fixed overhead costs for each operation of the order.

Actual fixed overhead cost of a production order may differ from the planned fixed overhead cost only if no quantity of completed items has been recorded for an operation with fixed overhead costs.

## Variable Overhead Costs { .section}

The system calculates the variable overhead cost for each production operation depending on the overhead type specified on the [Overhead](AM_20_25_00.md) \(AM202500\) form. For each overhead cost, the system uses the cost rate and the factor specified for the operation on the **Overhead** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. In the following table, you can find formulas the system uses for calculating planned and actual costs of variable overhead for production operations.

|Overhead Type|Planned Cost|Actual Cost|
|-------------|------------|-----------|
|*Variable by Labor Hours*|`(Planned Labor Hours) * (Cost Rate) * (Factor)`|`(Actual Labor Hours) * (Cost Rate) * (Factor)`|
|*Variable by Labor Cost*|`(Planned Labor Cost) * (Cost Rate) * (Factor)`|`(Actual Labor Cost) * (Cost Rate) * (Factor)`|
|*Variable by Material Cost*|`(Planned Material Cost) * (Cost Rate) * (Factor)`|`(Actual Material Cost) * (Cost Rate) * (Factor)`|
|*Variable by Machine Hours*|`(Planned Machine Hours) * (Cost Rate) * (Factor)`|`(Actual Machine Hours) * (Cost Rate) * (Factor)`|
|*Variable by Quantity Completed*|`(Quantity to Produce) * (Cost Rate) * (Factor)`|`(Completed Quantity) * (Cost Rate) * (Factor)`**Attention:** The completed quantity in this formula does not include the scrapped quantity.

|
|*Variable by Total Quantity*|`(Quantity to Produce) * (Cost Rate) * (Factor)`|`(Total Quantity) * (Cost Rate) * (Factor)`|

A total quantity of items for an operation is calculated as follows:

-   If no scrap is recorded for an operation, the total quantity equals the quantity to produce
-   If scrap is recorded for the operation and the **Include Scrap in Completions** check box is cleared on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, the total quantity is the sum of the quantity to produce and the scrapped quantity
-   If scrap is recorded for the operation and the **Include Scrap in Completions** check box is selected on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, the total quantity is the quantity to produce minus the scrapped quantity

To calculate the variable overhead cost of a production order, the system sums the variable overhead costs for each operation included in the order.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

