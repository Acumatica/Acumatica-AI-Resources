# Sale of Matrix Items: Export of Product Availability Data {#_484b638e-d150-4068-9e60-ef0bd592f747 .concept}

Acumatica ERP Retail Edition provides you with the ability to track the availability of template items \(and matrix items based on them\) that you sell in the Shopify store and maintain in Acumatica ERP. You have the flexibility to configure which quantities of items should be included in calculations of the quantities available for sale in the online store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Determine how the available quantities of template and matrix items exported to the Shopify store should be calculated
-   Set up quantity tracking for matrix items exported to the Shopify store
-   Synchronize the available quantities of exported matrix items for which quantity tracking is turned on

## Applicable Scenarios { .section}

You track available quantities of matrix items exported to the Shopify store if you want to make these items available for purchase by shoppers through the storefront only if there is a sufficient quantity in stock.

## Configuration of Product Availability Synchronization { .section}

Before you start exporting available quantities of stock items between Acumatica ERP and a Shopify store, you need to perform the following general steps:

1.  Activate the *Product Availability* entity. To do this, on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Product Availability* entity.
2.  Specify the quantity calculation settings for the store on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_SP_Syncing_Product_Availability_Quantity_Calculation.md).
3.  Determine the matrix items for which available quantities should be exported.

## Synchronization of Available Quantities { .section}

Available quantities of matrix items are exported to the Shopify store during the synchronization of the *Product Availability* entity.

Because available quantities of products with variants in Shopify are tracked on the variant level, the synchronization of the *Product Availability* entity affects only the matrix items that have **Availability** set to *Set as Available \(Track Qty.\)* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

During the synchronization, the system updates the matrix item's quantity in Shopify based on the **Warehouse Mode** and **Availability Mode** settings specified on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_SP_Syncing_Product_Availability_Quantity_Calculation.md).

If the matrix item has no available quantity \(that us its calculated quantity is less than or equal to zero\), the system updates the matrix item's purchasability settings according to the **When Qty. Unavailable** setting specified on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the Shopify store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the Shopify store,

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the Shopify store with the updated UOM.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

