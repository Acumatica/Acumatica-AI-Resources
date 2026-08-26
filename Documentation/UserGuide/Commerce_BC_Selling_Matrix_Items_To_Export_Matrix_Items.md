# Selling Matrix Items: To Export Matrix Items {#_eaa19f1d-d134-422a-95e3-d6940d254c61 .task}

The following activity will walk you through the process of exporting a template item \(and the matrix items based on this template item\) defined in Acumatica ERP to the BigCommerce store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams company is going to sell juices in its BigCommerce online store. Acting as an implementation consultant helping SweetLife to set up the integration of Acumatica ERP with the BigCommerce store, you need to export the *JUICE* template item to the BigCommerce store.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following entities have been created:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Matrix Items* feature has been enabled.
-   On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, the *MJUICE* item class
-   On the [Template Items](IN_20_30_00.md) \(IN203000\) form, the *JUICE* template item
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the matrix items listed in the following table

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

-   On the [Attributes](CS_20_50_00.md) \(CS205000\) form, the attributes and the attribute values listed in the following table

    |Attribute|Attribute Values|
    |---------|----------------|
    |*Ingredient*|*APL* \(*Apple*\), *CHR* \(*Cherry*\), *ORG* \(*Orange*\), *PCH* \(*Peach*\), *PNL* \(*Pineapple*\), *SWB* \(*Strawberry*\), and *TMT* \(*Tomato*\)|
    |*Package*|*BOX* \(*Box*\), *GBT* \(*Glass bottle*\), *JAR* \(*Jar*\), *PBT* \(*Plastic bottle*\), and *TIN* \(*Tin*\)|
    |*Volume*|*08OZ* \(*08 fl oz*\), *12OZ* \(*12 fl oz*\), *16OZ* \(*16 fl oz*\), *32OZ* \(*32 fl oz*\), and *96OZ* \(*96 fl oz*\)|


## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, review the *JUICE* template item.
2.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, activate the *Template Item* entity.
3.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, update the filtering conditions to export the template items of the *MJUICE* item class.
4.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the template item data for synchronization.
5.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the template item data that has been prepared for synchronization.
6.  In the control panel of the BigCommerce store, review the exported item.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
    -   The sales categories have been synchronized with the BigCommerce store, as described in the steps of the following activity: [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md).
2.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in with the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Matrix Items* feature is enabled as follows:
    1.  On the form toolbar, click **Modify**, and select the **Matrix Items** check box under **Inventory and Order Management**.
    2.  On the form toolbar, click **Enable**.

## Step 1: Reviewing the Template Item and the Matrix Items { .section}

To review the *JUICE* template item and the matrix items that have been generated based on it, do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  In the **Template ID** box, select *JUICE*.
3.  On the **Configuration** tab, review the attributes specified for the template item and their settings.

    In the **Attributes** table, notice that the following attributes of the *Variant* type have been defined \(and can be used for the matrix items of the template item\):

    -   *Ingredient*
    -   *Package*
    -   *Volume*
    See the *Configuration Overview* section for details on the values defined for these attributes.

4.  In the **Inventory ID Segment Settings** table, notice the settings for the automatic generation of the identifiers that have been assigned to matrix items. The segments are generated based on the attribute values \(**Segment Type** is set to *Attribute Value* for all segments\), and the length of each segment is determined by the value in the **Number of Characters** column.
5.  On the **Matrix Items** tab, review the list of matrix items that have been generated based on the attributes configured for the *Juice* template item.

    In the subsequent steps of this activity, you will export these items to the BigCommerce store.


## Step 2: Activating the Template Item Entity { .section}

You can skip this step, if you activated the *Template Item* entity while performing the following activity: [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).

To activate the *Template Item* entity, do the following:

1.  Open the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - BC*.
3.  In the table of the **Entities** tab, select the **Active** check box in the row of the *Template Item* entity.
4.  On the form toolbar, click **Save**.

## Step 3: Updating the Filtering Condition { .section}

To configure the *Template Item* entity to export to the BigCommerce store only template items of the *MJUICE* item class, do the following:

1.  Open the Entities \(BC2020PL\) form.
2.  In the **Store Name** box of the Selection area, select *SweetStore - BC*.
3.  In the **Entity** column, click the *Template Item* link.

    The system opens the [Entities](BC_20_20_00.md) \(BC202000\) form with the *SweetStore - BC* store and the *Template Item* entity selected in the Summary area. Notice that this entity can only be exported to the BigCommerce store \(that is, **Sync Direction** is set to *Export*\), and that only two tabs, **Export Mapping** and **Export Filtering**, are displayed.

4.  To create a filtering condition for template items, on the **Export Filtering** tab, click **Add Row** on the table toolbar, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Field Name**: *Item Class*
    -   **Condition**: *Equals*
    -   **Value**: `MJUICE`
5.  On the form toolbar, click **Save** to save your changes.

    Now when you prepare and process the *Template Item* entity, only the template items of the *MJUICE* item class will be exported to the BigCommerce store.


## Step 4: Preparing the Template Item Data for Synchronization { .section}

To prepare the template item data \(which includes the data of the matrix items generated based on the template item\) for synchronization, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:

    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
    *Incremental* indicates that only records that have been modified since the last successful data preparation will be prepared. However, because you have not prepared the *Template Item* entity for *SweetStore - BC* before, all records will be prepared \(as they would be if *Full* were selected\).

3.  In the table, select the check box in the unlabeled column in the row of the *Template Item* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

    Notice that the **Ready to Process** column shows the number of synchronization records that have been prepared for the *Template Item* entity.


## Step 5: Processing the Prepared Template Item Data { .section}

To process the prepared data of the template item, do the following:

1.  While you are still viewing the [Prepare Data](BC_50_10_00.md) \(BC501000\) form with the *SweetStore - BC* store selected, click the link in the **Ready to Process** column in the row of the *Template Item* entity.
2.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Template Item* entity selected, select the unlabeled check box in the row of the *JUICE* template item \(for which the **ERP ID** column shows *Juice*\).
3.  On the form toolbar, click **Process**.
4.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 6: Viewing the Exported Item { .section}

To view the exported *Juice* template item in the BigCommerce store, do the following:

1.  Sign in to the control panel of the BigCommerce store as the store administrator.
2.  In the left pane, click **Products** &gt; **All products**.
3.  On the **View Products** page, which opens, locate the *Juice* product, and click the link in the **Name** column.
4.  On the product management page of the *Juice* product, review the exported settings.

    In the **Product Options** section, notice that in the **Variant Options** section, the option names \(which correspond to the attributes that were configured and added for the template item in Acumatica ERP\) and their values are displayed.

    In the **Variants** table, the variants of the *Juice* product \(which are the matrix items that were generated in Acumatica ERP\) are displayed. The **SKU** column of the table shows the identifiers of matrix items assigned by Acumatica ERP.

5.  At the top of the page, click **View on Storefront**.

    On the product page, which opens for the *Juice* product, notice three boxes \(**Ingredient**, **Package**, and **Volume**\), which correspond to product options on the product management page and attributes of the *Variant* type assigned to the *JUICE* template item in Acumatica ERP.


**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

