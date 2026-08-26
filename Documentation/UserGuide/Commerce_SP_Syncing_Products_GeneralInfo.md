# Product Synchronization: General Information {#_b6d67e74-3c8f-4564-bd49-f066e78b3378 .concept}

Acumatica ERP Retail Edition provides you with the ability to export product data \(that is, data of stock and non-stock items\) from Acumatica ERP to the Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how to export stock and non-stock items to the Shopify store.

## Applicable Scenarios { .section}

You export items from Acumatica ERP to an external system in the following cases:

-   When you are initially configuring the external system and need to transfer stock and non-stock items that have already been defined in Acumatica ERP
-   If you manage product information in Acumatica ERP, have updated any of the item settings after the item was synchronized with the external system, and need the changes to be reflected in the product settings in the system

## Configuration of Product Synchronization { .section}

Before exporting stock and non-stock items defined in Acumatica ERP to the Shopify store, you need to perform the following general steps:

1.  Activate the *Stock Item* and *Non-Stock Item* entities. To do this, on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Stock Item* and *Non-Stock Item* entities.
2.  Configure the default visibility and purchasability settings for items exported to the Shopify store. For details, see [Product Synchronization: Default Store Settings](Commerce_SP_Syncing_Products_Default_Settings.md).
3.  Determine which items should be exported and define the visibility and purchasability settings for individual items. For details, see [Product Synchronization: Settings of Individual Items](Commerce_SP_Syncing_Products_Item_Settings.md).

## Synchronization of Stock and Non-Stock Items { .section}

Depending on the item type, the settings of an item in the Shopify store are updated as part of the synchronization of the *Stock Item* or *Non-Stock Item* entity.

During the export, the system updates the availability and visibility settings of each item exported to Shopify based on the settings specified for the item on the **eCommerce** tab of the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form and for the store on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

For details about the information exported to the Shopify store during the synchronization of a stock and non-stock item, see [Stock Item Entity](Commerce_SP_Mapping_StockItem.md) and [Non-Stock Item Entity](Commerce_SP_Mapping_NonStockItem.md).

## Export of Sales Categories as Tags { .section}

You can cause the system to export sales categories assigned to a stock or non-stock item in Acumatica ERP to be exported to the Shopify store as product tags during the synchronization of the item. To do this, on the **Inventory Settings** tab of the [Shopify Stores](../Shared/../UserGuide/BC_20_10_10.md) \(BC201010\) form, you set **Sales Category Export** to *Export as Product Tags*. You can view sales categories on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) \(IN204060\) form.

## Synchronization of Non-Stock Items Requiring a Shipment { .section}

In the Shopify store, a product that can be shipped is marked as a physical product. That is, in the **Shipping** section of the product management page, the **This is a physical product** check box is selected for this product.

For stock items that you export to the Shopify store, the system automatically selects the **This is a physical product** check box. For exported non-stock items, the state of the check box is determined as follows:

-   If the **Require Shipment** check box is selected for the non-stock item on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the **This is a physical product** check box is selected.
-   If the **Require Shipment** check box is cleared, **This is a physical product** check box is cleared.

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_SP_Syncing_Products_Mapref.md)

