# Item Costs and Valuation Methods: General Information {#_79edcbf8-e18b-4817-875f-6cbfd7a32384 .concept}

Acumatica ERP automatically tracks the costs of stock items over time by using the valuation methods assigned to each item. The stock item's cost is used in valuing inventory, which is many companies’ most valuable asset. For manufacturing companies, the inventory cost reflects the direct cost to produce the product, such as raw materials and labor. For distributors, the inventory cost is the price paid for the product.

The item's cost is used to calculate the value of the inventory posted to the Inventory control account. The cost of goods sold \(COGS\) posting uses the item's cost for sales and inventory transactions.

Costs are tracked for items in base units of measure \(UOMs\)—that is, the UOMs in which items are stored at warehouses or moved between warehouses or warehouse locations. The valuation method defines how costs will be matched to revenues.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with valuation methods that define the costs of stock items
-   Process sales documents with stock items that are assigned different valuation methods
-   Review the calculated costs of stock items

## Applicable Scenario { .section}

You may need to assign a particular valuation method to a stock item to make the system track the item's cost based on how your company currently sells and purchases the item.

## Valuation Methods { .section}

You can assign valuation methods and track stock item costs if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In Acumatica ERP, you can assign one of the following valuation methods to a stock item:

-   *Average*: For details, see [Item Costs and Valuation Methods: Average Method](Item_Costs_Valuation_Methods_Average.md).
-   *FIFO* \(first in, first out\): For details, see [Item Costs and Valuation Methods: FIFO Method](Item_Costs_Valuation_Methods_FIFO.md).
-   *Specific*: For details, see [Item Costs and Valuation Methods: Specific Method](Item_Costs_Valuation_Methods_Specific.md).
-   *Standard*: For details, see [Item Costs and Valuation Methods: Standard Method](Item_Costs_Valuation_Methods_Standard.md).

You specify the **Valuation Method** on the **General** tab of the following forms:

-   [Item Classes](IN_20_10_00.md) \(IN201000\): You assign a valuation method to a stock item class, which will be inserted by default for newly created stock items of the class.
-   [Template Items](IN_20_30_00.md) \(IN203000\): You assign a valuation method to a template item, which will be inserted by default for newly created matrix items that are stock items or non-stock items.
-   [Stock Items](IN_20_25_00.md) \(IN202500\): You assign a valuation method to a particular stock item if you want to override the valuation method of its item class.

You can change an item's valuation method only if the on-hand quantity of the item in stock is 0.

**Tip:** The following settings on the [Companies](CS_10_15_00.md) \(CS101500\) form determine the decimal precisions that the system uses:

-   **Quantity Decimal Places**: For quantities
-   **Price/Cost Decimal Places**: For prices and costs

## Tracking of Costs at Warehouses and Locations {#_07036e51-9d23-4c59-bcc5-e13acf977b46 .section}

The calculation of costs for stock items is performed on a per-warehouse basis. When an item is received in a warehouse, its quantity and cost are recorded in a cost layer. In Acumatica ERP, a *cost layer* is a record of an item's quantity and cost that is calculated based on the valuation method assigned to this item.

Some companies use multiple locations in warehouses and have the *Multiple Warehouse Locations* feature enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. In this case, to calculate an item's cost in a particular warehouse, the system includes the costs of all quantities of the item in all locations.

If you need to track stock item costs only at a particular warehouse location, such as a location where items are stored for a specific project, you can track item cost for each location separately. To do this, you select the **Cost Separately** check box on the **Locations** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form for the needed location. With this check box selected, the system creates a separate cost layer for a stock item at this location on release of an inventory document. If a quantity of an item is issued from this location, the extended cost will be calculated based on the location-specific cost layers. The item’s quantities and cost in this location are not included in the item's cost in this warehouse.

**Tip:** You can select the **Cost Separately** check box for a location only if the on-hand quantity of stock at this location is 0.

For each warehouse, on the [Warehouses](IN_20_40_00.md) form, you can select either the *Average* or *Last* option in the **FIFO Default Cost** and **Average Default Cost** boxes. If an item is assigned the *FIFO* or *Average* valuation method, respectively, the selected option determines whether the system inserts the average or last unit cost in the **Unit Cost** column in the following places:

-   On the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for each line with the *Issue* or *Receipt* operation as follows:
    -   In a sales order line with the *Issue* operation, the system uses the populated **Unit Cost** value for the calculation of the estimated margin amount. When an item is shipped and the inventory issue is released, this item will be issued from a warehouse with the unit cost calculated based on its valuation method.
    -   In a sales order line with the *Receipt* operation, the **Unit Cost** value is populated based on the selected option if no original unit cost has been found in the system. This unit cost will be posted to the Inventory account when the item has been received back in stock. \(If the *Average* option is selected, no original unit cost has been found, and the item's on-hand quantity is 0, then the system will use the item's **Last Cost** value on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.\)

        **Tip:** If the original unit cost has been found in an issue related to the original invoice \(if any\) specified in the **Invoice Nbr.** column, the system will use the original unit cost by default.

-   On the **Physical Inventory Details** tab of the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form. The populated **Unit Cost** value for stock items with a positive **Total Variance Qty.** column value will be posted to the Inventory account on the release of an inventory adjustment.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

