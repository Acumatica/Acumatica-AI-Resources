# Warehouses: General Information {#_1845659c-e6d2-447d-ae05-c2901359aef6 .concept}

When your organization has multiple buildings, storage rooms, or other facilities for storing inventory items, you can create multiple warehouses in Acumatica ERP to process and track inventory appropriately for each warehouse.

With the *Multiple Warehouses* feature enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can create any number of warehouses, even virtual warehouses, in the way that best fits your business, with the needed settings for each warehouse. In the following sections, you will read about the management of multiple warehouses in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Prepare the system for the creation of warehouses
-   Create warehouses
-   Specify warehouse-specific settings for stock items and prices
-   Use a warehouse as a source of GL accounts for posting classes

## Applicable Scenarios { .section}

You may need to create warehouses in either of the following cases:

-   You initially configure inventory with multiple warehouses in Acumatica ERP.
-   Your organization adds a new physical or virtual warehouse and needs to define the warehouse in Acumatica ERP.

## Multiple Warehouses in Acumatica ERP { .section}

In Acumatica ERP, you can implement any of the following typical use cases with multiple warehouses:

-   In each warehouse, you store a specific set of goods, which is not stored in other warehouses. Each warehouse receives purchased goods directly from vendors. You do not need to transfer goods between warehouses.

    As an example of this use case, suppose that your organization sells fruits and juicers. You may have a separate warehouse with refrigeration facilities for fruits and a separate warehouse with no special storage conditions for juicers.

-   You store goods of the same type \(as well as goods of different types\) in multiple warehouses, which can receive purchased goods directly from vendors. Also, you can perform transfers between warehouses, relocating stock items as needed.

    As an example of this use case, suppose that your organization sells fruits to wholesale and retail customers. You have a wholesale center with a large warehouse, and multiple small shops with local warehouses. The shops can either transfer fruits from the wholesale warehouse or buy fruits directly from local vendors.

-   You use one warehouse as a distribution center and transfer its goods to other warehouses. Only the distribution center directly receives goods from vendors.

    As an example of this use case, suppose that your organization has a wide network of supermarkets. You have a distribution center with a large warehouse and each supermarket has its own warehouse. You purchase items only in the distribution center and then transfer these items to supermarkets.


You can implement any other use cases where multiple warehouses are involved.

## Functionality Related to Multiple Warehouses { .section}

When you enable the *Multiple Warehouses* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following functionality becomes available in the system:

-   Warehouse-specific settings for stock items: If the details of stocking a particular inventory item vary in different warehouses, you can specify separate details for the item at each warehouse \(that is, specify details for the item–warehouse pair\) on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form. You can view these warehouse-specific settings of a selected item on the **Warehouses** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For more information, see the [Warehouse-Specific Settings for Stock Items](#_791cba04-cbe4-4c52-9276-367062c23229) section of this topic.
-   The warehouse as a source for general ledger accounts: If you store inventory items of the same category in multiple warehouses and each warehouse has specific general ledger accounts specified on the [Warehouses](IN_20_40_00.md) \(IN204000\) form, you can use the warehouse as a source of default GL accounts for any inventory item. For details, see the [Warehouse as a Source of GL Accounts for Posting Classes](#_9b3bd03a-75f0-4f61-8bd4-94c7821a26a3) section of this topic.
-   The *TR* order type for sales with transfers: If you use multiple warehouses, you can implement a sales process that involves transferring items between warehouses. To reflect this process in documents, you need to activate the *TR* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   Warehouse-specific vendor and sales prices: You can define warehouse-specific sales prices and vendor prices for items. For more information, see the [Warehouse-Specific Prices](#_96175577-31ab-4484-93a3-73c33d548a8c) section of this topic.
-   Inventory transfers: If your organization has multiple warehouses, you can transfer items between warehouses. To track these movements of items, you can use inventory transfers, which you create on the [Transfers](IN_30_40_00.md) \(IN304000\) form. For details, see [Two-Step Transfers: General Information](InvMgmt_2Step_Transfers_GeneralInfo.md).

## Warehouse-Specific Settings for Stock Items {#_791cba04-cbe4-4c52-9276-367062c23229 .section}

For each stock item at a particular warehouse \(that is, for each item–warehouse pair\), you can specify the following settings on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form:

-   The default locations for issuing and receiving the item at this warehouse \(if you use multiple locations\)
-   The inventory account to be used for the stock item at this warehouse
-   The ABC code and movement class assigned to the item when it is at this warehouse
-   The replenishment settings for the item when it is stocked in this warehouse

The system also creates an entity for an item–warehouse pair on the [Item Warehouse Details](IN_20_45_00.md) form in the following cases:

-   When any user specifies or changes the default warehouse for an inventory item on the **Warehouses** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   When any user releases the first inventory receipt of a particular item coming to the new warehouse \(or another transaction that brings an item to a warehouse for the first time, such as the receiving part of an inventory transfer\).

## Warehouse as a Source of GL Accounts for Posting Classes {#_9b3bd03a-75f0-4f61-8bd4-94c7821a26a3 .section}

A posting class, which is specified for each stock item, is a group of settings that provide the default values for the purchase, sales, and inventory transactions with the item and define how these transactions will be posted to the general ledger. One of these default values is the source of general ledger accounts to be used for the item, and you can use a warehouse as a source of default GL accounts for an inventory item. You define the source of accounts that the system should use in a posting class by using the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.

For example, suppose that you have a separate inventory account for each warehouse. In this case, you can specify the needed inventory account in the warehouse settings on the [Warehouses](IN_20_40_00.md) \(IN204000\) form and specify a warehouse as the source of the inventory account in the posting class on the [Posting Classes](IN_20_60_00.md) form.

For more information about posting classes, see [Posting Classes: General Information](Posting_Classes_GeneralInfo.md).

## Warehouse-Specific Prices {#_96175577-31ab-4484-93a3-73c33d548a8c .section}

In Acumatica ERP, you can define vendor and sales prices of an item and select a warehouse for these prices. If no warehouse is specified for a price on the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) or [Sales Prices](AR_20_20_00.md) \(AR202000\) forms, this price is applied to all warehouses that are defined in the system. A price that has a warehouse specified has a higher priority than a price of the same type with no warehouse selected. For example, a promotional customer price that is specific to a warehouse has a higher priority than a promotional customer price with no warehouse specified. For more information, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md) and [Vendor Prices: General Information](Prices_Vendor_Prices_GeneralInfo.md).

**Attention:** The system does not use warehouse-specific prices in accounts payable and accounts receivable documents, because these documents do not include warehouse information.

**Parent topic:**[Managing Warehouses](../UserGuide/Warehouses_Mapref.md)

