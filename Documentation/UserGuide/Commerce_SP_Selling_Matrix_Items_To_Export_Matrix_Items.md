# Sale of Matrix Items: To Export Matrix Items {#_11f08696-6734-40cf-87a9-ef1e054395a7 .task}

The following activity will walk you through the process of exporting a template item \(and the matrix items based on this template item\) defined in Acumatica ERP to the Shopify store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams company is going to sell juices in its Shopify online store. Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the Shopify store, you need to export the *JUICE* template item to the Shopify store.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Matrix Items* feature has been enabled.
-   On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, the *MJUICE* item class has been created.
-   On the [Attributes](CS_20_50_00.md) \(CS205000\) form, the attributes and the attribute values listed in the following table have been defined.

    |Attribute|Attribute Values|
    |---------|----------------|
    |*Ingredient*|*APL* \(*Apple*\), *CHR* \(*Cherry*\), *ORG* \(*Orange*\), *PCH* \(*Peach*\), *PNL* \(*Pineapple*\), *SWB* \(*Strawberry*\), and *TMT* \(*Tomato*\)|
    |*Package*|*BOX* \(*Box*\), *GBT* \(*Glass bottle*\), *JAR* \(*Jar*\), *PBT* \(*Plastic bottle*\), and *TIN* \(*Tin*\)|
    |*Volume*|*08OZ* \(*08 fl oz*\), *12OZ* \(*12 fl oz*\), *16OZ* \(*16 fl oz*\), *32OZ* \(*32 fl oz*\), and *96OZ* \(*96 fl oz*\)|

-   On the [Template Items](IN_20_30_00.md) \(IN203000\), the *JUICE* template item has been created based on the *MJUICE* item class and the *Ingredient*, *Package*, and *Volume* attributes.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the matrix items listed in the following table have been generated based on the *JUICE* template item.

    |Inventory ID|Description|
    |------------|-----------|
    |*APL-16OZ-GBT*|Apple juice in glass bottles of 16 fluid ounces|
    |*APL-32OZ-GBT*|Apple juice in glass bottles of 32 fluid ounces|
    |*CHR-32OZ-GBT*|Cherry juice in glass bottles of 32 fluid ounces|
    |*ORG-16OZ-GBT*|Orange juice in glass bottles of 16 fluid ounces|
    |*ORG-32OZ-GBT*|Orange juice in glass bottles of 32 fluid ounces|
    |*PCH-32OZ-GBT*|Peach juice in glass bottles of 32 fluid ounces|
    |*PNL-16OZ-GBT*|Pineapple juice in glass bottles of 16 fluid ounces|
    |*SWB-32OZ-GBT*|Strawberry juice in glass bottles of 32 fluid ounces|
    |*TMT-16OZ-GBT*|Tomato juice in glass bottles of 16 fluid ounces|


## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, review the *JUICE* template item.
2.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, update the filtering conditions to export the template items of the *MJUICE* item class.
3.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, activate the *Template Item* entity.
4.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the template item data for synchronization.
5.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the template item data that has been prepared for synchronization.
6.  In the admin area of the Shopify store, review the exported item.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Reviewing the Template Item and the Matrix Items { .section}

To review the *JUICE* template item and the matrix items that have been generated based on it, do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  In the **Template ID** box, select *JUICE*.
3.  On the **Configuration** tab, review the attributes specified for the template item and their settings.

    In the **Attributes** table, notice that the following attributes of the *Variant* type have been defined \(and can be used for the matrix items of the template item\):

    -   *Ingredient*
    -   *Package*
    -   *Volume*
4.  In the **Inventory ID Segment Settings** table, notice the settings for the automatic generation of the identifiers that have been assigned to matrix items. The segments are generated based on the attribute values \(**Segment Type** is set to *Attribute Value* for all segments\), and the length of each segment is determined by the value in the **Number of Characters** column.
5.  On the **Matrix Items** tab, review the list of matrix items that have been generated based on the attributes configured for the *Juice* template item.

    In the subsequent steps of this activity, you will export these items to the Shopify store.


## Step 2: Activating the Template Item Entity { .section}

You can skip this step, if you activated the *Template Item* entity while performing the following activity: [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).

To activate the *Template Item* entity, do the following:

1.  Open the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - SP*.
3.  In the table of the **Entities** tab, select the **Active** check box in the row of the *Template Item* entity.
4.  On the form toolbar, click **Save**.

## Step 3: Updating the Filtering Condition { .section}

To configure the *Template Item* entity to export to the Shopify store only template items of the *MJUICE* item class, do the following:

1.  Open the Entities \(BC2020PL\) form.
2.  In the **Store Name** box of the Selection area, select *SweetStore - SP*.
3.  In the **Entity** column, click the *Template Item* link.

    The system opens the [Entities](BC_20_20_00.md) \(BC202000\) form with the *SweetStore - SP* store and the *Template Item* entity selected in the Summary area. Notice that this entity can only be exported to the Shopify store \(that is, **Sync Direction** is set to *Export*\), and that only two tabs, **Export Mapping** and **Export Filtering**, are displayed.

4.  To create a filtering condition for template items, on the **Export Filtering** tab, click **Add Row** on the table toolbar, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Field Name**: *Item Class*
    -   **Condition**: *Equals*
    -   **Value**: `MJUICE`
5.  On the form toolbar, click **Save** to save your changes.

    Now when you prepare and process the *Template Item* entity, only the template items of the *MJUICE* item class will be exported to the Shopify store.


## Step 3: Preparing the Template Item Data for Synchronization { .section}

To prepare the template item data \(which includes the data of the matrix items generated based on the template item\) for synchronization, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
    -   Because you have not processed the *Template Item* entity for *SweetStore - SP* before, the system will prepare all template item records will be prepared as it would if *Full* mode were selected.

3.  In the table, select the check box in the unlabeled column in the row of the *Template Item* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box and return to the [Prepare Data](../Shared/../UserGuide/BC_50_10_00.md) form.

    Notice that the **Prepared Records** column shows the number of synchronization records that have been prepared and are ready to be processed.


## Step 4: Processing the Prepared Template Item Data { .section}

To process the prepared data of the template item, do the following:

1.  While you are still viewing the [Prepare Data](BC_50_10_00.md) \(BC501000\) form with the *SweetStore - SP* store selected, click the link in the **Ready to Process** column in the row of the *Template Item* entity.
2.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Template Item* entity selected, notice that the table contains a single row of the *JUICE* template item \(for which the **ERP ID** column shows *Juice*\).
3.  On the form toolbar, click **Process All**.
4.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 5: Viewing the Exported Item { .section}

To view the exported *Juice* template item in the Shopify store, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Entity**: *Template Item*
3.  On the **Processed** tab, in the row of the *Juice* template item, click the link in the **External ID** column.

    **Attention:** If you are not signed in to the admin area of the Shopify store in the same browser, you will need to enter your sign-in credentials.

4.  On the product management page, which opens for the *Juice* product, review the exported settings.

    In the **Variants** table, notice that the variants of the product \(which are the matrix items that were generated in Acumatica ERP\) are displayed.


You have now exported the template item and its matrix items to the Shopify store.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

