# Cost Calculation for Produced Items: Actual Costing Method {#_4fdb445b-8aa0-461f-9039-85fad92d68c3 .concept}

You specify a production order's costing method on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The *Actual* costing method can be most beneficial for calculating production costs when both of the following describe the manufacturing business process of your organization:

-   The full quantity of completed items is moved to inventory when the production is completed, and all costs are applied to the production order.
-   Scrap is not recorded, or the *No Action* or *Write-Off* scrap action is used.

In this topic, you will read information about how the system calculates production costs when the *Actual* costing method is specified.

## Cost Calculation with the Actual Costing Method { .section}

You can use the *Actual* costing method to calculate costs for produced items with the *Average*, *FIFO*, or *Specific* valuation method, which is specified on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For information about valuation methods, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

The unit cost of a produced item in a receipt is calculated by using the following formula: `WIP Balance / (Completed Quantity + Scrapped Quantity)`.

The following parts make up the formula:

-   *WIP Balance*: The current total cost of a production order minus the cost of items moved to inventory minus the cost of scrapped items. This cost is displayed in the **WIP Balance** box on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.
-   *Completed Quantity*: The quantity of produced items that have been moved to stock. This quantity is displayed in the **Qty. Complete** box on the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) form.
-   *Scrapped Quantity*: The quantity of scrapped items recorded for any operation of the production order. This quantity is displayed in the **Qty. Scrapped** box of the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) form. The scrapped quantity is added to the completed quantity only when the **Include Scrap in Completions** check box is cleared on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form.

According to the formula, the system includes in the unit cost of completed items only the costs that have been recorded for the production order when the completed items are being moved to stock[Production Order Maintenance](AM_20_15_00.md)that is, when an inventory receipt with the items is created on the [Receipts](IN_30_10_00.md) \(IN301000\) form. Therefore, it is very important that your organization has a well-established cost recording process; any over- or under-recording could cause unwanted inventory valuation.

For example, suppose that a production order to produce 10 units of an item has a WIP balance of $100 with 0 completed units. A production employee releases a move transaction to record the movement of 5 units to stock. The total cost for the transaction is $100 with a calculated unit cost of $20 each \($100 / 5\). The WIP balance is changed to $0.

Further suppose that after the employee released the move transaction, a material transaction with the cost of $70 has been released for the production order, so the WIP balance is changed to $70. Then the production employee creates a move transaction for completion of the remaining 5 units. The system calculates the unit cost as $14 \($70 / 5\). For each move transaction, the system creates an inventory receipt, with a unit cost of $20 in the first receipt and a unit cost of $14 in the second receipt. When the second move transaction is released, the production order is assigned the *Completed* status, and the system changes the WIP balance to $0.

In this example, you can see that the unit cost of produced items differs in the two receipts. Also, the unit cost in the first receipt includes only the costs that were added to the production order before the receipt was released.

**Parent topic:**[Calculating the Costs of Produced Items](../UserGuide/MFG_Production_Cost_Calculation_Mapref.md)

