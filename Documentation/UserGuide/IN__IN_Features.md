# Overview of the Inventory Processes {#_80d10441-c628-474e-842b-60133ccb12a8 .concept}

The inventory functionality of Acumatica ERP provides real-time access to stock item availability data configured in accordance with your company's policies. You can maintain a perpetual inventory system while also performing physical inventories as full inventory counts and counts by cycles. In Acumatica ERP, you can track items by either lot or serial numbers, as well as by expiration dates. By using multiple valuation methods, you can accurately maintain item costs and trace cost flows. By using flexible posting settings, you can meet any regulatory requirements.

The full inventory functionality is available only if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Stock and Non-Stock Inventory Items { .section}

Inventory items are the goods, products, services, and component parts recorded to and tracked in your system database. Inventory items can be divided into two major categories, stock and non-stock items, based on how they are handled and accounted for. By using restriction groups, you can control the visibility of particular inventory items to employees. For more information, see the following topics:

-   [Stock Items: General Information](Stock_Items_GeneralInfo.md)
-   [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md)
-   [Inventory Item Security](IN__con_Restriction_Groups_for_Subitems.md)

## Flexible Item Identifiers and Support of Alternative IDs { .section}

By using configurable inventory IDs, you can uniquely identify inventory items. If you use subitems in your system, you can further subdivide items by size, color, material, and other criteria that apply to your business. You can easily gather additional business-specific data about inventory items by configuring custom fields, called *attributes*. Also, on purchase and sales orders, you can use barcodes or vendor or customer alternative IDs to find items or record item information. For more information, see the following topics:

-   [Inventory Subitems](IN__con_Inventory_IDs_and_Subitem_Codes.md)
-   [Stock Items: Attributes](Stock_Items_Attributes.md)
-   [Item Cross-References](IN__con_Item_Cross-References.md)
-   [Barcode Support](PO__con_Barcode_Support.md)

## Global and Item-Specific UOMs { .section}

You can use an unlimited number of units of measure \(UOMs\) in your system. Commonly used units of measure—liters, gallons, pounds, and kilograms—can be defined globally and then used as base units of measure for specific item classes or particular products. You can define conversion rules between UOMs \(such as pounds and kilograms\).

You can specify UOMs and conversion rules at the item class and item level—cases or boxes intended for different products can be of different capacities. Once you have defined conversion rules, the system automatically makes conversions to the correct unit of measure when necessary.

If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for each item, you can define, in addition to the base UOM, the purchase UOM to be used to measure item quantity on purchase orders and receipts and the sales unit to measure the item quantities on sales orders and invoices. Prices for base UOMs and sales UOMs can be set as independent prices, if needed.

For more information, see [Units of Measure: General Information](UOMs_GeneralInfo.md).

## Multiple Warehouses and Locations { .section}

In Acumatica ERP, you can maintain a complex warehouse structure, defining multiple warehouses with multiple locations within each. This functionality is available if you enable the *Multiple Warehouses* and *Multiple Warehouse Locations* features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

By configuring segmentation for location identifiers, you can maintain a hierarchy of rooms, rows, levels, shelves, bins, and other divisions. For each location, you can define which inventory operations can be performed there. You can also specify a primary inventory item or primary item class, and set up validation so that if a preferred item is specified and the validation is turned on, only the preferred item can be received at the location.

By using security functionality, you can restrict the visibility of warehouse information to groups of authorized users. For more information, see the following topics:

-   [Warehouses in Acumatica ERP](InvMgmt_con_Warehouses.md)
-   [Warehouses: General Information](Warehouses_GeneralInfo.md)
-   [Warehouse Locations and Single-Step Transfers: General Information](Warehouse_Locations_GeneralInfo.md)
-   [Warehouse Security](IN__con_Inventory_and_Warehouse_Security.md)

## Flexible Posting Settings { .section}

You can set up the system to automatically update the general ledger on release of inventory documents. Posting classes assigned to inventory items define the rules for selecting particular general ledger accounts and subaccounts to be updated when transactions with the items are performed. Reason codes for inventory transactions provide the offset accounts to be updated, depending on the type of inventory transactions. For more information, see the following topics:

-   [Posting Classes: General Information](Posting_Classes_GeneralInfo.md)
-   [Reason Codes: General Information](Reason_Codes_GeneralInfo.md)

## Inventory Transactions { .section}

In Acumatica ERP, you can create the following types of documents to record inventory transactions: receipt, issue, adjustment, transfer, and kit assembly. Inventory documents facilitate accounting for transactions that result in changed inventory quantities and costs.

For more information about inventory transactions, see [Inventory Transactions](IN__con_Inventory_Transactions.md).

## Availability Calculation { .section}

Acumatica ERP provides real-time visibility into the available inventory levels. The way availability data is calculated can be configured in accordance with the policies set in your company. Availability calculation rules are specified for item classes. You can create multiple rules with different calculation settings and assign them to different item classes. The availability data of items is shown on sales orders, purchase orders, and kit assemblies. For more information, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

## Lot and Serial Number Tracking { .section}

You can track stock items by lot or serial numbers and by expiration dates if the *Lot and Serial Tracking* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Acumatica ERP provides flexible numbering schemes for lot and serial numbers, and the ability to track different products differently. For more information about the use of lot and serial numbers, see the following topics:

-   [Items with Lot and Serial Numbers: General Information](Lot_and_Serial_Numbers_GeneralInfo.md)
-   [Items with Lot and Serial Numbers: Tracking Settings](Lot_and_Serial_Numbers_Class_Settings.md)
-   [Items with Lot and Serial Numbers: Numbering Settings](Lot_and_Serial_Numbers_Autonumbering_Settings.md)

## Kit Assembling { .section}

In Acumatica ERP, some stock or non-stock items may be kits made up of other inventory items. Non-stock kits can include both non-stock and stock components and are not recorded. Stock components of non-stock kits are processed as if they are managed separately not within a kit. Stock kits also can include both stock and non-stock components, but these kits are recorded and are regarded as individual items.

For more information about kits, see [Inventory Item Kits](IN__con_Accounting_for_Kits.md).

## Inventory Valuation { .section}

By using a perpetual inventory system, which Acumatica ERP enables, your company can estimate the total cost of its inventory at any moment, because on-hand quantities and inventory account balances are updated with every transaction, purchase, or sale. Periodic revision of standard costs for items with standard cost valuation methods results in the revaluation of the cost of inventory. Periodic updates of base prices can be performed automatically. For more information on inventory valuation, see the following topics:

-   [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md)
-   [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md)

## Physical Inventories { .section}

By using Acumatica ERP, your company can maintain a perpetual inventory system with the combination of full physical inventory and cycle counting that best fits the company policies and goals. Count data can be imported from Excel files or entered manually by multiple employees working simultaneously on multiple computers. The information from these counts provides company managers with exact values of stock levels. For more information, see the following topics:

-   [Configuration of Physical Inventory](IN__con_Planning_for_Physical_Inventory.md)
-   [Types of Physical Inventory](IN__con_Physical_Inventory_Types.md)
-   [Cycle Counting Configuration](IN__con_Cycle_Counting_Configuration.md)
-   [Inventory Ranking Methods](IN__con_Inventory_Ranking_Methods.md)
-   [Configuration of Physical Inventory Counts by ABC Codes](IN__con_Configuration_of_PI_Counts_by_ABC_Codes.md)
-   [Physical Inventory Counts](IN__con_Physical_Inventory_Counts.md)
-   [Preparation for Physical Count](IN__con_Preparation_for_Physical_Count.md)

## Automated Replenishment { .section}

In Acumatica ERP, you can configure automated replenishment of stock items. Flexible, automated replenishment ensures that for items requiring replenishment, the right quantities will be calculated and listed on automatically generated purchase orders. Moreover, you can use the predicted average daily demand, calculated with the help of demand forecasting methods, to periodically update the values of replenishment parameters \(such as maximum quantity, reorder point, and safety stock\) to more precisely calculate the quantities required for replenishment. For more information, see the following topics:

-   [Configuration of Replenishment: General Information](../ImplementationGuide/config_OrderMgmt_Replenishment_GeneralInfo.md)
-   [Configuration of Replenishment: Classes and Sources of Replenishment](../ImplementationGuide/config_OrderMgmt_Replenishment_Repl_Classes.md)
-   [Configuration of Replenishment: Replenishment Methods](../ImplementationGuide/config_OrderMgmt_Replenishment_Methods.md)
-   [Configuration of Replenishment: Demand Forecast Model](../ImplementationGuide/config_OrderMgmt_Replenishment_Demand_Forecast_Model.md)

## Financial Period Closing in the Inventory module { .section}

When accountants close financial periods in the system, they must close periods in all subledgers that your Acumatica ERP instance uses. Before closing periods in the inventory subledger, you have to review all unprocessed transactions and process or delete them. For more information, see the following topics:

-   [Financial Period Closing in the Inventory Subledger](IN__con_Financial_Period_Closing_Inventory.md)
-   [Reconciliation of the Cost of Inventory with the Account Balance](IN__con_Reconciliation_IN_Account_GL_Account.md)

## Other Features and Options { .section}

Acumatica ERP also provides the following inventory features:

-   The ability to quickly add product images to the inventory item record.
-   Tracking of items by product workgroup or product manager.
-   Item availability data displayed when you create a sales or a purchase order.
-   The ability to print count sheets, tags, and item and location labels, to facilitate the counting process.
-   For perishable items, tracking of expiration dates, with alerts displayed about expired items.
-   The ability to set up the automatic issue of items by expiration date.
-   Segmented identifiers for locations, to make it easier to locate stock. By using segments, you can define further detail levels of locations, such as rooms, shelves, and bins.

