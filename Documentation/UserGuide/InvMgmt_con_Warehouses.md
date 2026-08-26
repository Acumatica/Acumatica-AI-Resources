# Warehouses in Acumatica ERP {#_432a19ba-d2e0-4cd2-9ccd-a3a7ba2e39b7 .concept}

If your organization keeps any physical items on site that are currently unused but expected to be used or sold, it uses storage for these items. Your storage can be as small as a shelf with dozens of office supplies in a back office or as large as multiple physical warehouses with billions of goods situated in different regions or even countries.

If you want to track your stored items in Acumatica ERP, you can use the functionality of warehouses and locations and choose the approach that best fits your business. You can configure a single warehouse or multiple warehouses. Within each warehouse, you can define a single location or multiple locations. In this topic, you will find general information about warehouses in Acumatica ERP.

## Warehouses and Locations in Acumatica ERP { .section}

In Acumatica ERP, a warehouse does not necessarily represent a physical building where your inventory is stocked. You can divide a large physical storage space into multiple areas and define each area as a warehouse in Acumatica ERP. A warehouse can even be virtual: for example, you might want to treat all goods that are on the way from the supplier to you as though they are located in a goods-in-transit warehouse.

You can use any of the following structures of warehouses and locations and define these entities accordingly in Acumatica ERP:

-   One warehouse with one location: You use this structure when you have a small number of inventory items and it’s not important for you to track in which room or on which shelf these items are stored. For more information, see [Basic Warehouse Structure](#_97deb92b-0ac5-4a9e-8bd1-7c38e8471e63).
-   One warehouse with multiple locations: You use this structure when you have one physical space and need to track the locations within it and the items in these locations. For example, you might have one physical room with many numbered shelves \(to be defined as locations\). Or you might have multiple rooms with shelves and boxes \(and each location will be defined by the room, shelf, and box\). With multiple locations defined you are able to register in the system the exact placement of each inventory item.
-   Multiple warehouses with one location in each warehouse: You use this structure when you store items in multiple physical rooms or buildings \(each of which will be defined as a warehouse in the system\), and each storage place \(to be defined as a location\) holds a small number of items, which warehouse employees can easily find without needing more specific details.
-   Multiple warehouses with multiple locations in each warehouse: You use this structure when you have a distributed network of warehouses that hold a variety of goods in different locations.
-   Multiple warehouses, which can have any number of locations: You use this structure when you have multiple warehouses, which vary in terms of whether they have multiple locations within them or just one location. For example, this structure might be used if you have a large distribution center from where goods are sent to multiple small warehouses.

For more information, see [Warehouses: General Information](Warehouses_GeneralInfo.md) and [Warehouse Locations and Single-Step Transfers: General Information](Warehouse_Locations_GeneralInfo.md).

## Basic Warehouse Structure {#_97deb92b-0ac5-4a9e-8bd1-7c38e8471e63 .section}

When you have just a few items to keep in a small storage area, you can use the basic warehouse functionality in Acumatica ERP. The basic functionality is available when you have the following license settings on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   The *Inventory* feature is enabled.
-   The *Multiple Warehouses* and *Multiple Warehouse Locations* features \(which provide more advanced functionality\) are disabled.

When you specify and save the inventory settings on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form \(as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md)\), the system creates the default warehouse and assigns *MAIN* as the warehouse ID.

**Note:** With the features noted above enabled and disabled, the ID of the only warehouse, *MAIN*, is not displayed on data entry forms for simplicity. However, this warehouse ID will be used automatically in all inventory transactions.

If needed, you can change the identifier of the *MAIN* warehouse on the [Warehouses](IN_20_40_00.md) \(IN204000\) form by selecting this warehouse on the form, clicking **Change ID** on the More menu, and specifying a new identifier in the dialog box that opens.

When the *Multiple Warehouses* feature is not enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the [Warehouses](IN_20_40_00.md) form displays the **Warehouse ID** box and no other elements. The following settings are specified for the default warehouse but are hidden from this form:

-   **Replenishment Class**: *Purchase*
-   **Default Cost of Returns**: *Average*

For the default warehouse, the system creates a default location that the goods will be received to and issued from and assigns *MAIN* as the location ID. If the *Multiple Warehouse Locations* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, the *MAIN* location has the following settings, although they are not displayed on the [Warehouses](IN_20_40_00.md) form:

-   **Active**: Selected
-   **Include in Qty. Available**: Selected
-   **Cost Separately**: Cleared
-   **Sales Allowed**: Selected
-   **Receipts Allowed**: Selected
-   **Transfers Allowed**: Selected
-   **Assembly Allowed**: Selected

