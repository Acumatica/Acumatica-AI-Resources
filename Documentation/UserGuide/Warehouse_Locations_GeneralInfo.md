# Warehouse Locations and Single-Step Transfers: General Information {#_63da932c-897d-4d2c-af04-c40ce3f71891 .concept}

In Acumatica ERP, you can create multiple locations in each warehouse and configure them to best fit the logistics that have been established in your company. You can reserve specific locations for sales, receipts, transfers, goods to be returned to vendors, and goods returned by customers. You can assign different pick priorities to locations, to empty certain locations more quickly while using others less frequently.

The functionality of multiple locations is available in the system if the *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you have multiple locations, you can register and process *single-step transfers* in the system, which involve moving items between locations of the same warehouse.

**Tip:** You can use single-step transfers to move items between different warehouses. This approach is not recommended because single-step transfers don't generate shipping and receipt documents for inventory workers. To process transfers between different warehouses, use two-step transfers; see [Two-Step Transfers: General Information](InvMgmt_2Step_Transfers_GeneralInfo.md) for details.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Create and configure warehouse locations
-   Perform a single-step transfer between warehouse locations
-   View item availability by location

## Applicable Scenarios { .section}

You create warehouse locations in either of the following cases:

-   You are initially configuring inventory entities and settings.
-   You reorganize the physical locations within an existing warehouse and would like to track items in these places.

You create single-step transfers when you need to move items from one location to another location within the same warehouse and to track this movement in the system.

## Default Warehouse Location { .section}

If the *Multiple Warehouse Locations* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and a warehouse is created in the system on the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the system automatically creates a default location with the *MAIN* ID. Goods will be received to and issued from this location. The *MAIN* location has the following settings:

|Setting|State|Description|
|-------|-----|-----------|
|**Active**|Selected|The location is active.|
|**Include in Qty. Available**|Selected|The system adds the number of items stored in the location to the available quantity.|
|**Cost Separately**|Cleared|The default cost is used for items in this location.|
|**Sales Allowed**|Selected|Users can sell items from this location.|
|**Receipts Allowed**|Selected|New items can be received to this location.|
|**Transfers Allowed**|Selected|Users can move items to and from this location.|

**Attention:** These location settings are displayed on the **Locations** tab of the [Warehouses](IN_20_40_00.md) form only if the *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form; if it is not enabled, the tab is not shown on the form, but the settings listed above are used internally.

When you create a warehouse in the system where the *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the default location is not created automatically, and you need to create at least one location for the warehouse.

## Configuration of Warehouse Locations { .section}

You can define multiple locations for each warehouse on the [Warehouses](IN_20_40_00.md) \(IN204000\) form. You can also view and change existing locations of the warehouse and their settings, including the default location.

You do the following to create and configure the locations of a particular warehouse in Acumatica ERP:

1.  Optional: On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, you review the structure of the *INLOCATION* segmented key, which defines the identifiers for warehouse locations.

    If you want to create a hierarchy of locations \(site, aisle, pallet, bin, and so forth\), you can configure location identifiers that consist of multiple segments, with each segment denoting a specific level in this hierarchy. For example, suppose that you have three racks, each with four shelves, in a warehouse. A location identifier can have the *Rn-SHm* format, where *Rn* is the number of the rack \(such as *R2*\) and *SHm* is the number of the shelf in the rack \(such as *SH4*\).

    For more information about segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

2.  On the **Locations** tab of the [Warehouses](IN_20_40_00.md) form, you add the needed locations to the table and specify the settings of each.

    **Tip:** To create a similar configuration of locations in multiple warehouses, you can export the location table of one of these warehouses to an Excel file and then import the settings from the file to another warehouse, changing the settings as needed.

3.  Optional: On the **Default Locations** tab, you select the following default locations for inventory operations \(which simplify data entry on purchase receipts and sales orders\):
    -   **Receiving Location**: The default receiving location for stock items in the warehouse.

        **Tip:** If you plan to process putaway transfers from the receiving location, we recommend that you disable sales from this location. That is, the **Sales Allowed** check box should be cleared on the **Locations** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form for the receiving location.

    -   **Shipping Location**: The default shipping location for the warehouse.
    -   **RMA Location**: The location used for all operations involving return merchandise authorization \(RMA\). The returned goods will be delivered to the location specified in this box, regardless of the warehouse location selected by default for the receipt of these goods.
    -   **Drop-Ship Location**: The location used for drop-ship orders and inventory issues that are automatically generated for drop-ship orders. This box is displayed only if the *Drop Shipment* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
    -   **Non-Stock Location**: The default warehouse location for the picking, receipt, and putaway of non-stock items.
4.  Optional: In the **Location Entry** box in the Summary area, you specify the option that indicates whether you want to allow users to add new locations on the fly when they are entering inventory documents. If an option that allows these additions is selected, user-added locations can be viewed \(and edited, if needed\) along with other locations on the **Locations** tab of the form.

## Priorities of Warehouse Locations {#_27f3e0da-101a-4d89-9d75-1a7434d3a115 .section}

If any inventory items with the same inventory ID in the system are stored in multiple locations of the same warehouse, the system has to find the appropriate warehouse location from which to issue the items when a user creates a shipment for a sales order. Thus, for each location, on the **Locations** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form, in the **Pick Priority** column, you can specify the pick priority. If the system finds multiple locations that have the item, the system selects the location with the highest pick priority.

For example, suppose that you store a dairy product that can be kept for one week. You purchase this dairy product every day and store it in two locations of the warehouse: A and B. In Location A, you store a variant of the dairy product that can be kept from five to seven days. In Location B, you store a variant of the dairy product that can be kept from two to four days. You can assign the highest pick priority to Location B so that dairy products with an earlier expiration date are shipped first.

If for the majority of stock items, you specify a warehouse location in the **Default Issue From** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for an item, you can include this location in search for appropriate locations by selecting the **Use Item Default Location for Picking** check box on the **Default Locations** tab of the [Warehouses](IN_20_40_00.md) form.

When this check box is selected, the system treats the location specified in the **Default Issue From** box as having a higher priority than the location with the highest possible pick priority. That is, the system searches for locations in the following order until it finds a match:

1.  The warehouse location specified for the item in the **Default Issue From** box.
2.  The warehouse location with the highest pick priority specified on the **Locations** tab of the [Warehouses](IN_20_40_00.md) form. \(The value *0* indicates the highest priority, *1* the next highest, and so forth to the lowest priority; only integer values are supported.\)

## Single-Step Transfers { .section}

Your organization can use single-step inventory transfers to record stock item movements between locations within the same warehouse. For a single-step transfer, you should specify the following information on the [Transfers](IN_30_40_00.md) \(IN304000\) form:

-   The source warehouse \(in the **Warehouse ID** box\).
-   The destination warehouse \(in the **To Warehouse ID** box\). For a single-step transfer, select the same warehouse as the source warehouse.
-   Transaction details of the stock item to be moved: the source location, the destination location, inventory ID, UOM, and quantity.

You can release a particular inventory transfer by clicking **Release** on the More menu of the [Transfers](IN_30_40_00.md) form. Also, you can release multiple transfers at the same time by using the [Release IN Documents](IN_50_10_00.md) \(IN501000\) form. No GL transactions are generated for a single-step transfer that records item movement from one location to another within the same warehouse.

When a transfer performed between locations within the same warehouse is released, the system updates the allocations and the availability data for the transferred items but does not change the item costs.

**Parent topic:**[Managing Warehouse Locations and Processing Single-Step Transfers](../UserGuide/Warehouse_Locations_Mapref.md)

