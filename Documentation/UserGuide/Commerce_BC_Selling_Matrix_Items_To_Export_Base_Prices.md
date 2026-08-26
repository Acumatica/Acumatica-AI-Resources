# Selling Matrix Items: To Export Base Prices {#_2fd6230c-2317-431b-9a15-4d11b3038ee3 .task}

In this activity, you will explore how the base sales prices defined for matrix items are exported from Acumatica ERP and saved in the BigCommerce store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams keeps all of its sales prices, including the prices of matrix items sold in the BigCommerce store, in Acumatica ERP. As an implementation consultant, you want to export sales prices of the *Base* type for all variants of juice \(that is, for all matrix items based on the *JUICE* template item\) from Acumatica ERP to the BigCommerce store.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following entities have been created:

-   On the [Template Items](IN_20_30_00.md) \(IN203000\), the *JUICE* template item
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

-   On the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form, a sales price worksheet with the base prices for the matrix items \(juice variants\)

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form, release a sales price worksheet for the matrix items; on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form, review the added sales prices.
2.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, activate the *Base Sales Price* entity.
3.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the base sales price data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data.
4.  In the control panel of the BigCommerce store, review the exported prices of items.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
    -   The *JUICE* template item has been synchronized with the BigCommerce store, as described in [Selling Matrix Items: To Export Matrix Items](Commerce_BC_Selling_Matrix_Items_To_Export_Matrix_Items.md).
2.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Adding Base Sales Prices for the Matrix Items { .section}

To add sales prices of the *Base* type for the matrix items based on the *JUICE* template item, do the following:

1.  Open the Sales Price Worksheets \(AR2020PL\) form.
2.  In the row of the sale price worksheet with the description *Juices, January 2026*, click the link in the **Reference Nbr.** column.
3.  On the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form, which opens, review the details of the worksheet and the individual price records.

    In the table, notice that each sales price has the *Base* type and a nonzero value in the **Pending Price** column.

    In the Summary area, notice that **Effective Date** is set to *1/1/2026* and there is no value in the **Expiration Date** column. Only prices that are effective at the time of the synchronization are exported to the BigCommerce store.

4.  On the form toolbar, click **Remove Hold** and then click **Release** to release the sales price worksheet.
5.  Open the [Sales Prices](AR_20_20_00.md) \(AR202000\) form.
6.  In the **Item Class ID** box of the Summary area, select *MJUICE*.

    Notice that the table displays all sales prices from the sales price worksheet you released in this step.


## Step 2: Activating the Needed Entity { .section}

To export sales prices of the base type, you need to activate the *Base Sales Price* entity as follows:

1.  Open the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
2.  On the **Entities** tab, select the **Active** check box in the row of the *Base Sales Price* entity.

    When you process this entity, the sales prices of the *Base* type defined on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form are exported.

3.  On the form toolbar, click **Save**.

## Step 3: Synchronizing the Base Sales Prices { .section}

To synchronize the base sales prices, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column for the *Base Sales Price* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Base Sales Price* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Base Sales Price* entity selected, click **Process All** on the form toolbar.
8.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 4: Reviewing the Exported Base Prices { .section}

To view the exported prices of the matrix items based on the *JUICE* template item, do the following:

1.  Sign in to the control panel of the BigCommerce store as the store administrator.
2.  In the left pane, click **Products** &gt; **All products**.
3.  On the **View Products** page, which opens, locate the *JUICE* item in the list of products, and in the row of this item, click the link in the **Name** column.
4.  On the product management page, which opens, in the **Variations** subsection of the **Product Options** section, click **Edit Columns** right of **Variants**, and in the menu, select the **Sale Price** check box.

    Notice that the sales prices that you added in Step 1 and synchronized in Step 3 are displayed in the **Sale Price** column.


**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

