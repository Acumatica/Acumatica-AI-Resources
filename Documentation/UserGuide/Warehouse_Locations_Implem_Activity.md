# Warehouse Locations and Single-Step Transfers: Implementation Activity {#_191790db-67df-4dc2-906a-7ca81cc698a5 .task}

In the following implementation activity, you will learn how to create warehouse locations.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has organized separate storage areas for spices and write-off items \(such as items that are damaged or past their sell-by dates\) in the retail warehouse and needs to track these items by warehouse locations. Further suppose that you are an implementation manager. You will create two warehouse locations for spices and write-off items.

**Tip:** A third location of the warehouse is the default location, *MAIN*, which is where items are initially received and items not stored in the other areas are stored.

## Process Overview { .section}

In this activity, as you create locations for spices and write-off items for the retail warehouse by using the [Warehouses](IN_20_40_00.md) \(IN204000\) form, you will specify a location identifier and appropriate settings for each location.

## System Preparation { .section}

Before you start creating warehouse locations, you should launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as implementation manager Kimberly Gibbs, by using the *gibbs* username and the *123* password.

## Step: Creating Warehouse Locations { .section}

You will leave the settings of the *MAIN* location as they are because *MAIN* is a default location for all stock items in the retail warehouse. To create locations for spices and write-off items, do the following:

1.  On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, open the *RETAIL* record.
2.  On the **Locations** tab, create a location for spices as follows:
    1.  On the toolbar of the **Locations** table, click **Add Row**.
    2.  In the **Location ID** column, type `SPICES`.
    3.  In the **Description** column, type `Location for spices`.
3.  Create a location for write-off items as follows:
    1.  On the toolbar of the **Locations** table, click **Add Row**.
    2.  In the **Location ID** column, type `WRITEOFF`.
    3.  In the **Description** column, type `Location for write-off items`.
    4.  In the **Include in Qty. Available** column, clear the check box, because items stored in this location will not be sold \(thus should not be considered available\).
    5.  In the **Sales Allowed** column, clear the check box.
4.  On the form toolbar, click **Save**.

Now that you have created warehouse locations, you can transfer items between locations in the retail warehouse, as described in [Warehouse Locations and Single-Step Transfers: Process Activity](Warehouse_Locations_Process_Activity.md).

**Parent topic:**[Managing Warehouse Locations and Processing Single-Step Transfers](../UserGuide/Warehouse_Locations_Mapref.md)

