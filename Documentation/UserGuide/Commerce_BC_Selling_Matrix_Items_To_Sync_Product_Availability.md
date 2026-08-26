# Selling Matrix Items: To Export Product Availability Data {#_54a8270e-4eb4-462f-96ac-e944e9123416 .task}

In this activity, you will specify the default availability settings for the BigCommerce store, as well as the availability settings for a particular template item and the matrix items generated based on this template item. You will then export the product availability data to the BigCommerce store and review the results of the export.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to sell several variants of juices in its online store. The company needs to track the quantity of juice available for shipping from a particular location of its retail warehouse.

Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the BigCommerce store, you need to export to the BigCommerce store the availability settings and data of the *JUICE* template item and the matrix items based on this template item. You also need to export the quantities of matrix items available for shipping from the *JS3* warehouse location of the *RETAIL* warehouse.

To explore how various availability settings specified for the store, template item, and matrix items in Acumatica ERP affect the availability settings of the exported template item and matrix items in BigCommerce, you will become familiar with various availability settings for items.

## Configuration Overview {#section_tz4_djx_cnb .section}

For the purposes of this activity, the following tasks have been performed in the *U100* dataset:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Multiple Warehouses* and *Multiple Warehouse Locations* features have been enabled.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *RETAIL* warehouse and the *JS3* warehouse location have been configured.
-   On the [Template Items](IN_20_30_00.md) \(IN203000\) form, the *JUICE* template item has been defined.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the matrix items based on the *JUICE* template item have been defined.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, review the default availability settings.
2.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, update the availability settings of the *JUICE* template item.
3.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, update the availability settings of the matrix items that have been generated based on the *JUICE* template item.
4.  On the [Storage Details by Item Warehouse Location](IN_40_80_55.md) \(IN408055\) form, review the quantities of the matrix items available in the *JS3* location of the *RETAIL* warehouse.
5.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the template item data and the availability data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data.
6.  In the control panel of the BigCommerce store, review the items' settings and exported quantities.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Activate the *Product Availability* entity as follows:
    1.  Open the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
    2.  On the **Entities** tab, select the **Active** check box in the row of the *Product Availability* entity.
    3.  On the form toolbar, click **Save**.

## Step 1: Updating the Default Availability Settings { .section}

To specify the availability settings that the system will apply by default to items exported from Acumatica ERP to the BigCommerce store, do the following:

1.  Open the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - BC*.
3.  On the **Inventory** tab, specify the following settings:

    -   **Default Availability**: *Set as Available \(Don't Track Qty.\)*
    -   **Availability Mode**: *Available for Shipping*
    -   **Warehouse Mode**: *Specific Warehouses*
    -   **Warehouse**: *RETAIL*
    -   **Location ID**: *JS3*
    With these settings, by default, items exported to the BigCommerce store will be available for purchase through the storefront, and their quantity will not be tracked. For each item, only its quantity available for shipping in the *JS3* location of the *RETAIL* warehouse is synchronized with the BigCommerce store.

4.  On the form toolbar, click **Save** to save the settings.

## Step 2: Updating the Availability Settings of the JUICE Template Item { .section}

To specify the availability settings that the system will apply to the *JUICE* template item when it is exported from Acumatica ERP to the BigCommerce store, do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  In the **Template ID** box of the Summary area, select *JUICE*.
3.  On the **eCommerce** tab, specify the following settings:
    -   **Availability**: *Set as Available \(Track Qty.\)*
    -   **When Qty. Unavailable**: *Set as Unavailable*

        With these settings specified, when you synchronize the *Template Item* entity with the BigCommerce store, the system will override the default settings specified for the store, and the quantities of matrix items based on the *JUICE* template item \(product variants\) will be tracked. If all juice variants are sold out, the *JUICE* product can no longer be purchased via the storefront of the BigCommerce store.

4.  On the form toolbar, click **Save**.

## Step 3: Updating the Availability Settings of the Matrix Items { .section}

Suppose that you do not need the *SWB-32OZ-GBT* item, which is a matrix item based on the *JUICE* template item, to be available for purchase in the store. To make it unavailable for purchase after it is exported to the BigCommerce store, do the following:

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
2.  In the **Inventory ID** box, select *SWB-32OZ-GBT*.
3.  On the **eCommerce** tab, in the **Availability** box, select *Set as Unavailable*.
4.  On the form toolbar, click **Save**.

    The *Store Default* option is specified in this box for all other matrix items based on the *JUICE* template item; you will not change this option.


## Step 4: Reviewing the Available Quantities of the Matrix Items { .section}

To review the available quantities of the matrix items in the *RETAIL* warehouse, do the following:

1.  Open the [Storage Details by Item Warehouse Location](IN_40_80_55.md) \(IN408055\) form.
2.  In the Selection area, in the **Warehouse** box, select *RETAIL*.

    The system displays the quantities of all items stored in the *RETAIL* warehouse.

3.  Click the header of the **Location ID** column, and in the dialog box that opens, select *Equals*, type `JS3` in the text box, and click **OK**.

    The system now displays only the items that are stored in the *JS3* warehouse location. Notice the quantities in the **Qty. Available for Shipping in Location** column.


## Step 5: Synchronizing the Product Availability Data { .section}

To synchronize the availability settings and the quantities of the matrix items you reviewed in the previous step, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Full*
    -   **Date Range**: Cleared
3.  In the table, select the check box in the unlabeled column in the rows of the *Template Item* entity and the *Product Availability* entity.

    Before the quantity of a matrix item and its availability settings can be exported, the template item \(and the matrix items based on this template item\) must be synchronized with the BigCommerce store.

4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Template Item* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Template Item* entity selected, select the check box in the row of the *Juice* template item.
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
10. In the **Entity** box of the Summary area, select *Product Availability*.
11. On the form toolbar, click **Process All**.
12. In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 6: Reviewing the Synchronized Data { .section}

To review the synchronized availability data in the BigCommerce store, do the following:

1.  Sign in to the control panel of the BigCommerce store as an administrator.
2.  In the left pane of the control panel, click **Products** &gt; **All products**.
3.  On the **View Products** page, which opens, locate the *Juice* product, and click the link in the **Name** column.
4.  On the product management page of the *Juice* product, review the exported settings.

    In the **Inventory** section, notice that the **Track inventory** check box is selected, and below this check box, the **On the variant level** option button is selected.

    In the **Variants** table of the **Product Options** section \(**Variations** subsection\), notice that the quantities of items that you reviewed in Step 4 are now displayed in the **Current Stock** column.

    **Tip:** If this column is not displayed in the table, click **Edit Columns** right of **Variants**, and in the menu, select the **Stock** check box.

    Also in the table, notice that the **Purchasable** check box is cleared for the *SWB-32OZ-GBT* variant. \(You set the **Availability** of this item to *Set as Unavailable* in Step 3.\)

    The available quantity is tracked for all items in the table, regardless of the availability settings defined for each matrix item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form \(which was *Store Default* for all items except for *SWB-32OZ-GBT*\). The availability settings defined for the *JUICE* template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form overrode the default availability settings specified for the *SweetStore - BC* store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.


**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

