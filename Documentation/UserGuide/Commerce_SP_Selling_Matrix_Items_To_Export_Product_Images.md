# Sale of Matrix Items: To Export Product Images {#_37334b3e-e1a0-4919-afea-f3c938cc3ea3 .task}

The following activity will walk you through the process of exporting the product images added for a template item and for a matrix item in Acumatica ERP to the Shopify store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to export to the Shopify store the images it has added for the *JUICE* template and for one of its variants. Some images of the template item are stored in external storage. The others, however, are attached to items in Acumatica ERP. Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the Shopify store, you need to export to the Shopify store an image of the *JUICE* template item and a matrix item generated from this template item.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following steps have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Matrix Items* feature has been enabled.
-   On the [Template Items](IN_20_30_00.md) \(IN203000\) form, the *JUICE* template item has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *PCH-32OZ-GBT* matrix item has been generated from the *JUICE* template item.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, add an image for the template item.
2.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, add an image for the stock item \(which is a matrix item generated from the *JUICE* template\).
3.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the template item data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the template item data.
4.  In the admin area of the Shopify store, review the exported images.
5.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, activate the *Product Image* entity.
6.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the product image data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the product image data.
7.  In the admin area of the Shopify store, review the exported images.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Download the following files to your computer:
    -   http://acumatica-builds.s3.amazonaws.com/builds/University/CommerceTraining/Juice1.png
    -   http://acumatica-builds.s3.amazonaws.com/builds/University/CommerceTraining/Juice2.png
3.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Adding an Image to the Template Item { .section}

To add an image to the *JUICE* template item, do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  In the Summary area, in the **Inventory ID** box, select *Juice*.
3.  On the **Configuration** tab, drag the `Juice1.png` file, which you have downloaded, to the Image area.

    The file is uploaded, and you can browse it in the Image area or access it by clicking **Files** on the form title bar.

4.  On the **eCommerce** tab, in the **Media URLs** table, add a row with the settings shown in the following table.

    |URL|Type|
    |---|----|
    |`http://acumatica-builds.s3.amazonaws.com/builds/University/CommerceTraining/Juice3.png`|*Image*|

5.  On the form toolbar, click **Save**.

## Step 2: Adding an Image to the Matrix Item { .section}

To add an image to the *PCH-32OZ-GBT* stock item, which is a matrix item based on the *JUICE* template item, do the following:

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
2.  In the Summary area, in the **Inventory ID** box, select *PCH-32OZ-GBT*.
3.  On the **Attribute** tab, drag the `Juice2.png` file, which you downloaded, to the Image area.

    The file is uploaded, and you can browse it in the Image area or access it by clicking **Files** on the form title bar.

4.  On the form toolbar, click **Save**.

## Step 3: Synchronizing the Template Item Data { .section}

To prepare and process the template item data \(which includes the data of the matrix items generated from the template item\) for synchronization, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area of the form, specify the following settings:

    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
    *Incremental* indicates that only the records that have been modified since the last successful data synchronization will be prepared.

3.  In the table, select the check box in the unlabeled column in the row of the *Template Item* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Template Item* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Template Item* entity selected, select the unlabeled check box in the row of the *JUICE* template item \(for which the **ERP ID** column shows *Juice*\).
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 4: Reviewing the Synchronized Images { .section}

To review the images that have been exported to the Shopify store for the *Juice* template item, do the following:

1.  Sign in to the admin area of the Shopify store as the store administrator.
2.  In the left menu, click **Products**.
3.  On the **Products** page, which opens, click the row of the *Juice* product to open its product management page.

    On the product management page of the *Juice* product, which opens, notice that the **Media** section contains only one image; this is the image you added to the *Juice* template item as an external link in the **Media URLs** table on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form. Images added to this table are synchronized as part of the synchronization of the *Template Item* entity.


## Step 5: Activating the Product Image Entity { .section}

You can skip this step if you have completed the following activity: [Product Synchronization: To Sync Product Images](Commerce_SP_Syncing_Products_To_Export_Images.md).

To activate the *Product Image* entity, do the following:

1.  Open the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - SP*.
3.  On the **Entities** tab, select the **Active** check box in the row of the *Product Image* entity.
4.  On the form toolbar, click **Save**.

## Step 6: Synchronizing the Product Image Data { .section}

To prepare and process the product image data \(which includes the data of the images attached to template items and matrix items\) for synchronization, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column in the row of the *Product Image* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Product Image* entity, click the link in the **Ready to Process** column.
7.  On the toolbar of the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Product Image* entity selected, click **Process All**.
8.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 7: Reviewing the Exported Images { .section}

To review the images that have been exported to the Shopify store for the *Juice* template item and the matrix item, do the following:

1.  In the left menu of the admin area of the Shopify store, click **Products**.
2.  On the **Products** page, which opens, click the row of the *Juice* product.

    On the product management page of the *Juice* product, which opens, notice that two more images have been added to the **Media** section: one added for the *JUICE* template item on the **Configuration** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form, and the other added for the *PCH-32OZ-GBT* stock item on the **Attributes** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Both images were exported during the synchronization of the *Product Image* entity. The image that was attached to the template item on the **Configuration** tab of the [Template Items](IN_20_30_00.md) form is the main product image and appears larger than other thumbnails.

    In the **Variants** section, notice that the image added for the *PCH-32OZ-GBT* stock item is also displayed for the peach juice as a thumbnail image.

3.  In the top right, click **Preview**, and review how the imported images are displayed on the product page on the storefront.
4.  At the top of the page, click **Catalog**, locate the *Juice* product, and review how the main product image is displayed on the product listing page.

**Attention:** The display of images may differ depending on the theme applied to the store.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

