# Product Import: To Import Stock Items {#_8a0ad762-951b-4fe2-a9a7-116c841ae587 .task}

The following activity will walk you through the processes of importing stock items from the Shopify store.

## Story { .section}

Suppose that for each product that has been created directly in the Shopify store, the SweetLife Fruits &amp; Jams company wants to maintain item information in Acumatica ERP. Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the Shopify store, you need to configure the import of stock items from the Shopify store to Acumatica ERP and import the existing products from the store.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the *JAM* and *ALLOTHER* item classes have been defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the purposes of this activity.

## Process Overview { .section}

In this activity, you will do the following:

1.  In the admin area of the Shopify store, create products
2.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, perform the minimum configuration of the settings required for the import of stock items from the Shopify store to Acumatica ERP
3.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare product data for import
4.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the product data prepared for import
5.  On the [Sync History](BC_30_10_00.md) \(BC301000\) form, review the results of the synchronization
6.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, review the imported stock items

## System Preparation { .section}

Do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established, as described in [Initial Configuration: To Establish the Store Connection with a Public App](Commerce_SP_To_Establish_Store_Connection_Public_App.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  In the same browser, sign in to the admin area of the Shopify store as the store administrator.

## Step 1: Creating Products in the Shopify Store { .section}

In the Shopify store, create products to be imported to Acumatica ERP as follows:

1.  Do the following to create the `Blueberry Jam 8 oz` product:
    1.  In the left menu, click **Products**.
    2.  On the **Products** page, which opens, in the upper right, click **Add product**.
    3.  On the **Add product** page, which opens, specify the following settings:
        -   **Title**: `Blueberry Jam 8 oz`
        -   **Price** \(**Pricing** section\) : `4.15`
        -   **Status**: *Active* \(the default option\)
        -   **Type** \(**Product organization** section\) : `Jam`
        -   **SKU \(Stock Keeping Unit\)** \(**Inventory** section\) : `BLJAM08`
        -   **This is a physical product** \(**Shipping** section\) : Selected \(the default state\)

            Based on this setting, the item will be imported to Acumatica ERP as a stock item.

    4.  In the upper right, click **Save** to save the product.

        The product management page opens with the created product.

2.  Do the following to create the `Blueberry Jam 32 oz` product:
    1.  In the left menu, click **Products**.
    2.  On the **Products** page, which opens, in the upper right, click **Add product**.
    3.  On the **Add product** page, which opens, specify the following settings:
        -   **Title**: `Blueberry Jam 32 oz`
        -   **Price** \(**Pricing** section\) : `16.89`
        -   **SKU \(Stock Keeping Unit\)** \(**Inventory** section\) : `BLJAM32`
    4.  In the upper right, click **Save** to save the product.

        The product management page opens with the created product.

3.  Do the following to create the `Blueberry Jam 96 oz` product:
    1.  In the left menu, click **Products**.
    2.  On the **Products** page, which opens, in the upper right, click **Add product**.
    3.  On the **Add product** page, which opens, specify the following settings:
        -   **Title**: `Blueberry Jam 96 oz`
        -   **Price** \(**Pricing** section\) : `45.15`
        -   **Type** \(**Product organization** section\) : `Jam`
    4.  In the upper right, click **Save** to save the product.

        The product management page opens with the created product.


## Step 2: Activating the Needed Entity { .section}

To activate the import of stock items from the Shopify store to Acumatica ERP, do the following:

1.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, open the *SweetStore - SP* store.
2.  On the **Entities** tab, in the row with the *Stock Item* entity, specify the following settings:

    -   **Active**: Selected
    -   **Sync Direction**: *Import*
    When you change the sync direction, notice that the system inserts *External System* in the **Primary System** column for the *Stock Item* entity.


## Step 3: Specifying the Inventory Settings { .section}

To specify the settings that will be used by default for importing stock items from the Shopify store to Acumatica ERP, do the following:

1.  While you are still viewing the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Inventory** tab.
2.  In the **Import Settings** section, specify the following settings:
    -   **Inventory Numbering Sequence**: Empty \(the default value\)

        Based on this setting, the system assigns inventory identifiers to items imported to Acumatica ERP based on the stock keeping unit \(SKU\) of the corresponding products in the Shopify store.

    -   **Item Class for Stock Items**: *ALLOTHER*

        This is the default item class based on which stock item records will be created in Acumatica ERP for products imported from the online store.

3.  On the form toolbar, click **Save**.

## Step 4: Preparing the Product Data for Import { .section}

To prepare the stock item data that needs to be imported to the Shopify store, do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, specify the following settings in the Summary area of the form:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
2.  In the table, select the check box in the unlabeled column in the row of the *Stock Item* entity.
3.  On the form toolbar, click **Prepare**.
4.  In the **Processing** dialog box, which opens, click **Close**.

    In the table row with the *Stock Item* entity, notice that the **Ready to Process** column shows the number of synchronization records that have been prepared and are ready to be processed.


## Step 5: Processing the Prepared Product Data { .section}

To import the prepared product data from the Shopify store, while you are still reviewing the data on the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, do the following:

1.  In the row with the *Stock Item* entity, click the link in the **Ready to Process** column.
2.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Stock Item* entity selected, select the unlabeled check boxes in the three rows with no value in the **ERP ID** column and *Blueberry Jam 8 oz*, *Blueberry Jam 32 oz*, and *Blueberry Jam 96 oz* in the **External Description** column.
3.  On the form toolbar, and click **Process**.
4.  In the **Processing** dialog box, which opens, review the results of the processing.

    Notice that the system has processed two products \(as you can see on the **Processed** tile\) and failed to process the third one \(**Errors** tile\).

5.  Click the **Errors** tile. The system expands the table with the results of the processing.

    Because you have specified no inventory numbering sequence for import settings in Step 3, the system assigns inventory identifiers to imported items based on the stock-keeping unit of the corresponding products. The *Blueberry Jam 96 oz* product has no SKU defined in the Shopify store, so the system has failed to import it and assigned it the *Failed* status.

6.  Click **Close** to close the dialog box.

## Step 6: Viewing the Imported Products { .section}

To view the imported product data, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Entity**: *Stock Item*
3.  On the **Processed** tab, in the row with the *Blueberry Jam 8 oz* external description, click the link in the **ERP ID** column to review the imported stock item. The system opens the [Stock Items](IN_20_25_00.md) \(IN202500\) form in a pop-up window with the item selected.

    In the Summary area, notice that the system has inserted the product's SKU, *BLJAM08*, as the item's identifier and that the *Blueberry Jam 8 oz* item description matches the product title in the external system.

    On the **General** tab, notice that the system has assigned the item the *JAM* item class. Based on the *Jam* product type, the system has found a class with the same name on the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

4.  Click the **Price/Cost** tab.

    Notice that the system has assigned the item the *4.15* default price based on the product price.

5.  Click the **Cross-Reference** tab.

    Notice that the system has added a row to the table with the *External SKU* alternate type and the *BLJAM08* alternate ID, which matches the product SKU in the external system.

6.  Close the pop-up window with the [Stock Items](IN_20_25_00.md) form.
7.  On the **Processed** tab of the [Sync History](BC_30_10_00.md) form, to which you return, in the row with the *Blueberry Jam 32 oz* external description, click the link in the **ERP ID** column to review the imported stock item. The system opens the [Stock Items](IN_20_25_00.md) form in a pop-up window with the item selected.

    In the Summary area, notice that the system has inserted the product's SKU, *BLJAM32*, as the item's identifier and that the *Blueberry Jam 32 oz* item description matches the product title in the external system.

    On the **General** tab, notice that the system has assigned the item the *ALLOTHER* item class. Because the *Blueberry Jam 32 oz* product has no product type specified in the Shopify store, the system could not find a corresponding item class on the [Item Classes](IN_20_10_00.md) form. Thus, it assigned the item the default item class for the import of stock items \(which you specified in Step 3\).

8.  Close the pop-up window with the [Stock Items](IN_20_25_00.md) form.
9.  On the [Sync History](BC_30_10_00.md) form, to which you return, go to the **Failed** tab.

    In the row with the *Blueberry Jam 96 oz* external description, notice that the **ERP ID** column is empty because the system has failed to import the item. In the **Last Message** column, the system displays the error explaining the processing failure.


## Step 7 \(Optional\): Reattempting the Product Import { .section}

To reattempt the import of the *Blueberry Jam 96 oz* item, while you are still viewing the synchronization record on the **Failed** tab of the [Sync History](BC_30_10_00.md) \(BC301000\) form, do the following:

1.  In the row with the *Blueberry Jam 96 oz* external description, click the link in the **External ID** column.

    The product management page for the *Blueberry Jam 96 oz* product in the Shopify store opens in a new browser tab.

2.  In the **SKU \(Stock Keeping Unit\)** box \(**Inventory** section\), enter `BLJAM96`.
3.  In the upper right, click **Save** to save your changes to the product.
4.  Go back to the browser tab with the [Sync History](BC_30_10_00.md) form.
5.  On the **Failed** tab, in the row with the *Blueberry Jam 96 oz* external description, select the unlabeled check box.
6.  On the form toolbar, click **Sync**.

    The system resynchronizes the synchronization record. When the processing has finished successfully, the record disappears from the **Failed** filter tab and is now displayed on the **Processed** filter tab.

7.  On the **Processed** filter tab, review the synchronization record for the *Blueberry Jam 96 oz* item, and make sure that in the **ERP ID** column, the system now displays the item ID \(`BLJAM96`\) along with the description. Also notice that the synchronization record is now assigned the *Processed* status.

In this activity, you have configured the product import in Acumatica ERP and then imported products from the Shopify store as stock items.

**Parent topic:**[Importing Products](../UserGuide/Commerce_SP_Importing_Products_Mapref.md)

