# Product Synchronization: To Synchronize Non-Stock Items with Attributes {#_aa93750e-a5bb-40b9-9740-582c815f2e95 .task}

The following activity will walk you through the processes of creating an attribute for a non-stock item and synchronizing this item with the BigCommerce store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company is going to start selling training courses in a few months. However, it wants to let the shoppers of its online store know when the courses will be available for purchase.

Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the BigCommerce store, you need to define an attribute for the course availability date and then export this date to the BigCommerce store.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, the *TRAINING* item class has been defined.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\), the *ONLCOURSE* non-stock item of the *TRAINING* item class has been created.

## Process Overview { .section}

In this activity, you will perform the following:

1.  On the [Attributes](CS_20_50_00.md) \(CS205000\) form, create an attribute for the course release date.
2.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, add the attribute to the *TRAINING* item class.
3.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, assign a value to the created attribute for a particular non-stock item.
4.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, map the attribute field with a product field in the BigCommerce store.
5.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the non-stock item data for synchronization.
6.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the data prepared for synchronization.
7.  In the control panel of the BigCommerce store, review the exported product.

## System Preparation { .section}

Before performing the instructions of this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Sign in to the control panel of the BigCommerce store as the store administrator.
4.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, select the *SweetStore - BC* store.
5.  On the **Entities** tab, select the **Active** check box in the row of the *Non-Stock Item* entity and make sure that the *Export* sync direction is selected for the entity.
6.  Save your changes.

## Step 1: Creating an Attribute { .section}

To create an attribute for the release date of a product that is a non-stock item, do the following:

1.  On the [Attributes](CS_20_50_00.md) \(CS205000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Attribute ID**: `RELDATE`
    -   **Description**: `Pre-Order Release Date`
    -   **Control Type**: *Datetime*
3.  On the form toolbar, click **Save**.

## Step 2: Adding the Attribute to the Needed Item Class { .section}

To add the *Pre-Order Release Date* attribute to the *TRAINING* item class, do the following:

1.  Open the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
2.  In the **Item Class Tree** pane, select the *TRAINING* item class.
3.  In the right pane, on the **Attributes** tab, click **Add Row** on the table toolbar of the upper table.
4.  In the added row, in the **Attribute ID** column, select *RELDATE*.
5.  On the form toolbar, click **Save**.

## Step 3: Assigning a Value to the Added Attribute { .section}

To assign a specific value to the created attribute for the *ONLCOURSE* non-stock item, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, select the *ONLCOURSE* item.
2.  On the **Attributes** tab, in the row of the **Attributes** table with the *Pre-Order Release Date* attribute, set **Value** to *1/1/2027*.
3.  On the **eCommerce** tab, in the **Availability** box, select *Set as Pre-Order*.
4.  On the form toolbar, click **Save**.

## Step 4: Mapping the Attribute to a Field in the BigCommerce Store { .section}

To map the release date attribute with the BigCommerce field, do the following:

1.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, select the following settings in the Summary area:

    -   **Store Name**: *SweetStore - BC*
    -   **Entity**: *Non-Stock Item*
    Notice that the **Sync Direction** is set to *Export*, which means that this entity is only exported to the BigCommerce store.

2.  On the **Export Mapping** tab, click **Add Row**.
3.  In the row you have added to the table, specify the following settings:
    -   **Active**: Selected
    -   **External Object**: *Product*
    -   **External Field**: *Pre-Order Release Date*
    -   **ERP Object**: *Non-Stock Item → Attributes*
    -   **ERP Field / Value**: `=Year(CDate([NonStockItem -> Attributes.Pre-Order Release Date]))+'-'+Month(CDate([NonStockItem -> Attributes.Pre-Order Release Date]))+'-'+Day(CDate([NonStockItem -> Attributes.Pre-Order Release Date]))+'T00:00:00+00:00'`
4.  On the form toolbar, click **Save**.

## Step 5: Configuring the Export of a Subset of Non-Stock Items { .section}

To configure the *Non-Stock Item* entity to export to the BigCommerce store only stock items of the *TRAINING* item class, do the following:

1.  While you are still viewing the [Entities](BC_20_20_00.md) \(BC202000\) form for the *SweetStore - BC* store and the *Non-Stock Item* entity, on the **Export Filtering** tab, add a row and specify the following settings:
    -   **Active**: Selected
    -   **Field Name**: *Item Class*
    -   **Condition**: *Equals*
    -   **Value**: `Training`
2.  On the form toolbar, click **Save**.

## Step 6: Preparing Product Data for Synchronization { .section}

To prepare the non-stock item data for synchronization, do the following:

1.  On the [Prepare Data](../Shared/../UserGuide/BC_50_10_00.md) \(BC501000\) form, specify the following settings in the Summary area:

    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
    This setting controls which data will be loaded. *Incremental* indicates that the system will load only the data that has been modified since the previous data synchronization.

2.  In the table, select the check box in the unlabeled column in the row of the *Non-Stock Item* entity, and on the form toolbar, click **Prepare**.
3.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

    Notice that the **Ready to Process** column shows the number of synchronization records that have been prepared and are ready to be processed. The **Processed Records** column shows the number of records that have been processed \(that is, records that have been successfully synchronized\).


## Step 7: Processing the Prepared Product Data { .section}

To process the product data that has been prepared for synchronization, do the following:

1.  While you are still viewing the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, click the link in the **Ready to Process** column in the row of the *Non-Stock Item* entity.

    The [Process Data](BC_50_15_00.md) \(BC501500\) form opens with the *SweetStore - BC* store and the *Non-Stock Item* entity selected in the Summary area. The table displays all synchronization records of the *Non-Stock Item* entity that the system prepared in the previous step.

2.  In the row of the *ONLCOURSE, Home canning courses online \(website session\)* non-stock item, select the unlabeled check box, and on the form toolbar, click **Process**.
3.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 12: Viewing the Exported Product { .section}

To view the exported product data in the BigCommerce store, do the following:

1.  On the [Sync History](BC_30_10_00.md) \(BC301000\) form, specify the following settings in the Summary area:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Non-Stock Item*
2.  In the Filter List drop-down menu above the table, select *Processed*.

    Notice that the synchronization record of the *ONLCOURSE, Home canning courses online \(website session\)* item is displayed in the only row of the table. The **External ID** column displays the identifier of the item in BigCommerce.

3.  Click the link in the **External ID** column to open the product in the BigCommerce control panel.

    **Attention:** If you are not signed in to the control panel of the BigCommerce store in the same browser, you will need to enter your sign-in credentials.

4.  On the **View products** page, which opens for the *Home canning courses online \(website session\)* product, review the details of the exported item. This item corresponds to the *ONLCOURSE* non-stock item in Acumatica ERP.

    Notice that in the **Purchasability** section, the **This product is coming soon but I want to take pre-orders** option button is selected, and in the **Release Date** box, the pre-order release date that you specified for the *ONLCOURSE* non-stock item has been inserted \(*2027 Jan 1*\).

5.  At the top of the page, next to the product name, click **View on Storefront**.

    The storefront page for the *Home canning courses online \(website session\)* product opens. Notice that the product is only available for pre-order, and that the message to customers indicates that the product will be available starting *2027 Jan 1st*. This date was specified as an attribute value in Acumatica ERP and exported during the synchronization of the *Non-Stock Item* entity.

    ![](Images/activity_Commerce_BC_Syncing_Products_To_Export_NonStockItems_with_Attributes.png "The custom attribute shown on the storefront")


**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

