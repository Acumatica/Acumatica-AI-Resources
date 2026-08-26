# Cost Calculation for Produced Items: General Information {#_867222a3-f774-4253-a0d5-4aa3c6701365 .concept}

Each manufacturing organization estimates the costs of the items it produces to calculate production expenses and set appropriate prices for the produced items. This information may also help production accountants to analyze whether production costs can be optimized. Each organization uses its preferred approach to calculate the costs of produced items, and this calculation is based on the costing method.

For more information about the components that may affect the production cost \(also called *production cost drivers*\), see [Production Cost Drivers: General Information](MFG_Production_Cost_Drivers_GeneralInfo.md).

The system calculates the cost of a produced item based on the valuation method specified for the item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the costing method specified for the production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. You can read more about item costs and valuation methods in [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

In this topic, you will find information about how the system calculates production costs in Acumatica ERP Manufacturing Edition.

## Learning Objectives { .section}

In this topic, you will learn the following:

-   Which costing methods Acumatica ERP Manufacturing Edition supports
-   How the system calculates production costs by using various costing methods
-   Where to find the costs that are applied to production orders
-   When the system applies costs to production orders
-   Which general ledger accounts are used for posting production costs

## Applicable Scenarios { .section}

You analyze how the system calculates production costs in any of the following cases:

-   When you would like to optimize production costs by looking for labor inefficiencies, work center performance losses, or machine performance losses
-   When the unit cost of a produced item differs from the expected cost
-   When an unexpected variance of production costs has been discovered
-   When you need to investigate an increase in scrapped items or other quality issues

## Costing Methods { .section}

The costing method of a production order determines the way the system calculates the costs of produced items in an inventory receipt that records the movement of the items to inventory. Acumatica ERP Manufacturing Edition supports the following methods of calculating production costs:

-   *Actual*: The system calculates the unit cost of produced items by dividing all actual costs posted to the Work in Process GL account by the units being received. For details, see [Cost Calculation for Produced Items: Actual Costing Method](MFG_Production_Cost_Calculation_Actual_Method.md).

    **Important:** All receipts credit the full WIP balance over the amount received. As a result, partial receipts against a production order where all costs are applied can cause large inventory valuation fluctuations. Therefore, we recommended that you move the full quantity to inventory after all costs are applied.

-   *Estimated*: The system calculates the unit cost of produced items by using a combination of the actual WIP balance of a production order and the estimated remaining WIP balance divided by the remaining quantity of items to be produced. We recommend this costing method for manufacturers who perform partial production receipts. Only planned costs per unit are applied. This reduces the likelihood of large inventory valuation fluctuations. For more information, see [Cost Calculation for Produced Items: Estimated Costing Method](MFG_Production_Cost_Calculation_Estimated_Method.md).
-   *Standard*: The system uses the standard cost specified for the item on either the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form or the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For details, see the *Standard Costing Method* section below.

You specify the default costing method for new production orders in the settings of a production order type by using the [Production Order Types](AM_20_11_00.md) \(AM201100\) form. For details, see [Production Order Types: General Information](../ImplementationGuide/config_MFG_Production_Order_Types_GeneralInfo.md). You can change the default method when you are creating a production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## Standard Costing Method { .section}

The system uses the *Standard* costing method to calculate costs for produced items with the *Standard* valuation method, which is specified on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For information about valuation methods, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

The unit cost at time when completed items are received in stock is always the same and is equal to the cost specified in the **Current Cost** box of the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) or [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, depending on whether the item has a warehouse-specific cost. The costs that are applied to a production order do not affect the item's unit cost.

We recommend that you use this costing method when you have a stable and repeatable production process where cost fluctuations are not expected or when an approximation of costs is sufficient information for the business to operate.

## Cost Application { .section}

When transactions for a production order are released and materials and labor are not backflushed, costs are applied to the production order and displayed on the **Totals** tab \(**Actual** section\) of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) and [Production Order Details](AM_20_90_00.md) \(AM209000\) forms as follows:

-   When materials are issued for a production order, material costs are applied to the order and displayed in the **Material** box. Also, the system applies variable overhead costs by material cost.
-   When labor hours are specified in a labor transaction, the labor costs are applied to the order and displayed in the **Labor** box. Also, the system applies variable overhead costs by labor hours and by labor cost.
-   When a quantity of completed items is specified in a labor or move transaction for an operation that is not the last operation in the routing, the system applies costs as follows:
    -   If the operation for which items have been completed, is performed by using machines, machine costs are applied. The sum of these costs is displayed in the **Machine** box.
    -   The full amount of fixed overhead costs is applied if the completed items are recorded for the operation for the first time. The sum of these costs is displayed in the **Fixed Overhead** box.
    -   Variable overhead costs by quantity completed and by total quantity. The sum of these costs is displayed in the **Variable Overhead** box.
    -   Cost of tools if tools are specified for the operation. This cost is displayed in the **Tool** box.

When material or labor costs are backflushed for an operation of a production order, the system applies these costs when a quantity of completed items is recorded for this operation or for any of the operations that follow it. Backflushed costs of materials or labor equal the planned material or labor costs.

For more information about the planned and actual costs of a production order, see [Production Cost Drivers: Planned and Actual Costs](MFG_Production_Cost_Drivers_Planned_and_Actual_Costs.md).

## WIP Balance Correction {#_1e7957ab-90e8-4ace-903a-8eb9b4ff45d6 .section}

Before you close a production order for a finished item, we strongly recommend that you review the balance of the WIP account in the **WIP Balance** box on the **Totals** tab \(**Variance** section\) of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

A completed production order with a nonzero WIP account balance could be caused by any of the following:

-   The materials required to produce the items have been issued in a quantity that does not equal the planned quantity calculated based on the bill of material assigned to the item.
-   The number of labor hours reported for the production order differ from the planned number of labor hours.

If you correct the materials or labor recorded after you create the final inventory receipt for moving the finished goods to a warehouse, the system does not recalculate the receipt cost. An incorrect receipt cost affects inventory valuation and could affect the cost of sales if the item is a finished good.

For a production order with the *Actual* costing method, you can correct the variance as follows:

-   You reduce the completed quantity of the item by creating and releasing a move transaction with a negative quantity on the [Move](AM_30_20_00.md) \(AM302000\) form for the last operation in routing. The system changes the status of the production order to *In Process*.
-   If you want to correct the material cost, you create and release a material transaction with the corrected material quantity by using the [Materials](AM_30_00_00.md) \(AM300000\) form. To reduce the material quantity, you specify a negative value in the **Quantity** column.
-   If you want to correct the labor cost, you create and release a labor transaction with the corrected time by using the [Labor](AM_30_10_00.md) \(AM301000\) form. To reduce the reported time, you specify a negative value in the **Labor Time** column.
-   You record the remaining quantity of the finished item for the last operation by creating and releasing a move transaction on the [Move](AM_30_20_00.md) form. The system changes the status of the production order back to *Completed*.

For production orders with the *Estimated* costing method, if you have not issued the materials yet and the planned unit cost is not specified for the item, then you perform any of the recommendations above that are appropriate to your situation to correct the balance of the WIP account.

## Posting of Production Costs in the General Ledger { .section}

Each cost component can be posted to a separate GL account. For more information about the GL accounts used in production, see [System Preparation for Manufacturing Implementation: General Ledger Accounts](../ImplementationGuide/config_MFG_GL_Accounts.md).

For posting costs, the system uses the GL accounts specified in the settings of a particular cost driver. For details on the settings of production cost drivers, see [Configuring Production Cost Drivers: General Information](../ImplementationGuide/config_MFG_Production_Cost_Drivers_GeneralInfo.md).

You can find detailed information on how the system posts costs when production employees release transactions in [Production Processing: Generated Transactions](MFG_Production_Order_Processing_Transactions.md).

**Parent topic:**[Calculating the Costs of Produced Items](../UserGuide/MFG_Production_Cost_Calculation_Mapref.md)

