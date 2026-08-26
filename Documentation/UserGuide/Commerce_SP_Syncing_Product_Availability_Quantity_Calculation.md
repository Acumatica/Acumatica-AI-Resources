# Product Availability: Calculation of Available Quantities {#_b37a41a4-1992-4306-b8ed-1aa42e3ce4fd .concept}

When you set up the synchronization of product availability, you select the rules of calculating the available quantities for items whose availability should be tracked, which includes selecting the type of quantity to export and the warehouses to be included in the availability calculation.

## Selection of the Availability Mode {#_a562b5a4-3e91-4790-9e0f-0724513bea7d .section}

During the configuration of Acumatica ERP Retail Edition, you can specify which item quantity in Acumatica ERP you want to be synchronized with the Shopify store for the items whose quantities are tracked. To do so, you select one of the following options in the **Availability Mode** box on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form:

-   *On Hand*: The system synchronizes the on-hand quantity stored at particular warehouses or warehouse locations.
-   *Available for Shipping*: The system synchronizes the quantity available for shipping.
-   *Available*: The system synchronizes the available quantity. You can configure the way the available quantity is calculated by using an availability calculation rule.

For more information, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

The connector exports product quantities only from regular cost layers. Quantities from special orders and project-related cost layers are excluded from the product availability export. For more information about cost layers, see [Tracking of Costs at Warehouses and Locations](Item_Costs_Valuation_Methods_GeneralInfo.md#_07036e51-9d23-4c59-bcc5-e13acf977b46).

## Selection of the Warehouse Mode { .section}

You also select whether quantity calculations should include available quantities from all warehouses or from only the specified warehouses or warehouse locations. To do so, in the **Warehouse Mode** box on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select one of the following options:

-   *All Warehouses*: To calculate the available quantity of the item in the Shopify store based on the quantity of the item in all warehouses. If *All Warehouses* warehouse mode is selected and multiple locations exist in the Shopify store, the available quantities of items are synchronized with the first location created in the Shopify store.
-   *Specific Warehouses*: To calculate the available quantity of the item based on the quantity in the selected warehouses and warehouse locations.

    When you select this option, the **Warehouse Mapping for Inventory Export** table appears below the **Warehouse Mode** box. In this table, you specify a list of warehouses and warehouse locations to be used the calculation of item availability. If multiple warehouse locations have been created in the Shopify store, you can specify which Shopify location should be updated with the availability data from a particular warehouse or warehouse location from Acumatica ERP.

    The **Warehouse Mapping for Inventory Export** table contains the following columns:

    -   **Warehouse** \(required\): A warehouse from Acumatica ERP that holds inventory items whose availability data should be exported to the Shopify store. You can select a warehouse from the list of all active warehouses that have been created on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.
    -   **Location ID** \(optional\): A warehouse location from Acumatica ERP that contains inventory items whose availability data should be exported to the Shopify store. You can select a warehouse location from the list, which contains the active locations that have been created on the [Warehouses](IN_20_40_00.md) form for the warehouse selected in the **Warehouse** column of the row. If no location is selected, the system exports the availability data for items stored in all locations of the selected warehouse.
    -   **Shopify Location** \(required\): The Shopify warehouse location to which the system will export availability data for inventory items from Acumatica ERP. You select a location from the list, which contains all the warehouse locations created in the Shopify store.
    If *Specific Warehouses* warehouse mode is selected and no values are specified in the **Warehouse Mapping for Inventory Export** table, the system will behave as it would if the *All Warehouses* mode was selected.


**Attention:** Multiple warehouses and warehouse locations require that the following features be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   The *Multiple Warehouses* feature, which provides the functionality of working with multiple warehouses \(including virtual warehouses\)
-   The *Multiple Warehouse Locations* feature, which supports multiple locations for each warehouse

If you have synchronized the *Product Availability* entity, when you modify any of the settings described in this section, the system resets the availability synchronization status for all synchronized items in the Shopify store, and you need to perform the full synchronization of the *Product Availability* entity again.

## Adjustment of Available Quantities { .section}

You can manually adjust the available quantity calculated for an item by specifying a value in the **Availability Adjustment** box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

You specify the adjustment quantity in the sales UOM of the item. Acceptable values include whole numbers and decimal numbers. To increase the available quantity, you should use a positive value not preceded by any sign. To decrease the available quantity, precede the value with the minus sign. Percentage values \(for example, *10%*\) are not accepted.

**Parent topic:**[Synchronizing Product Availability](../UserGuide/Commerce_SP_Syncing_Product_Availability_Mapref.md)

