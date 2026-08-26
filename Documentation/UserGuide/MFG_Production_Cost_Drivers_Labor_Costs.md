# Production Cost Drivers: Labor Costs {#_8170434a-d777-42fd-a624-0d25c4dd2fc7 .concept}

Labor cost is a component of a product cost. In Acumatica ERP Manufacturing Edition, you can track direct labor costs, that is, wages for the employees who produce a product, and indirect labor costs, which can be wages for the employees who are not involved in production directly, such as security staff.

The system considers labor cost when calculating cost of a bill of material, planned cost of a production order, or actual cost of a production order. In this topic, you will find details about labor costs in production.

## Labor Cost Calculation { .section}

A planned labor cost of an operation of a production order is calculated based on the run units and run time of the operation and the standard cost of a work center assigned to the operation. The system uses the following formula for calculating the planned labor cost: `(Work Center Standard Cost)*(((Run Time)/(Run Units)*(Quantity to Produce))+Setup Hours)`.

If labor is backflushed for an operation, the system calculates the labor cost by using the following formula: `(Work Center Standard Cost)*(((Run Time)/(Run Units)*(Completed Quantity))+Setup Hours)`

To calculate the planned labor cost for a production order, the system sums planned labor costs for all operations included in the order.

If labor is recorded by using labor transactions on the [Labor](AM_30_10_00.md) \(AM301000\) form, the system calculates the actual labor cost of a production operation based on the recorded labor time and on either the standard cost of a work center or the employee cost rate, depending on the system settings. The formula is the following: `(Work Center Standard Cost or Employee Cost Rate)*(Labor Hours)`.

You can view planned and actual labor costs for each operation of a production order on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can find total labor costs for a production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## GL Accounts for Labor Costs { .section}

Labor costs are posted to a special GL account. You can configure posting direct and indirect labor costs on the same GL account or on separate GL accounts. For details on GL accounts used in manufacturing, see [System Preparation for Manufacturing Implementation: General Ledger Accounts](../ImplementationGuide/config_MFG_GL_Accounts.md).

When labor costs are applied to a production order during transaction entry, the WIP GL account for the production order is debited and the labor GL account from the labor code is credited.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

