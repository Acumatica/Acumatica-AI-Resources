# Cost Calculation for Produced Items: Estimated Costing Method {#_5ee062c2-5708-4b01-aafc-6945244d84d2 .concept}

You specify a production order's costing method on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The *Estimated* costing method can be most beneficial for calculating production costs when all of the following describe the manufacturing business process of your organization:

-   Completed items often are moved to stock before all production transactions are released for the production order.
-   Completed item units of the production order often are moved to stock in parts \(rather than the full quantity of items being moved at once\).
-   Scrapped items are quarantined.

In this topic, you will read information about how the system calculates production costs when the *Estimated* costing method is specified.

## Cost Calculation with the Estimated Costing Method { .section}

You can use the *Estimated* costing method to calculate costs for produced items with the *Average*, *FIFO*, or *Specific* valuation method, which is specified on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For information about valuation methods, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

The system calculates the unit cost of items being moved to stock as the sum of the unit costs for each operation included in a production order.

The unit cost of a produced item for each operation by using the following formula: `(WIP Balance + Estimated WIP Remaining) / Remaining Quantity`.

The following parts make up the formula:

-   *WIP Balance*: The current total cost of a production order minus the cost of items moved to inventory minus the cost of scrapped items. This cost is displayed in the **WIP Balance** box on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form.
-   *Estimated WIP Remaining*: The sum of the estimated remaining costs that have not been applied to the production order yet. The system calculates the estimated remaining cost for each cost component as the planned cost minus actual cost.
-   *Remaining Quantity*: The item quantity that still needs to be produced for the operation. You can view the remaining quantity in the **Qty Remaining** column of the Operations table on the [Production Order Details](AM_20_90_00.md) form.

According to the formula, the system calculates the unit cost of the completed item considering both the actual costs that have been applied to the production order at the moment of moving the items to stock and the remaining costs that potentially can be applied to the production order. Thus, the timing of production transactions is less critical for the *Estimated* costing method than it is for the *Actual* costing method.

**Parent topic:**[Calculating the Costs of Produced Items](../UserGuide/MFG_Production_Cost_Calculation_Mapref.md)

