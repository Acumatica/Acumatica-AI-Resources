# Product Availability: Calculation of Available Quantities {#_cf1dd769-5634-418c-8353-1347b004e32f .concept}

When you set up the synchronization of product availability, you select the rules of calculating the available quantities for items whose availability should be tracked, which includes selecting the type of quantity to export and the warehouses to be included in the availability calculation.

## Selection of the Availability Mode {#_b51c363c-6f77-421c-80d2-8f9da6bd73dc .section}

During the configuration of a BigCommerce store, you specify which item quantity in Acumatica ERP you want to be synchronized with the store for the items whose quantities are tracked. To do so, you select one of the following options in the **Availability Mode** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form:

-   *On Hand*: The system synchronizes the on-hand quantity stored at particular warehouses or warehouse locations.
-   *Available for Shipping*: The system synchronizes the quantity available for shipping.
-   *Available*: The system synchronizes the available quantity. You can configure the way the available quantity is calculated by using an availability calculation rule.

For more information, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

The connector exports product quantities only from regular cost layers. Quantities from special orders and project-related cost layers are excluded from the product availability export. For more information about cost layers, see [Tracking of Costs at Warehouses and Locations](Item_Costs_Valuation_Methods_GeneralInfo.md#_07036e51-9d23-4c59-bcc5-e13acf977b46).

## Selection of the Warehouse Mode { .section}

You also select whether quantity calculations should include available quantities from all warehouses or from only the specified warehouses or warehouse locations. To do so, in the **Warehouse Mode** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select one of the following options:

-   *All Warehouses*: To use for calculation the quantities of the item from all warehouses
-   *Specific Warehouses*: To use for calculation the quantities from only the specified warehouses or warehouse locations.

    When you select this option, the system displays a table in which you should specify the needed warehouses and warehouse locations. If you specify a warehouse but do not specify any of its locations, quantities available from the entire warehouse are used for quantity calculations. If you specify multiple warehouses and warehouse locations, the quantities available from all specified warehouses and warehouse locations are used for quantity calculations.

    **Attention:** The functionality of multiple warehouses and multiple warehouse locations is available if the *Multiple Warehouses* and *Multiple Warehouse Locations* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.


If you have previously synchronized the *Product Availability* entity, when you modify any of the settings described in this section, the system resets the availability synchronization status for all items synchronized with the BigCommerce store, and you need to perform the full synchronization of the *Product Availability* entity again.

## Adjustment of Available Quantities { .section}

You can manually adjust the available quantity calculated for an item by specifying a value in the **Availability Adjustment** box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

You specify the adjustment quantity in the sales UOM of the item. Acceptable values include whole numbers and decimal numbers. To increase the available quantity, you should use a positive value not preceded by any sign. To decrease the available quantity, precede the value with the minus sign. Percentage values \(for example, *10%*\) are not accepted.

**Parent topic:**[Synchronizing Product Availability](../UserGuide/Commerce_BC_Syncing_Product_Availability_Mapref.md)

