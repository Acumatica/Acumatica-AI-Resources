# Matrix Items: To Purchase Matrix Items {#_ed62e4ee-c620-4ebd-9d56-c4daf1bf8d00 .task}

The following activity will walk you through the process of creating and processing purchasing documents that contain matrix items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has started to sell fruit and vegetable juice. You, as a purchasing manager of the company, have a task to order apple, tomato, pineapple, and orange juice in glass bottles of 16 and 32 fluid ounces, 20 units of each variant, from the All Fruits Mall vendor and receive the juice in the wholesale warehouse.

Stock items for juice have been added to the system as matrix items, but the items for tomato and pineapple juice in glass bottles of 32 fluid ounces were not created during the initial creation of these matrix items. The system will create these matrix items automatically when you create a purchase order.

**Note:** For simplicity, in this activity, you will create and process all documents in the system during the same business date.

## Configuration Overview { .section}

For the purposes of this lesson, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Matrix Items*
-   *Inventory*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *WHOLESALE* warehouse on the [Warehouses](IN_20_40_00.md) \(IN204000\) form
-   The *MJUICE* item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form
-   The *ALLFRUITS* vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form
-   The following attributes on the [Attributes](CS_20_50_00.md) \(CS205000\) form: *VOLUME*, *PACKAGE*, and *INGREDIENT*
-   The *JUICE* template item on the [Template Items](IN_20_30_00.md) \(IN203000\) form
-   The following matrix items on the [Stock Items](IN_20_25_00.md) \(IN202500\) form: *APL-16OZ-GBT*, *APL-32OZ-GBT*, *ORG-16OZ-GBT*, *ORG-32OZ-GBT*, *PNL-16OZ-GBT*, and *TMT-16OZ-GBT* \(that is, the matrix items for apple and orange juice in glass bottles of 16 and 32 fluid ounces, and for pineapple and tomato juice in glass bottles of 16 fluid ounces\)

## Process Overview { .section}

To prepare the purchasing documents for matrix items in this activity, you will do the following:

1.  Prepare a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form to order the juice bottles from the vendor.
2.  Prepare a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form when you receive the juices from the vendor.
3.  Review the availability of the purchased juices on the [Matrix Inventory Summary](IN_40_15_00.md) \(IN401500\) form.

## System Preparation { .section}

Do the following:

1.  Launch the Acumatica ERP website, and sign in as a purchasing manager by using the *wiley* login and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, make sure that the SweetLife Head Office and Wholesale Center branch is selected.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating a Purchase Order { .section}

To create a purchase order for 20 units of apple, orange, tomato, and pineapple juice in glass bottles of 16 and 32 fluid ounces, do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, create a purchase order, and specify the following settings in the Summary area:
    -   **Type**: *Normal*
    -   **Vendor**: *ALLFRUITS*
    -   **Date**: Today
    -   **Promised On**: Today
    -   **Description**: `Purchase of bottled juice`
2.  On the table toolbar of the **Details** tab, click **Add Matrix Items**. The **Add Matrix Item: Matrix View** dialog box opens. At the bottom of the dialog box, click **Open Table View**.
3.  In the **Add Matrix Item: Table View** dialog box, which opens, do the following:
    1.  In the **Template ID** box, select *JUICE*.
    2.  In the **Warehouse** box, select *WHOLESALE*.
    3.  Add rows with the following settings to the table

        |Ingredient|Package|Volume|Quantity|
        |----------|-------|------|--------|
        |*Apple*|*Glass bottle*|*16 fl oz*|`20`|
        |*Apple*|*Glass bottle*|*32 fl oz*|`20`|
        |*Orange*|*Glass bottle*|*16 fl oz*|`20`|
        |*Orange*|*Glass bottle*|*32 fl oz*|`20`|
        |*Pineapple*|*Glass bottle*|*16 fl oz*|`20`|
        |*Pineapple*|*Glass bottle*|*32 fl oz*|`20`|
        |*Tomato*|*Glass bottle*|*16 fl oz*|`20`|
        |*Tomato*|*Glass bottle*|*32 fl oz*|`20`|

        As you enter the rows, the applicable inventory IDs are filled in. Notice that for the *PNL-32OZ-GBT* and *TMT-32OZ-GBT* items, the check box in the **New** column is selected. This means that the items do not currently exist in the system and will be created when you add the items to the order.

    4.  Click **Add and Close** to add the items to the purchase order. The system has created the *PNL-32OZ-GBT* and *TMT-32OZ-GBT* stock items and added all the items to the **Details** tab of the form.
4.  In the **Unit Cost** column of the tab, specify `6.99` for the items in bottles of 16 fluid ounces and `9.99` for the items in bottles of 32 fluid ounces.
5.  On the form toolbar, click **Remove Hold** so that you can continue processing the purchase order.

You have created the purchase order that contains matrix items.

## Step 2: Processing the Purchase Receipt { .section}

Suppose that you have received the ordered juice in the wholesale warehouse. Create the purchase receipt for the purchase order as follows:

1.  On the form toolbar of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form while you are still viewing the purchase order, click **Enter PO Receipt**. The system prepares the purchase receipt for the selected purchase order and opens it on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.
2.  Select the **Create Bill** check box so that the system will create the related AP bill automatically during the release of the purchase order.
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, click **Release**.
5.  On the **Other** tab, click the **IN Ref. Nbr.** link, and review the details of the generated inventory receipt, which the system opens on the [Receipts](IN_30_10_00.md) \(IN301000\) form. Make sure the inventory receipt has the *Released* status.

You have processed the purchase receipt with matrix items.

## Step 3: Reviewing Item Availability { .section}

To make sure that the matrix items you have ordered are being tracked as available in the wholesale warehouse, do the following:

1.  Open the [Matrix Inventory Summary](IN_40_15_00.md) \(IN401500\) form.
2.  In the Summary area, specify the following:
    -   **Template ID**: *JUICE*
    -   **Column Attribute ID**: *INGREDIENT*
    -   **Row Attribute ID**: *VOLUME*
    -   **Warehouse**: *WHOLESALE*
    -   **Plan Type**: *Available*
3.  In the only row of the **Package** column \(which is immediately below the Summary area\), select *GBT - Glass Bottle*. The system will use this value to generate all items of this group.
4.  In the table, make sure that the ordered and received items are available in the wholesale warehouse.

You have processed the documents that reflect ordering matrix items and receiving the items in a warehouse.

**Parent topic:**[Managing Matrix Items](../UserGuide/Matrix_Items_Mapref.md)

