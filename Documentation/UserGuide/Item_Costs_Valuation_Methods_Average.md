# Item Costs and Valuation Methods: Average Method {#_be6e1fb2-ffc9-4f9f-a6fc-ebe0889b7f78 .concept}

With the *Average* valuation method, the system calculates the average cost of the stock item, rather than tracking the cost of each unit of the item. The main benefit of the average method is its simplicity, particularly if the company deals with a large quantity of the item. Businesses that purchase and sell raw materials often assign the average method to these materials because their prices fluctuate slightly over time. Thus, averaging the costs may help with long-term planning and budget-making.

You assign this method to a stock item by specifying *Average* in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. If the *Average* valuation method is assigned to a stock item, its unit cost will be calculated as the average weighted cost of all units of the item at a warehouse. This cost is calculated as the total cost of all quantities of the item at the warehouse divided by the total quantity of this item at this warehouse.

## Average Cost in Multiple Warehouses { .section}

If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and multiple warehouses have been created in the system, the average unit cost of an item can differ at each warehouse. You can view a stock item's average cost as follows:

-   In the **Estimated Unit Cost** column on the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form, you can see the average unit cost in a particular warehouse.
-   In the **Average Cost** box on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you can view the average unit cost of the item across all the warehouses. Suppose that during a physical inventory count at a warehouse a user found a stock item and created an adjustment to add the item to inventory. If the stock item does not yet have any average cost at the warehouse, the system uses this unit cost in the adjustment.
-   In the **Average Cost** box on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, the average unit cost of the item in the selected warehouse is shown.

## Cost Tracking for Items with the Average Method { .section}

When a stock item is received in a warehouse, its quantity and unit cost are recorded in a cost layer, which is identified by the warehouse. The system updates the average cost of the stock item in the cost layer every time any of the following documents is released:

-   Inventory receipt
-   Inventory issue
-   Adjustment
-   Transfer
-   Kit assembly or kit disassembly

For details, see [Item Costs and Valuation Methods: Transactions That Record Costs in Layers](Item_Costs_Valuation_Methods_Cost_Layer_Documents.md).

## Example of Cost Calculation for the Average Method { .section}

Suppose that a stock item was purchased as follows:

-   Purchase 1: 100 units at $2.00 each
-   Purchase 2: 100 units at $2.10 each
-   Purchase 3: 100 units at $1.90 each
-   Purchase 4: 100 units at $2.20 each

The total stock cost is $820, and the average cost is $2.05. If you sell 250 items—that is, you issue the item from the warehouse—the unit cost is $2.05. The extended cost recorded to the COGS account is $512.50 = $2.05 \* 250.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

