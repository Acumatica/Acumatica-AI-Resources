# Stock Items: General Information {#_085d4310-6f64-49bf-9d0d-2e076b7c8d07 .concept}

Stock items are goods that you either purchase from vendors or manufacture, and then sell to customers. In Acumatica ERP, you create stock items by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form, which is available if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Prepare the system for the creation of stock items
-   Create stock items

## Applicable Scenarios { .section}

You may need to create a stock item in the following cases:

-   You are initially configuring inventory entities and settings.
-   You are going to sell or purchase new goods that have not been defined in the system.

## Item Classes for Stock Items { .section}

Before you start creating stock items in the system, you need to create item classes that group items with similar settings by using the [Item Classes](IN_20_10_00.md) \(IN201000\) form. The system copies the following settings from an item class to a stock item when you create a stock item and select this item class:

-   Item type
-   Valuation method
-   Tax category
-   Posting class
-   Lot/Serial class
-   Default warehouse
-   Units of measure
-   Attributes
-   Replenishment settings

You can change any of these settings for a particular stock item.

For more information about item classes, see [Item Classes for Stock Items: General Information](Item_Classes_GeneralInfo.md).

## Types of Stock Items { .section}

When you are creating a stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you specify an item type, which is used for informational purposes only. The type can be one of the following:

-   *Finished Good*: You use this type for finished goods that you sell to customers.
-   *Component Part*: You use this type for component items from which intermediate assemblies and finished goods are produced during kit assembly processes.
-   *Subassembly*: You use this type for intermediate assemblies from which finished goods are produced during kit assembly processes.

## Transactions with Stock Items { .section}

After you have created stock items in the system and configured their settings, you can start processing transactions. As you process documents, the system generates the proper inventory transactions and the corresponding AP and AR documents.

You cannot manually select stock items in AR invoices. In AP bills, you can select stock items; however, you can release the AP documents only after all lines with stock items have been linked to the corresponding lines of the purchase receipts that you have released.

**Attention:** You cannot delete a stock item in the system if there are any completed transactions with the item, any unreleased documents that include this item, or any nonzero quantity of the item at any warehouse location.

## Tracking of Stock Item Availability { .section}

The system automatically tracks stock items and maintains availability data: how many base units \(that is, units in the base unit of measure selected for the particular stock item\) are on hand, how many are ordered from vendors, and how many are booked to sales orders and shipments. To configure how exactly this availability data is computed you create an availability calculation rule and specify the rule in the settings of an item class. Availability of all items of the same class is calculated by using the same rule. \(That is, you cannot change an availability calculation rule for a particular item.\) For details, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

Stock items are also tracked by their cost. Various valuation methods are available for tracking item costs \(for details, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md)\). Typically, a stock item is an asset until it is sold; its cost then becomes an expense.

Also, the system can automatically monitor when the stock level of the item falls below the defined minimum and automatically calculates the quantities required to replenish the stock, based on the demand for the item and the inventory information you have defined for the stock item. For details, see [Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md).

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

