# Scrap Cost Calculation: General Information {#_354eb625-fa9d-4f8a-bc84-cf170b8e887a .concept}

In Acumatica ERP Manufacturing Edition, the system calculates costs of scrapped items depending on the costing method of each production order and the scrap action specified for the operations of the production order. For more information about the configuration of the tracking of scrapped items, see [Configuration of Scrap, Waste, and By-Products in Production: General Information](../ImplementationGuide/config_MFG_Scrap_GeneralInfo.md).

In the following sections, you will read about the ways the system calculates cost of scrap.

## Learning Objectives { .section}

In this chapter, you will learn how the system calculates scrap costs, based on the production and scrap settings.

## Applicable Scenarios { .section}

You analyze how the system calculates scrap costs in any of the following cases:

-   When you need to investigate an increase in scrapped items or other quality issues
-   When the cost of scrapped items differs from the expected cost
-   When an unexpected variance of production costs has been discovered

## Scrap Cost Calculation { .section}

The system calculates the cost of scrapped items depending on the costing method specified for the production order in the **Costing Method** box of the **General** tab on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form as follows:

-   *Actual*: The system uses only the costs that have already been applied to a production order at the moment when a labor or move transaction that contains scrapped items is released. The system uses the following formula to calculate the cost of scrapped items for an operation for which the items have been recorded: `(WIP Total - Scrap Cost - MFG to Inventory) / (Completed Quantity + Scrapped Quantity)`

    In the formula, the scrapped quantity is added to the completed quantity only when the **Include Scrap in Completions** check box is cleared on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form.

-   *Estimated*: The system uses both the actual costs that have already been applied to a production order and the planned costs of the prior operations, such as labor or material overhead that has not been recorded. The system uses the following formula to calculate the cost of scrapped items for an operation for which the items have been recorded: `(WIP Total + Estimated WIP Remaining - Scrap Cost - MFG to Inventory) / (Remaining Quantity)`

    In the formula, *Estimated WIP Remaining* is a cost calculated by the system and *Remaining Quantity* is the quantity of items that still need to be produced considering the scrapped quantity. If the **Include Scrap in Completions** check box is selected on the [Production Preferences](AM_10_20_00.md) form, the remaining quantity is calculated as the quantity to be produced minus the scrapped quantity.

-   *Standard*: The system calculates scrap costs in the same way as it does for the *Estimated* costing method.

## Scrap Cost for Operations with the No Action Scrap Action { .section}

When you record scrapped items for an operation of a production order for which the *No Action* scrap action is specified, the cost of scrapped items is applied to the cost of completed items. The scrap cost is calculated according to the costing method of the production order.

When the production order is completed and the completed items are moved to stock, the system calculates the unit cost of the completed items by dividing the amount of the **WIP Total** box on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form by the completed quantity. This means that the cost of scrapped items increases the unit cost of completed items and is posted to the Inventory Asset GL account.

**Attention:** For operations with the *No Action* scrap action, the cost of scrap is not displayed in the **Scrap** box of the **Actual** section on the **Totals** tab of either the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) or [Production Order Details](AM_20_90_00.md) \(AM209000\) form because the scrap cost is included in the cost of completed items.

## Scrap Cost for Operations with the Write-Off or Quarantine Scrap Action { .section}

When you record scrapped items for an operation of a production order for which the *Write-Off* or *Quarantine* scrap action is specified, the system calculates the cost of scrapped items according to the costing method of the production order and displays this cost in the **Scrap** box of the **Actual** section on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can also view the total scrap cost for the production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

When you complete a production order for which scrap has been recorded, the system posts scrap costs to a GL account specified in the reason code, which a production employee enters in a labor or move transaction when recording the scrapped quantity.

For operations with a scrap action of *Quarantine*, the system also creates the GL transaction that reflects the movement of the scrap cost from the Scrap Expense GL account to the Inventory GL account.

For a production order with the *Standard* costing method that includes operations with a scrap action of *Quarantine*, the system posts the variance between the calculated scrap cost and the standard item cost to the Standard Cost Variance GL account.

For the information about the GL accounts to which scrap costs are posted, see [Scrap Cost Calculation: Generated Transactions](MFG_Scrap_Costs_Transactions.md).

**Parent topic:**[Calculating Costs of Scrapped Items](../UserGuide/MFG_Scrap_Costs_Mapref.md)

