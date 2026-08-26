# Warehouse Locations and Single-Step Transfers: Process Activity {#_7abcb243-08fd-41ff-b17a-92afd9b20bbc .task}

In the following activity, you will learn how to move stock items between warehouse locations within the same warehouse by using a single-step transfer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has decided to move cinnamon and ginger from the default location of the retail warehouse \(to which the items have been received\) to the location of this warehouse that is dedicated to spices. You need to reflect these changes in inventory. Acting as a warehouse manager, you will create a single-step inventory transfer.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
    -   *Inventory*, which gives you the ability to maintain stock items by using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
    -   *Multiple Warehouse Locations*, which gives you the ability to configure multiple locations for each warehouse
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *RETAIL* warehouse and the *MAIN* location in this warehouse have been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CINNAMON* and *GINGER* stock items have been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form, view the item availability in the source and destination locations.
2.  On the [Transfers](IN_30_40_00.md) \(IN304000\) form, create a single-step transfer.
3.  On the [Inventory Summary](IN_40_10_00.md) form, make sure that the items are available in the destination locations.

## System Preparation { .section}

Before you start processing transfers between warehouse locations, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as warehouse manager Edith Carver by using the *carver* username and the *123* password.
2.  On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, make sure that the *SPICES* and *WRITEOFF* warehouse locations have been created in the *RETAIL* warehouse, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

## Step 1: Viewing Item Availability { .section}

To check the availability of cinnamon and ginger in the default \(*MAIN*\) location, do the following:

1.  Open the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form.
2.  In the **Inventory ID** box, select *CINNAMON*.
3.  In the **Warehouse** box, select *RETAIL*.
4.  In the **On Hand** table column, make sure that the on-hand quantity in the *MAIN* location is positive. Notice that the *SPICES* location is not displayed in the table, which means that it does not contain any cinnamon.
5.  In the **Inventory ID** box, select *GINGER*.
6.  In the **On Hand** table column, make sure that the on-hand quantity in the *MAIN* location is positive. Notice that the *SPICES* location is not displayed in the table, which means that it does not contain any ginger.

## Step 2: Transferring Items Between Warehouse Locations { .section}

Suppose that you have moved the cinnamon and ginger to the *SPICES* location. Further suppose that when you were moving the packages with cinnamon, you realized that two packages were broken and you moved these packages to the *WRITEOFF* location. The rest of the cinnamon packages were moved to the *SPICES* location. To record the movement of the items between these locations within the retail warehouse, do the following:

1.  On the [Transfers](IN_30_40_00.md) \(IN304000\) form, add a new record.
2.  In the **Transfer Type** box of the Summary area, make sure that *1-Step* is selected.
3.  In the **Warehouse ID** box, select *RETAIL*.
4.  In the **To Warehouse ID** box, select *RETAIL*.
5.  In the **Description** box, type `Moving ginger and cinnamon to the SPICES and WRITEOFF locations`.
6.  Add the items to be transferred between the *MAIN* and *SPICES* locations as follows:
    1.  On the table toolbar of the **Details** tab, click **Add Items**. The **Inventory Lookup** dialog box opens.
    2.  In the **Inventory** box, type `GINGER`. The system searches for items with this string in the inventory ID and lists in the table the one item it finds with this ID.
    3.  In the row with the *GINGER* item, select the check box in the unlabeled column.
    4.  In the **Qty. Selected** column of this row, make sure that the same value that is in the **Qty. On Hand** column is specified.
    5.  In the **Inventory** box, type `CINNAMON`. The system again searches for items with this string in the inventory ID and lists the item with this ID in the table.
    6.  In the row with the *CINNAMON* item, select the check box in the unlabeled column.
    7.  In the **Qty. Selected** column of the *CINNAMON* row, type the value of the **Qty. On Hand** column minus 2 to account for the damaged packages.
    8.  Click the **Add &amp; Close** button to add the selected items to the transfer and close the dialog box.
    9.  In the **To Location ID** column, in each line, select *SPICES*.
7.  Add the items to be transferred between the *MAIN* and *WRITEOFF* locations as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column of the new row, select *CINNAMON*.
    3.  In the **Location** column, select *MAIN*.
    4.  In the **To Location ID** column, select *WRITEOFF*.
    5.  In the **Quantity** column, type `2`.
8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Release** to release the transfer.

## Step 3: Viewing the Availability of Moved Items { .section}

Now that you have moved items to the appropriate locations, you will make sure that cinnamon and ginger are available in the appropriate locations. Do the following:

1.  Open the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form.
2.  In the **Inventory ID** box, select *GINGER*.
3.  In the **Warehouse** box, select *RETAIL*.
4.  In the table, make sure that the on-hand quantity in the *SPICES* location is positive. Notice that the *MAIN* location is not displayed in the table, which means that it does not contain any ginger.
5.  In the **Inventory ID** box, select *CINNAMON*.
6.  In the **On Hand** table column, make sure that the on-hand quantity in the *SPICES* and *WRITEOFF* locations is positive. Notice that the *MAIN* location is not displayed in the table, which means that it does not contain any cinnamon.

You have successfully recorded movement of the items to appropriate locations.

**Parent topic:**[Managing Warehouse Locations and Processing Single-Step Transfers](../UserGuide/Warehouse_Locations_Mapref.md)

