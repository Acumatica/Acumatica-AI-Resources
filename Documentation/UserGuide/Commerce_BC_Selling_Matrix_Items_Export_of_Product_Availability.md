# Selling Matrix Items: Export of Product Availability Data {#_926a89ce-cbb8-4fe9-a5aa-3aaaf9a60e8e .concept}

Acumatica ERP Retail Edition provides you with the ability to track the available quantities of template items \(and matrix items based on them\) that you sell in the BigCommerce store and maintain in Acumatica ERP. You have the flexibility to specify which quantities of items should be included in calculations of the quantities available for sale in the online store.

## Learning Objectives {#_2d17801d-5397-4a97-9fb3-f815abbe79e5 .section}

In this chapter, you will learn how to do the following:

-   Determine how the available quantities of template and matrix items exported to the BigCommerce store should be calculated
-   Set up quantity tracking for template and matrix items exported to the BigCommerce store
-   Synchronize the available quantities of exported template and matrix items for which quantity tracking is turned on

## Applicable Scenarios { .section}

You track available quantities of template items and matrix items exported to the BigCommerce store if you want to make these items available for purchase by shoppers through the storefront only if there is a sufficient quantity in stock.

## Configuration of Product Availability Synchronization { .section}

Before you start exporting available quantities of stock items between Acumatica ERP and a BigCommerce store, you need to perform the following general steps:

1.  Activate the *Product Availability* entity. To do this, on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Product Availability* entity.
2.  Specify the quantity calculation settings for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_BC_Syncing_Product_Availability_Quantity_Calculation.md).
3.  Determine the template and matrix items for which available quantities should be exported.

## Tracking Available Quantities of Exported Template and Matrix Items { .section}

You can track available quantities of template items exported to a BigCommerce store and make them available for purchase via the storefront only when they are in stock. You can also determine how the system should handle items that go out of stock.

To make an exported template item available for purchase via the storefront and enable quantity tracking for it, on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form, you select *Set as Available \(Track Qty.\)* in the **Availability** box.

When the item is synchronized, in BigCommerce, on the product management page for the item, the system applies the following settings:

-   In the **Purchasability** section, the **This product can be purchased in my online store** option button is selected.
-   In the **Inventory** section, the **Track inventory** check box is selected.

    Under the **Track inventory** check box, the **On the variant level** option button is also selected because the quantity of a template item is calculated as the sum of quantities of its variants.


If you select the *Set as Available \(Track Qty.\)* option in the **Availability** box, you need to also specify the action that the system should perform with the template item if its quantity becomes zero, as follows:

-   To make the item unavailable for purchase via the storefront, select *Set as Unavailable* in the **When Qty. Unavailable** box. In BigCommerce, in the **Purchasability** section of the product management page, the **This product cannot be purchased in my online store** option button becomes selected.
-   To make the item unavailable for purchase via the storefront but available for pre-order, select *Set as Pre-Order* in the **When Qty. Unavailable** box. In BigCommerce, the **This product is coming soon but I want to take pre-orders** option button becomes selected.
-   To keep the current purchasability settings of the item, select *Do Nothing*. In BigCommerce, the currently selected option button remains selected.

The available quantity of an exported template item is calculated as a sum of available quantities of its exported matrix items. To track the available quantity of an exported matrix item, on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you select *Set as Available \(Track Qty.\)* in the **Availability** box. With this setting selected, you need to specify the action that the system should perform with matrix item whose quantity becomes zero. If you select *Set as Unavailable* in the **When Qty. Unavailable** box, the **Purchasable** check box will be cleared for the matrix item. With any other option specified in this box, the check box will remain selected.

## Synchronization of Availability Qualities { .section}

The availability settings of a template item in the BigCommerce store are updated as part of the synchronization of the *Template Item* entity. During the export, the system updates the availability and visibility settings of each item exported to BigCommerce based on the settings specified for the template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form, for the matrix items on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

For template items whose quantities are tracked and have been synchronized with the BigCommerce store, during the synchronization of the *Template Item* entity, the system also checks if each of its matrix item is in stock. If the item has no available quantity \(that is, its calculated quantity is less than or equal to zero\), the system also updates the item's purchasability status according to the **When Qty. Unavailable** setting specified for the matrix item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form. If neither of the matrix items is in stock and the template item has no available quantity, the system updates the template item's purchasability status according to the **When Qty. Unavailable** setting specified for the template item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the BigCommerce store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the BigCommerce store.

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the BigCommerce store with the updated UOM.

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

