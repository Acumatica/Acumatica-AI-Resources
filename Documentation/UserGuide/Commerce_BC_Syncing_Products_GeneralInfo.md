# Product Synchronization: General Information {#_c9d60f28-a843-43bc-9c09-59895b644a27 .concept}

Acumatica ERP Retail Edition provides you with the ability to export product data \(that is, data of stock and non-stock items\) from Acumatica ERP to the BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to export stock and non-stock items to the BigCommerce store.

## Applicable Scenarios { .section}

You export items from Acumatica ERP to an external system in the following cases:

-   When you are initially configuring the external system and need to transfer stock and non-stock items that have already been defined in Acumatica ERP
-   If you manage product information in Acumatica ERP, have updated any of the item settings after the item was synchronized with the external system, and need the changes to be reflected in the product settings in the system

## Configuration of Product Synchronization { .section}

Before exporting stock and non-stock items defined in Acumatica ERP to the BigCommerce store, you need to perform the following general steps:

1.  Activate the *Stock Item* and *Non-Stock Item* entity. To do this, on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Stock Item* and *Non-Stock Item* entity.
2.  Configure the default visibility and purchasability settings for items exported to the BigCommerce store. For details, see [Product Synchronization: Default Store Settings](Commerce_BC_Syncing_Products_Default_Settings.md).
3.  Determine which items should be exported and define the visibility and purchasability settings for individual items. For details, see [Product Synchronization: Settings of Individual Items](Commerce_BC_Syncing_Products_Item_Settings.md).

## Synchronization of Stock and Non-Stock Items { .section}

Depending on the item type, the settings of an item in the BigCommerce store are updated as part of the synchronization of the *Stock Item* or *Non-Stock Item* entity.

During the export, the system updates the availability and visibility settings of each item exported to BigCommerce based on the settings specified for the item on the **eCommerce** tab of the [Non-Stock Items](IN_20_20_00.md) form or [Stock Items](IN_20_25_00.md) form and for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

For details about the information exported to the BigCommerce store during the synchronization of a stock item or a non-stock item, see [Stock Item Entity](Commerce_BC_Mapping_StockItem.md) and [Non-Stock Item Entity](Commerce_BC_Mapping_NonStockItem.md).

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

