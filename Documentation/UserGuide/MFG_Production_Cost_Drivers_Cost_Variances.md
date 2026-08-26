# Production Cost Drivers: Cost Variances for Overissued Inventory {#_73ce88e8-bc07-4106-9585-f5acf4c9a176 .concept}

Cost variances can occur in production when materials are issued from inventory with insufficient on-hand quantity, causing the stock balance to go negative. When issuing the material, the system uses the item's current cost, which is determined by the item's valuation method. However, if new stock later arrives at a different cost, the cost used for the material issue will no longer match the actual receipt cost. This difference creates a cost variance.

## Prerequisites { .section}

Cost variances due to negative inventory can occur only if the **Allow Negative Quantity** check box is selected on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the item class of the issued stock item.

These cost variances are posted to a dedicated **WIP Variance Account**, while true production costs are posted to the regular **WIP Account** specified on the **References** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. These accounts control how production costs and variances are recorded in the general ledger.

## Posting Production Costs and Cost Variances { .section}

The system uses the **WIP Variance Account** to post the cost variance portion of journal transactions that offset negative inventory created by receipts, issues, adjustments, transfers, or kit assemblies. The **WIP Account** is used to post the work-in-process balance of a production order, excluding cost variances caused by negative inventory.

Using separate accounts for true production costs and cost variances results in:

-   Consistent reflection of production costs across reports
-   Easier reconciliation between the WIP report and the general ledger
-   More accurate and reliable financial data

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

