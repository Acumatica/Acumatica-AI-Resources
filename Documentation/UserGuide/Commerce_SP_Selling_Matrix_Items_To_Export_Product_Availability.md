# Sale of Matrix Items: To Export Product Availability Data {#_8a989426-6c0b-4324-9ff9-a36e27538c8e .task}

In this activity, you will specify the default availability settings for the Shopify store, as well as the availability settings for a particular template item and the matrix items generated based on this template item. You will then export the product availability data to the Shopify store and review the results of the export.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to sell several variants of juices in its online store. The company needs to track the quantity of juice available for shipping from a particular location of its retail warehouse.

Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the Shopify store, you need to export to the Shopify store the availability settings of the *JUICE* template item and the matrix items based on this template item. You also need to export the quantities of matrix items available for shipping from the *JS3* warehouse location of the *RETAIL* warehouse.

To explore how various availability settings specified for the store, template item, and matrix items in Acumatica ERP affect the availability settings of the exported template item and matrix items in Shopify, you will gain familiarity with various availability settings for items.

## Configuration Overview {#section_tz4_djx_cnb .section}

For the purposes of this activity, the following tasks have been performed in the *U100* dataset:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Multiple Warehouses* and *Multiple Warehouse Locations* features have been enabled.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *RETAIL* warehouse and the *JS3* warehouse location have been configured.
-   On the [Template Items](IN_20_30_00.md) \(IN203000\) form, the *JUICE* template item has been defined.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the matrix items based on the *JUICE* template item have been defined.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, activate the needed entity.
2.  On the [Shopify Stores](BC_20_10_10.md) form, review the default availability settings.
3.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, update the availability settings of the *JUICE* template item.
4.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, update the availability settings of the matrix items that have been generated based on the *JUICE* template item.
5.  On the [Storage Details by Item Warehouse Location](IN_40_80_55.md) \(IN408055\) form, review the quantities of the matrix items available in the *JS3* location of the *RETAIL* warehouse.
6.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the template item data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data.
7.  On the [Prepare Data](BC_50_10_00.md) form, prepare the product availability data for synchronization; on the [Process Data](BC_50_15_00.md) form, process the prepared data.
8.  In the admin area of the Shopify store, review the items' settings and exported quantities.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Activating the Needed Entity { .section}

You can skip this step if you have completed the following activity: [Product Availability: To Export Product Availability Data](Commerce_SP_Syncing_Product_Availability_Activity.md).

To activate the *Product Availability* entity, do the following:

1.  Open the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  On the **Entities** tab, select the **Active** check box in the row of the *Product Availability* entity.
3.  On the form toolbar, click **Save**.

## Step 2: Updating the Default Availability Settings { .section}

To specify the availability settings that the system will apply by default to items exported from Acumatica ERP to the Shopify store, do the following:

1.  Open the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - SP*.
3.  On the **Inventory** tab, specify the following settings:
    -   **Default Availability**: *Set as Available \(Don't Track Qty.\)*
    -   **Availability Mode**: *Available for Shipping*
    -   **Warehouse Mode**: *Specific Warehouses*
4.  In the **Warehouse Mapping for Inventory Export** table, add a row with the following settings:

    -   **Warehouse**: *RETAIL*
    -   **Location ID**: *JS3*
    -   **Shopify Location**: *2330 Hoffman Avenue*
    With these settings, by default, items exported to the Shopify store will be available for purchase through the storefront, and their quantities will not be tracked. For each item, only its quantity available for shipping in the *JS3* location of the *RETAIL* warehouse is synchronized with the Shopify store.

5.  On the form toolbar, click **Save** to save the settings.

## Step 3: Updating the Availability Settings of the JUICE Template Item { .section}

To specify the availability settings that the system will apply to the *JUICE* template item when it is exported from Acumatica ERP to the Shopify store, do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  In the **Template ID** box of the Summary area, select *JUICE*.
3.  On the **eCommerce** tab, specify the following settings:
    -   **Availability**: *Set as Available \(Track Qty.\)*
    -   **When Qty. Unavailable**: *Set as Unavailable*
4.  On the form toolbar, click **Save**.

## Step 4: Updating the Availability Settings of the Matrix Items { .section}

To specify the availability settings that the system will apply to the juice variants \(that is, the matrix items generated based on the *JUICE* template item\) exported from Acumatica ERP to the Shopify store, do the following:

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
2.  In the **Inventory ID** box, select *PCH-32OZ-GBT*.
3.  On the **eCommerce** tab, specify the following settings:
    -   **Availability**: *Set as Available \(Track Qty.\)*
    -   **When Qty. Unavailable**: *Do Nothing*
4.  On the form toolbar, click **Save**.
5.  Repeat the previous instructions for each of the matrix items listed in the following table, and specify the indicated **Availability** and **When Qty. Unavailable** settings.

    |Stock Item|Availability|When Qty. Unavailable|
    |----------|------------|---------------------|
    |*ORG-16OZ-GBT*|*Set as Available \(Track Qty.\)*|*Set as Unavailable*|
    |*PNL-16OZ-GBT*|*Set as Unavailable*|N/A|


The *Store Default* option is specified in the **Availability** box for all other matrix items based on the *JUICE* template item; you will not change this option for these items.

## Step 5: Reviewing the Available Quantities of the Matrix Items { .section}

To review the available quantities of the matrix items in the *RETAIL* warehouse, do the following:

1.  Open the [Storage Details by Item Warehouse Location](IN_40_80_55.md) \(IN408055\) form.
2.  In the Selection area, in the **Warehouse** box, select *RETAIL*.

    The system displays the quantities of all items stored in the *RETAIL* warehouse.

3.  Click the header of the **Location ID** column, and in the dialog box that opens, select *Equals*, type `JS3` in the text box, and click **OK**.

    The system now displays only the items that are stored in the *JS3* warehouse location. Notice the item quantities in the **Qty. Available for Shipping in Location** column.


## Step 6: Synchronizing the Template Item Data { .section}

Before the quantity of a matrix item and its availability settings can be exported, the template item \(and the matrix items based on this template item\) must be synchronized with the Shopify store.

To prepare and process the template item data, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Full*
    -   **Date Range**: Cleared
3.  In the table, select the check box in the unlabeled column in the rows of the *Template Item* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Template Item* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Template Item* entity selected, select the check box in the row of the *Juice* template item.
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 7: Synchronizing the Product Availability Data { .section}

To prepare and process the product availability data, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Full*
    -   **Date Range**: Cleared
3.  In the **Entity** box of the Summary area, select *Product Availability*.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Product Availability* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Product Availability* entity selected, click **Process All** on the form toolbar.
8.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 8: Reviewing the Synchronized Data { .section}

To review the synchronized availability data in the Shopify store, do the following:

1.  Sign in to the admin area of the Shopify store as the store administrator.
2.  In the left menu, click **Products**.
3.  On the **Products** page, click the row of *Juice*.
4.  On the product management page for the *Juice* template item, review the exported settings.

    In the **Variants** table, notice that the **Quantity** column shows quantities for only the *PCH-32OZ-GBT* and *ORG-16OZ-GBT* items.

5.  In the row of *PCH-32OZ-GBT*, click **Edit**.
6.  On the product management page of *Peach / Glass bottle / 32 fl oz*, notice that the **Track quantity** and **Continue selling when out of stock** check boxes \(in the **Inventory** section\) are selected, and in the **Available** box of the **Quantity** subsection, the available quantity of the item is displayed.
7.  In the **Variants** section, click **Edit** for *Pineapple / Glass bottle / 16 fl oz*.
8.  On the product management page of *Pineapple / Glass bottle / 16 fl oz*, notice that the **Track quantity** check box is cleared.
9.  In the **Variants** section, click *Orange / Glass bottle / 16 fl oz*.
10. On the product management page of *Orange / Glass bottle / 16 fl oz*, notice that the **Track quantity** check box is selected, the **Continue selling when out of stock** check box is cleared, and in the **Available** box of the **Quantity** subsection, the available quantity of the item is displayed.

    For all other items, the **Track quantity** check box is cleared because the **Availability** setting for each of them was set to *Store Default* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the default availability setting specified for the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form was *Set as Available \(Don't Track Qty.\)*.


**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

