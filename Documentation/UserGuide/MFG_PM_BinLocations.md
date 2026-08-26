# Production Processing: Selection of Warehouse Locations {#_3f87d102-4852-4596-af4d-0a06c0323c56 .concept}

Produced items and materials used in production are usually stored in warehouse locations. You assign a warehouse to each production order. The system uses this warehouse as the default warehouse to which the produced items are received to and from which the materials are issued. If the warehouse has multiple locations and the *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a warehouse location must be specified for each production order. This location is where produced items are received and materials are issued in production transactions.

In the following sections, you can find information about how the system selects default warehouse locations in production orders and production transactions.

**Important:** The **Use Item Default Location for Picking** check box on the **Locations** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form does not affect the selection of default warehouse locations in production transactions.

## Receipt of Completed Items { .section}

When you create a production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, the warehouse and the warehouse location to which the completed items will be received must be specified in the **Warehouse** and **Location** boxes of the Summary area. By default, the system inserts the warehouse specified in the **Default Warehouse** box of the **General** tab on [Stock Items](IN_20_25_00.md) \(IN202500\) form for the item to be produced. If no default warehouse is specified for the item, you must select the warehouse manually.

To find the default warehouse location to be copied to the **Location** box of the production order, the system checks the following boxes in the listed order and inserts the first location it finds:

1.  The **Default Receipt To** box of the **General** tab on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the item to be produced and the warehouse specified in the **Warehouse** box
2.  The **Default Receipt To** box of the **General** tab on the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the item to be produced
3.  The **Receiving Location** box of the **Locations** tab on the [Warehouses](IN_20_40_00.md) \(IN204000\) form for the warehouse specified in the **Warehouse** box

If all these boxes are empty, you must manually specify the warehouse location in the **Location** box of the production order. You can also override any default location that the system inserts.

When a worker records the quantity of completed items for the last operation of a production order by using the [Move](AM_30_20_00.md) \(AM302000\) or [Labor](AM_30_10_00.md) \(AM301000\) form, the system inserts in the **Warehouse** and **Location** columns of the item row the values in the respective boxes of the production order. The worker can override the warehouse and location in the transaction if needed, such as when the produced items must be moved to a specific warehouse location for an additional inspection.

For each warehouse location that may be used for item receipt, you should make sure that the following check boxes are selected in the row for the location on the **Locations** tab of the [Warehouses](IN_20_40_00.md) form:

-   **Active**
-   **Production Allowed**

## Issue of Materials { .section}

The system can insert default warehouse locations for rows in a material transaction created on the [Materials](AM_30_00_00.md) \(AM300000\) form. If a warehouse location is specified in the **Location** column of the **Materials** tab on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form in the material row for which you create the material transaction, the system copies this location to the **Location** column of the material row in the transaction. If the location column on the [Production Order Details](AM_20_90_00.md) form is empty, then the system uses the following rules for determining the default warehouse location in a material transaction:

-   If you add a material row to the transaction manually, the system leaves the **Location** column empty. You need to specify the warehouse location manually.
-   If you create the material transaction by using the [Select Production Orders](AM_30_00_10.md) \(AM300010\) form or the system creates the material transaction for backflushed materials, the system checks the following locations in the listed order and inserts the first one it finds:
    -   The location specified in the **Default Issue From** box of the **General** tab on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the material and the warehouse specified in the **Warehouse** column
    -   The location specified for the material in the **Default Issue From** box of the **General** tab on the [Stock Items](IN_20_25_00.md) \(IN202500\) form
    -   The location specified in the **Shipping Location** box of the **Locations** tab on the [Warehouses](IN_20_40_00.md) \(IN204000\) form for the warehouse specified in the **Warehouse** column
    -   The location with the highest pick priority on the **Locations** tab on the [Warehouses](IN_20_40_00.md) form for the warehouse specified in the **Warehouse** column

When you return materials to a warehouse, you reflect this in the system by specifying the negative quantity in the material row of the material transaction. In this case, you need to specify the warehouse location manually if the location is not specified for the material in the production order for which the material is returned.

For each warehouse location from which materials will be issued, you should make sure that the following check boxes are selected in the row for the location on the **Locations** tab of the [Warehouses](IN_20_40_00.md) form:

-   **Active**
-   **Production Allowed**

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

