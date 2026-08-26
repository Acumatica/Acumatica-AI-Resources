# Product Availability: General Information {#_a3f20c5a-eb92-4947-9ea0-0dc9b6415da2 .concept}

Acumatica ERP provides you with the ability to track the available quantities of stock items that you sell on Amazon and fulfill from your own warehouses. You have the flexibility to configure which quantities of a stock item should be included in calculations of the quantity available for sale on Amazon.

**Attention:** Export of availability information is supported only for products that are marked as seller-fulfilled in the Amazon seller account.

## Learning Objectives {#_2d17801d-5397-4a97-9fb3-f815abbe79e5 .section}

In this chapter, you will learn how to do the following:

-   Link seller-fulfilled items sold on Amazon with items in Acumatica ERP
-   Define how the system should calculate available item quantity that will be exported to the Amazon seller account
-   Export the available item quantity to the Amazon seller account

## Applicable Scenarios {#_babea2db-3c58-435a-9052-c0a9372bc31b .section}

You might want to synchronize product availability information to track available quantities of items that you sell on Amazon and ship from your own warehouses.

## Setting Up the Export of Product Availability Information { .section}

To export information about product availability to the Amazon seller account, you need to perform the following general steps:

1.  Activate the entities.

    To export the available quantities of items, you need to activate the following entities on the **Entities** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

    -   *Product \(Linking Only\)*
    -   *Product Availability*
2.  Configure marketplace-level inventory settings.

    During the configuration of the Amazon store on the [Amazon Stores](BC_20_10_20.md) form, you can specify which item quantity in Acumatica ERP needs to be exported to Amazon. To do so, you select one of the following options in the **Availability Mode** box:

    -   *On Hand*: The system exports the on-hand quantity.
    -   *Available for Shipping*: The system exports the quantity available for shipping.
    -   *Available*: The system exports the available quantity. You can configure the way the available quantity is calculated by using an availability calculation rule.
    For more information, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

    You should also indicate whether quantity calculations should include available quantities from all warehouses or from only the specified warehouses or warehouse locations. To do so, in the **Warehouse Mode** box on the **Inventory** tab of the [Amazon Stores](BC_20_10_20.md) form, you select one of the following options:

    -   *All Warehouses*: To calculate the available quantity of the item in the Amazon seller account based on the quantity of the item in all warehouses.
    -   *Specific Warehouses*: To calculate the available quantity of the item based on the quantity in the selected warehouses and warehouse locations. When this option is selected, the **Warehouse Mapping for Inventory Export** table appears below the **Warehouse Mode** box. In this table,you can list the warehouses and warehouse locations to be used in the calculation of item availability.

        If you specify a warehouse but do not specify any of its locations, quantities available from the entire warehouse are used for quantity calculations. If you specify multiple warehouses and warehouse locations, the quantities available from all specified warehouses and warehouse locations are used for quantity calculations.

        **Important:** The functionality of multiple warehouses and multiple warehouse locations is available if the *Multiple Warehouses* and *Multiple Warehouse Locations* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.


## Linking Seller-Fulfilled Products { .section}

Before the information about stock levels can be exported to Amazon, a link must be established between stock items in Acumatica ERP and the items that are marked as seller-fulfilled in the Amazon seller account. This link is established during the synchronization of the *Product \(Linking Only\)* entity.

You also synchronize the *Product \(Linking Only\)* entity after updating inventory catalogs in the Amazon seller account and in Acumatica ERP.

**Important:** The link is created only with active seller-fulfilled products in the Amazon seller account—that is, with active items for which **I will ship this item myself** is selected in the **Fulfillment Channel** section of the **Offer** tab of the product management page.

During the synchronization, for each seller-fulfilled product in the Amazon seller account, the system searches for a matching product among stock items and template items that have the *Active*, *No Purchase*, or *No Request* status as follows:

1.  The product's SKU is compared with the inventory ID of the item.
2.  The product's SKU is compared with the alternate ID of the item.

    **Important:** An inventory item can have only a single cross-reference with the product's SKU specified as the alternate ID. That is, you cannot match a single product with multiple UOMs from the Amazon seller account with a single inventory item by using multiple cross-references in Acumatica ERP. Each product's UOM with the SKU from the Amazon seller account should be matched with a separate inventory item in Acumatica ERP.


If a match is found, the system creates a synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form with the *Processed* status. If no match is found, the sync record is created with the *Failed* status, and the **Last Message** column displays a corresponding error message.

## Exporting Product Availability Information { .section}

The information about the stock levels is updated in the Amazon seller account during the synchronization of the *Product Availability* entity. The synchronization affects only the stock and template items for which the link has been successfully created during the synchronization of the *Product \(Linking Only\)* entity. The available item quantity to export is calculated based on the settings specified on the **Inventory** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form. The quantity is exported in the item's sales UOM.

The connector exports product quantities only from regular cost layers. Quantities from special orders and project-related cost layers are excluded from the product availability export. For more information about cost layers, see [Tracking of Costs at Warehouses and Locations](Item_Costs_Valuation_Methods_GeneralInfo.md#_07036e51-9d23-4c59-bcc5-e13acf977b46).

**Note:** If the total available quantity of an item is negative, a quantity of 0 is exported for this item.

**Parent topic:**[Synchronizing Product Availability](../UserGuide/Commerce_AZ_Syncing_Product_Availability_Mapref.md)

