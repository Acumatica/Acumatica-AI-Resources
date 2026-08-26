# Warehouses: Implementation Activity {#_cdce4540-097e-4eec-ac44-0a4d43fe4089 .task}

In the following implementation activity, you will learn how to create a warehouse and specify warehouse-related settings for stock items and posting classes.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company is going to open a new retail shop in Miami, Florida, with a small warehouse in it for keeping fruits and jams. The warehouse will contain one location where all items will be stored. Organizationally, the shop will be part of the SweetLife Head Office branch. This store will specialize in purchasing, storing, and selling exotic fruits \(such as dragon fruits and guavas\) from Mexico. To track item costs in the new warehouse, you will create a separate inventory account.

To prepare the system for the processing of documents for the new retail shop, you will create a new warehouse, specify warehouse-specific settings for the needed stock items, and specify other warehouse-related settings to support the changes in the company's operations.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, create the inventory account that you will use for the new warehouse.
2.  On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, create the warehouse for the new retail shop.
3.  On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, for the posting class to be assigned to fruit items so that the system uses the inventory account of the warehouse when the items are included in inventory transactions.
4.  On the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, specify warehouse-specific settings for the items that are stored in multiple warehouses.
5.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, process a purchase order and on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the related purchase receipt. Then make sure that the correct inventory account is used in the transactions generated on release of the inventory transaction.

## System Preparation { .section}

Before you start creating a warehouse, you should launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Adding the Inventory Account { .section}

Before you start creating the warehouse for the new shop, you will create the inventory account that you will later specify in the settings of this warehouse. Do the following:

1.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, add a new record.
2.  Specify the following settings in the row:
    -   **Account**: `12200`
    -   **Account Class**: *WAREHOUSE*
    -   **Type**: *Asset*
    -   **Active**: Selected
    -   **Description**: `Inventory Asset for FLORETAIL warehouse`
    -   **Control Account Module**: *IN*
    -   **Allow Manual Entry**: Cleared
    -   **Post Option**: *Summary*
    -   **Cash Account**: Cleared
    -   **Secured**: Cleared
3.  On the form toolbar, click **Save**.

You have created the account that will be specified as the inventory account for the new warehouse. The inventory account for a warehouse is the asset account to be used to maintain the balance of the inventory at this warehouse.

## Step 2: Creating the Warehouse { .section}

To create the warehouse with one location for the new shop, do the following:

1.  On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Warehouse ID**: `FLORETAIL`
    -   **Branch**: *HEADOFFICE*
    -   **Active**: Selected
    -   **Description**: `Retail warehouse in Florida`
3.  On the **Locations** tab, add a location as follows:
    1.  On the form toolbar, click **Add Row**.
    2.  In the **Location ID** column, enter `MAIN`.
    3.  In the **Description** column, enter `Location in the Floretail warehouse`.
    4.  Keep default values in all other columns.
    5.  On the form toolbar, click **Save**.
4.  In the **Receiving Location** box of the **Default Locations** tab, select *MAIN*. The system will copy this location to purchase and inventory receipts by default.
5.  On the **GL Accounts** tab, specify the following settings:
    -   **Override Inventory Account**: Selected
    -   **Inventory Account**: *12200 - Inventory Asset for FLORETAIL warehouse*
    -   **Sales Account**: *40000 - Sales Revenue*
    -   **COGS/Expense Account**: *50000 - COGS - Inventory*
    -   **Standard Cost Variance Account**: *52100 - Standard Cost Adjustments*
    -   **Standard Cost Revaluation Account**: *52110 - Standard Cost Revaluation Account*
    -   **PO Accrual Account**: *20100 - Inventory Purchase Accrual*
    -   **Purchase Price Variance Account**: *52300 - Purchase Price Variance*
    -   **Landed Cost Variance Account**: *52400 - Landed Cost Variance*
6.  On the **Address** tab, specify the following settings:
    -   **Account Name**: `SweetLife Head Office and Wholesale Center`
    -   **City**: `Miami`
    -   **Country**: *US - United States of America*
    -   **State**: *FL - Florida*
7.  On the form toolbar, click **Save**.

You have created a warehouse for the new retail shop.

## Step 3: Changing the Posting Class Settings { .section}

To track items in the `FLORETAIL` warehouse, you have created a separate inventory account and specified it in the warehouse settings. Because fruits will be sold from the Wholesale, Retail, and Floretail warehouses, you need to track costs of fruit items specifically for each warehouse. For fruit items, the *FDI* posting class is used. For this posting class, you will specify that the system must use an inventory account from warehouse settings in transactions with fruit items. To change the settings of the *FDI* posting class, do the following:

1.  On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, open the *FDI* class.
2.  In the **Use Inventory/Accrual Account from** box on the **General** tab, select *Warehouse*.
3.  On the form toolbar, click **Save**.

With this setting, when an item with this posting class specified is included in an inventory transaction, the system will use the inventory account specified in the settings of the warehouse involved in the inventory transaction.

## Step 4: Specifying Item–Warehouse Settings { .section}

Because dragon fruit and guava items purchased in the Floretail warehouse will have Mexico as a country of origin and these items will be typically purchased, stored, and sold from the Floretail warehouse, you need to specify the item settings specific to the new warehouse. The system will use warehouse-specific settings with the higher priority than general settings specified for the items when you process documents with the items. To specify the settings of the dragon fruit and guava stock items in the new warehouse, do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, open the *DRAGONFR* stock item.
2.  Specify the settings for dragon fruit in the *FLORETAIL* warehouse as follows:
    1.  On the table toolbar of the **Warehouses** tab, click **Add Warehouse Detail**.
    2.  On the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, which opens, select *FLORETAIL* in the **Warehouse** box. Notice that in the **Inventory Account** box of the **General** tab, the system has inserted the *12200* account.
    3.  In the **Country of Origin** box, select *MX - Mexico*.
    4.  On the form toolbar, click **Save**.
    5.  Open the [Stock Items](IN_20_25_00.md) form with the *DRAGONFR* stock item selected.
    6.  On the **Warehouses** tab, make sure that the *FLORETAIL* warehouse is listed and the *12200* inventory account is specified for it.
    7.  In the **Default** column, select the check box for the *FLORETAIL* warehouse.
    8.  On the form toolbar, click **Save**.
3.  Specify the settings for guavas in the *FLORETAIL* warehouse as follows:
    1.  In the **Inventory ID** box, select *GUAVAS*.
    2.  On the table toolbar of the **Warehouses** tab, click **Add Warehouse Detail**.
    3.  On the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, which opens, select *FLORETAIL* in the **Warehouse** box. Notice that in the **Inventory Account** box of the **General** tab, the system has inserted the *12200* account.
    4.  In the **Country of Origin** box, select *MX - Mexico*.
    5.  On the form toolbar, click **Save**.
    6.  Open the [Stock Items](IN_20_25_00.md) form with the *GUAVAS* stock item selected.
    7.  On the **Warehouses** tab, make sure that the *FLORETAIL* warehouse is listed and the *12200* inventory account is specified for it.
    8.  In the **Default** column, select the check box for the *FLORETAIL* warehouse.
    9.  On the form toolbar, click **Save**.

For the *DRAGONFR* and *GUAVAS* stock items \(which existed in the system\), you have specified settings specific for the new warehouse.

## Step 5: Processing a Purchase in the New Warehouse { .section}

To make sure that the amounts of the *DRAGONFR* and *GUAVAS* inventory items are posted to the correct inventory account for the *FLORETAIL* warehouse, you will create and process a purchase order and purchase receipt containing one of the items. \(You have specified the inventory account the same way for both items, so it is not necessary to test both.\) You will then view the details of the generated transaction to be sure that the inventory account you specified is used. Do the following:

1.  On the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected.
2.  Create a purchase order for 20 pounds of dragon fruit as follows:
    1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, add a new record.
    2.  In the **Vendor** box of the Summary area, select *GLORYFRUIT*.
    3.  In the **Description** box, type `Purchase of 20 lb of dragon fruit`.
    4.  On the table toolbar of the **Details** tab, click **Add Row**.
    5.  Make sure that in the **Branch** column of the new row, *HEADOFFICE* is specified.
    6.  In the **Inventory ID** column, select *DRAGONFR*.
    7.  In the **Warehouse** column, make sure that *FLORETAIL* is specified.
    8.  In the **Order Qty.** column, type `20`.
    9.  On the form toolbar, click **Remove Hold**. The system automatically saves the purchase order.
3.  Create and process a purchase receipt for the order you have just created as follows:

    1.  While you are still viewing the purchase order, on the form toolbar, click **Enter PO Receipt**. The [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form opens with the relevant details copied from the purchase order. The purchase receipt has the *Balanced* status, so it can be released.
    2.  In the only line, make sure that in the **Location** column, *Main* is specified.
    3.  On the form toolbar, click **Release**.
    4.  On the **Other** tab, click the link in the **IN Ref. Nbr.** box. The system opens the [Receipts](IN_30_10_00.md) \(IN301000\) form in a pop-up window with the inventory receipt that has been created \(and automatically released upon creation\) for the purchase receipt.
    5.  On the **Financial** tab of this form, click the link in the **Batch Nbr.** box. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form in a pop-up window.
    In the table, you can see that the system has debited the *12200* account for this transaction. This means that the system has used an inventory account specified in the *FLORETAIL* warehouse settings.


**Parent topic:**[Managing Warehouses](../UserGuide/Warehouses_Mapref.md)

