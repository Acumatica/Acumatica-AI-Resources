# Product Availability: General Information {#_e2af17d8-c0c6-4350-b9f3-bc37c10567b2 .concept}

Acumatica ERP Retail Edition provides you with the ability to track the available quantities of stock items that you sell via the BigCommerce store and maintain in Acumatica ERP. You have the flexibility to configure which quantities of a stock item should be included in calculations of the quantity available for sale in the online store.

## Learning Objectives {#_2d17801d-5397-4a97-9fb3-f815abbe79e5 .section}

In this chapter, you will learn how to do the following:

-   Define how the available quantities of items exported to the BigCommerce store should be calculated
-   Set up quantity tracking for stock items exported to the BigCommerce store
-   Synchronize the available quantities of exported stock items for which quantity tracking is turned on

## Applicable Scenarios {#_babea2db-3c58-435a-9052-c0a9372bc31b .section}

You track available quantities of stock items exported to the BigCommerce store if you want to make these items available for purchase by shoppers through the storefront only if there is a sufficient quantity in stock.

## Configuration of Product Availability Synchronization { .section}

Before you start exporting available quantities of stock items from Acumatica ERP to a BigCommerce, you need to perform the following general steps:

1.  Activate the *Product Availability* entity. To do this, on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Product Availability* entity.
2.  Specify the quantity calculation settings for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_BC_Syncing_Product_Availability_Quantity_Calculation.md).
3.  Determine the stock items for which available quantities should be exported. For more information, see the *Tracking Available Quantities of Exported Stock Items* section below.

## Selection of the Warehouse Mode { .section}

You also select whether quantity calculations should include available quantities from all warehouses or from only the specified warehouses or warehouse locations. To do so, in the **Warehouse Mode** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select one of the following options:

-   *All Warehouses*: To calculate the available quantity of the item in the BigCommerce store based on the quantity of the item in all warehouses. If *All Warehouses* warehouse mode is selected and multiple locations exist in the BigCommerce store, the available quantities of items are synchronized with the default location, which is also the first location created in the BigCommerce store.
-   *Specific Warehouses*: To calculate the available quantity of the item based on the quantity in the selected warehouses and warehouse locations.

    When you select this option, the **Warehouse Mapping for Inventory Export** table appears on the **Inventory** tab. In this table, you specify a list of warehouses and warehouse locations to be used for the calculation of item availability. If multiple warehouse locations have been created in the BigCommerce store, you can specify which BigCommerce location should be updated with the availability data from a particular warehouse or warehouse location from Acumatica ERP.

    The **Warehouse Mapping for Inventory Export** table contains the following columns:

    -   **Warehouse** \(required\): A warehouse from Acumatica ERP that holds inventory items whose availability data should be exported to the BigCommerce store. You can select a warehouse from the list of all active warehouses that have been created on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.
    -   **Location ID** \(optional\): A warehouse location from Acumatica ERP that contains inventory items whose availability data should be exported to the BigCommerce store. You can select a warehouse location from the list, which contains the active locations that have been created on the [Warehouses](IN_20_40_00.md) form for the warehouse selected in the **Warehouse** column of the row.
    -   **Shopify Location** \(required\): The BigCommerce warehouse location to which the system will export availability data for inventory items from Acumatica ERP. You select a location from the list, which contains all the warehouse locations created in the BigCommerce store.

Keep in mind the following mapping rules:

-   A BigCommerce location can be linked to more than one Acumatica ERP warehouse–location pair. This BigCommerce location will reflect the combined stock from all these locations.
-   Each Acumatica ERP warehouse–location pair can only be linked to only one BigCommerce location.
-   An Acumatica ERP warehouse can be assigned to a BigCommerce location without selecting an Acumatica ERP location. This BigCommerce location will then represent all the stock in every location within that warehouse. But you won't be able to use this warehouse for any other mappings.

**Attention:** Multiple warehouses and warehouse locations require that the *Multiple Warehouses* and *Multiple Warehouse Locations* features be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you have synchronized the *Product Availability* entity, when you modify any of the settings described in this section, the system resets the availability synchronization status for all synchronized items in the BigCommerce store, and you need to perform the full synchronization of the *Product Availability* entity again.

## Tracking Available Quantities of Exported Stock Items { .section}

You can track available quantities of stock items exported to a BigCommerce store and make them available for purchase via the storefront only when they are in stock. You can also determine how the system should handle items that go out of stock.

To make an exported stock item available for purchase via the storefront and enable quantity tracking for it, on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you select *Set as Available \(Track Qty.\)* in the **Availability** box.

When the item is synchronized, in BigCommerce, on the product management page for the item, the system applies the following settings:

-   In the **Purchasability** section, the **This product can be purchased in my online store** option button is selected.
-   In the **Inventory** section, the **Track inventory** check box is selected.

    Under the **Track inventory** check box, the **On the product level** option button is also selected because stock items do not have product variants and the available quantities of exported stock items are tracked for the entire product.


If you select the *Set as Available \(Track Qty.\)* option in the **Availability** box, you need to also specify the action that the system should perform with stock items whose quantities become zero, as follows:

-   To make the item unavailable for purchase via the storefront, select *Set as Unavailable* in the **When Qty. Unavailable** box. In BigCommerce, in the **Purchasability** section of the product management page, the **This product cannot be purchased in my online store** option button becomes selected.
-   To make the item unavailable for purchase via the storefront but available for pre-order, select *Set as Pre-Order/Continue Selling* in the **When Qty. Unavailable** box. In BigCommerce, the **This product is coming soon but I want to take pre-orders** option button becomes selected.

    The **Track inventory** check box in the **Inventory** section becomes cleared.

-   To keep the current purchasability settings of the item, select *Do Nothing*. In BigCommerce, the currently selected option button remains selected.

## Synchronization of Availability Settings { .section}

The availability \(purchasability\) settings of a stock item in the BigCommerce store are updated as part of the synchronization of the *Stock Item* entity. During the synchronization, the system updates the purchasability settings of each item exported to BigCommerce based on the option selected in the **Availability** box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

For stock items whose quantities are tracked and have been synchronized with the BigCommerce store, during the synchronization of the *Stock Item* entity, the system also checks if the item is in stock \(See the *Synchronization of Available Quantities* section below\). If the item has no available quantity \(that is, its calculated quantity is less than or equal to zero\), the system also updates the item's purchasability settings according to the **When Qty. Unavailable** setting specified on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Synchronization of Available Quantities { .section}

Available quantities of stock items are exported to the BigCommerce store during the synchronization of the *Product Availability* entity.

The synchronization of the *Product Availability* entity affects only the stock items that have **Availability** set to *Set as Available \(Track Qty.\)* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

During the synchronization, the system updates the item's quantity in BigCommerce based on the **Warehouse Mode** and **Availability Mode** settings specified on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_BC_Syncing_Product_Availability_Quantity_Calculation.md).

If the item has no available quantity \(that us its calculated quantity is less than or equal to zero\), the system also updates the item's purchasability settings according to the **When Qty. Unavailable** setting specified on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the BigCommerce store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the BigCommerce store.

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the BigCommerce store with the updated UOM.

**Parent topic:**[Synchronizing Product Availability](../UserGuide/Commerce_BC_Syncing_Product_Availability_Mapref.md)

