# Product Availability: General Information {#_2af48c6c-573d-419a-b917-e7e99cd9e86c .concept}

Acumatica ERP Retail Edition provides you with the ability to track the availability of stock items that you sell via the Shopify store and maintain in Acumatica ERP. You have the flexibility to configure which quantities of a stock item should be included in calculations of the quantity available for sale in the online store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define how the available quantities of items exported to the Shopify store should be calculated
-   Set up quantity tracking for stock items exported to the Shopify store
-   Synchronize the available quantities of exported stock items for which quantity tracking is turned on

## Applicable Scenarios { .section}

You track available quantities of stock items exported to the Shopify store if you want to make these items available for purchase by shoppers through the storefront only if there is a sufficient quantity in stock.

## Configuration of Product Availability Synchronization { .section}

Before you start exporting available quantities of stock items between Acumatica ERP and a Shopify, you need to perform the following general steps:

1.  Activate the *Product Availability* entity. To do this, on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Product Availability* entity.
2.  Specify the quantity calculation settings for the store on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_SP_Syncing_Product_Availability_Quantity_Calculation.md).
3.  Determine the stock items for which available quantities should be exported. For more information, see the *Tracking Available Quantities of Exported Stock Items* section below.

## Tracking Available Quantities of Exported Stock Items { .section}

You can track available quantities of stock items exported to a Shopify store and make them available for purchase via the storefront only when they are in stock. You can also determine how the system should handle items that go out of stock.

To make an exported stock item available for purchase via the storefront and enable quantity tracking for it, on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you select *Set as Available \(Track Qty.\)* in the **Availability** box.

When the item is synchronized, in Shopify, on the product management page for the item, the *Online Store* sales channel is listed below the product status and the **Inventory tracked** toggle in the **Inventory** section is switched on.

If you select the *Set as Available \(Track Qty.\)* option in the **Availability** box, you need to also specify the action that the system should perform with stock items whose quantities become zero, as follows:

-   To make the item unavailable for purchase via the storefront, select *Set as Unavailable* in the **When Qty. Unavailable** box. In Shopify, on the product management page for each of these items, the **Inventory tracked** toggle \(in the **Inventory** section\) will become switched off and the *Online Store* sales channel below the product status will disappear.
-   To make the item unavailable for purchase via the storefront but available for pre-order, select *Set as Pre-Order/Continue Selling* in the **When Qty. Unavailable** box. The system will select the **Continue selling when out of stock** check box for the item in the Shopify store.
-   To keep the current purchasability settings of the item, select *Do Nothing*.

## Synchronization of Availability Settings { .section}

The availability \(purchasability\) settings of a stock item in the Shopify store are updated as part of the synchronization of the *Stock Item* entity. During the synchronization, the system updates the availability settings of each item exported to Shopify based on the option selected in the **Availability** box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

For stock items whose quantities are tracked and have been synchronized with the Shopify store, during the synchronization of the *Stock Item* entity, the system also checks if the item is in stock \(See the *Synchronization of Available Quantities* section below\). If the item has no available quantity \(that is, its calculated quantity is less than or equal to zero\), the system also updates the item's purchasability settings according to the **When Qty. Unavailable** setting specified on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Synchronization of Available Quantities { .section}

Available quantities of stock items are exported to the Shopify store when the *Product Availability* entity is synchronized.

The synchronization of the *Product Availability* entity affects only the stock items that have **Availability** set to *Set as Available \(Track Qty.\)* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

During the synchronization, the system updates the item's quantity in Shopify based on the **Warehouse Mode** and **Availability Mode** settings specified on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_SP_Syncing_Product_Availability_Quantity_Calculation.md).

If the item has no available quantity \(that us its calculated quantity is less than or equal to zero\), the system also updates the item's purchasability settings according to the **When Qty. Unavailable** setting specified on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the Shopify store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the Shopify store,

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the Shopify store with the updated UOM.

**Parent topic:**[Synchronizing Product Availability](../UserGuide/Commerce_SP_Syncing_Product_Availability_Mapref.md)

