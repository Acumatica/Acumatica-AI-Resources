# Product Import: To Import Stock Items {#_8a0ad762-951b-4fe2-b1b1-116c841ae587 .task}

The following activity will walk you through the processes of importing stock items from the BigCommerce store to Acumatica ERP.

## Story { .section}

Suppose that for each product that has been created directly in the BigCommerce store, the SweetLife Fruits &amp; Jams company wants to maintain item information in Acumatica ERP. Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the BigCommerce store, you need to configure the import of stock items from the BigCommerce store to Acumatica ERP and import the existing products from the store. Because these are physical products, they will be defined as stock items.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the *JAM* item class has been defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the purposes of this activity.

## Process Overview { .section}

In this activity, you will do the following:

1.  In the admin area of the BigCommerce store, create products
2.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, perform the minimum configuration required for the import of stock items from the BigCommerce store to Acumatica ERP
3.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare product data for import
4.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the product data prepared for import
5.  On the [Sync History](BC_30_10_00.md) \(BC301000\) form, review the results of the synchronization
6.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, review the imported stock items

## System Preparation { .section}

Before performing the instructions of this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  In the same browser, sign in to the control panel of the BigCommerce store as the store administrator.

## Step 1: Creating Products in the BigCommerce Store { .section}

In the BigCommerce store, create the products to be imported to Acumatica ERP as follows:

1.  In the left menu, click **Products**.
2.  On the **View Products** page, in the upper left, click **Add** to create the `Blueberry Jam 8 oz` product.
3.  On the **Add Product** page, which opens, specify the following settings in the **Basic Information** section:
    -   **Product Name**: `Blueberry Jam 8 oz`
    -   **SKU** : `BLJAM08`
    -   **Product Type**: *Physical* \(the default option\)

        Based on this setting, the item will be imported to Acumatica ERP as a stock item.

    -   **Default Price**: `4.15`
    -   **Weight**: `0.25`
4.  In the lower right, click **Save** to save the product.

    The product management page opens with the created product.

5.  In the upper left, click **View Products** above the product name to return to the **View Products** page.
6.  On the **View Products** page, in the upper left, click **Add** to create the `Blueberry Jam 32 oz` product.
7.  On the **Add Product** page, which opens, specify the following settings in the **Basic Information** section:
    -   **Title**: `Blueberry Jam 32 oz`
    -   **Default Price**: `16.89`
    -   **Weight**: `0.91`
8.  In the lower right, click **Save** to save the product.

    The product management page opens with the created product.


## Step 2: Activating the Needed Entity { .section}

To activate the import of stock items from the BigCommerce store to Acumatica ERP, do the following:

1.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, open the *SweetStore - BC* store.
2.  On the **Entities** tab, in the row with the *Stock Item* entity, specify the following settings:

    -   **Active**: Selected
    -   **Sync Direction**: *Import*
    When you change the sync direction for the *Stock Item* entity, notice that the system inserts *External System* in the **Primary System** column.


## Step 3: Specifying the Inventory Settings { .section}

To specify the settings that will be used by default for importing stock items from the BigCommerce store to Acumatica ERP, do the following:

1.  While you are still viewing the *SweetStore - BC* store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, go to the **Inventory** tab.
2.  In the **Import Settings** section, specify the following settings:
    -   **Inventory Numbering Sequence**: Empty \(the default value\)

        Based on this setting, when assigning each inventory ID of an item imported to Acumatica ERP, the system uses the stock keeping unit \(SKU\) of the corresponding product in the Acumatica ERP store.

    -   **Item Class for Stock Items**: *JAM*

        This is the item class based on which stock item records will be created in Acumatica ERP for products imported from the online store.

3.  On the form toolbar, click **Save**.

## Step 4: Preparing the Product Data for Import { .section}

To prepare the stock item data that needs to be imported to the BigCommerce store, do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, specify the following settings in the Summary area of the form:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
2.  In the table, select the check box in the unlabeled column in the row of the *Stock Item* entity.
3.  On the form toolbar, click **Prepare**.
4.  In the **Processing** dialog box, which opens, click **Close**.

    In the table row with the *Stock Item* entity, the **Ready to Process** column shows the number of synchronization records that have been prepared and are ready to be processed.


## Step 5: Processing the Prepared Product Data { .section}

To import the prepared product data from the BigCommerce store, while you are still reviewing the data on the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, do the following:

1.  In the row with the *Stock Item* entity, click the link in the **Ready to Process** column.
2.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Stock Item* entity selected, select the unlabeled check boxes in the two rows with the empty **ERP ID** column and *Blueberry Jam 8 oz* and *Blueberry Jam 32 oz* in the **External Description** column.
3.  On the form toolbar, click **Process**.
4.  In the **Processing** dialog box, which opens, review the results of the processing.

    Notice that the system has processed one product \(as you can see on the **Processed** tile\) and failed to process the other one \(**Errors** tile\).

5.  Click the **Errors** tile. The system expands the table with the results of the processing.

    Because you have specified no inventory numbering sequence for import settings in Step 3, the system inserts the stock-keeping unit of each product as the corresponding inventory ID. The *Blueberry Jam 32 oz* product has no SKU defined in the BigCommerce store, so the system has failed to import it and assigned it the *Failed* status.

6.  Click **Close** to close the dialog box.

## Step 6: Viewing the Imported Products { .section}

To view the imported product data, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Stock Item*
3.  On the **Processed** tab, in the row with the *Blueberry Jam 8 oz* external description, click the link in the **ERP ID** column to review the imported stock item. The system opens the [Stock Items](IN_20_25_00.md) \(IN202500\) form in a pop-up window with the item selected.

    In the Summary area, notice that the system has inserted the product's SKU, *BLJAM08*, as the item's identifier and that the *Blueberry Jam 8 oz* item description matches the product title in the external system.

    On the **General** tab, notice that the system has assigned the item the *JAM* item class based on the item class you have specified for import settings in Step 3.

4.  Click the **Price/Cost** tab.

    Notice that the system has assigned the item the *4.15* default price based on the product's price.

5.  Click the **Cross-Reference** tab.

    Notice that the system has added a row to the table with the *External SKU* alternate type and the *BLJAM08* alternate ID, which matches the product SKU in the external system.

6.  Close the pop-up window with the [Stock Items](IN_20_25_00.md) form.
7.  On the [Sync History](BC_30_10_00.md) form, to which you return, go to the **Failed** tab.

    In the row with the *Blueberry Jam 32 oz* external description, notice that the **ERP ID** column is empty because the system failed to import the item. The **Last Message** column contains the error explaining the processing failure.


## Step 7 \(Optional\): Reattempting the Product Import { .section}

To reattempt the import of the *Blueberry Jam 32 oz* item, while you are still viewing the synchronization record on the **Failed** tab of the [Sync History](BC_30_10_00.md) \(BC301000\) form, do the following:

1.  In the row with the *Blueberry Jam 32 oz* external description, click the link in the **External ID** column.

    The product management page for the *Blueberry Jam 32 oz* product in the BigCommerce store opens in a new browser tab.

2.  In the **SKU** box \(**Basic Information** section\), enter `BLJAM32`.
3.  In the lower right, click **Save** to save your changes to the product.
4.  Go back to the browser tab with the [Sync History](BC_30_10_00.md) form.
5.  On the **Failed** tab, in the row with the *Blueberry Jam 32 oz* external description, select the unlabeled check box.
6.  On the form toolbar, click **Sync**.

    The system resynchronizes the synchronization record. When the processing has finished successfully, the record disappears from the **Failed** filter tab and is now displayed on the **Processed** filter tab.

7.  On the **Processed** filter tab, review the synchronization record for the *Blueberry Jam 32 oz* item, and make sure that in the **ERP ID** column, the system now displays the inventory ID \(`BLJAM32`\) along with the description. Also notice that the synchronization record is now assigned the *Processed* status.

In this activity, you have configured the product import in Acumatica ERP and then imported products from the BigCommerce store as stock items.

**Parent topic:**[Importing Products](../UserGuide/Commerce_BC_Importing_Products_Mapref.md)

