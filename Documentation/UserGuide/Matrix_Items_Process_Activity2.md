# Matrix Items: To Sell Matrix Items {#_970be9a0-64c0-41f1-bd6a-de97bd80e181 .task}

The following activity will walk you through the process of creating and processing sales documents that contain matrix items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that HM's Bakery &amp; Cafe have ordered from SweetLife Fruits &amp; Jams cherry, peach, and strawberry juice in glass bottles of 32 fluid ounces, ordering 10 units of each. You, as a sales manager of SweetLife, will process the appropriate sales documents that contain these items.

**Note:** For simplicity, in this activity, you will create and process all documents in the system during the same business date.

## Configuration Overview { .section}

For the purposes of this lesson, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Matrix Items*
-   *Inventory*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *WHOLESALE* warehouse on the [Warehouses](IN_20_40_00.md) \(IN204000\) form
-   The *MJUICE* item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form
-   The *HMBAKERY* customer on the [Customers](AR_30_30_00.md) \(AR303000\) form
-   The following attributes on the [Attributes](CS_20_50_00.md) \(CS205000\) form: *VOLUME*, *PACKAGE*, and *INGREDIENT*
-   The *JUICE* template item on the [Template Items](IN_20_30_00.md) \(IN203000\) form
-   The following matrix items on the [Stock Items](IN_20_25_00.md) \(IN202500\) form: *CHR-32OZ-GBT*, *PCH-32OZ-GBT*, and *SWB-32OZ-GBT* \(that is, the matrix items for cherry, peach, and strawberry juice, respectively, in glass bottles of 32 fluid ounces, all of which are available in stock\)

## Process Overview { .section}

To perform the sale of matrix items in this activity, you will create a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, select an order type that supports quick processing, select the customer to which the items are being sold, and add the juice bottles to the order by using the **Add Matrix Item** dialog box. You will click **Quick Process** on the form toolbar, review the quick processing settings, and correct them, if needed. Then you will run quick processing, during which the system will process the sales order to completion and generate all needed documents. When the quick processing completes, you will review the generated documents and verify them.

## System Preparation { .section}

Do the following:

1.  Launch the Acumatica ERP website, and sign in as a sales manager by using the *gibbs* login and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, make sure that the SweetLife Head Office and Wholesale Center branch is selected.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating a Sales Order { .section}

To create a sales order, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, create a sales order, and specify the following settings in the Summary area:
    -   **Order Type**: *SO*
    -   **Customer**: *HMBAKERY*
    -   **Date**: Today
    -   **Requested On**: Today
    -   **Description**: `Sale of cherry, peach, and strawberry juice`
2.  On the table toolbar of the **Details** tab, click **Add Matrix Items**. The system opens the **Add Matrix Item: Matrix View** dialog box.
3.  In the dialog box, do the following:
    1.  In the **Template ID** box, select *JUICE*.
    2.  In the **Warehouse** box, select *WHOLESALE*.
    3.  Select the **Display Availability Details** check box. In the table footer, the system will display availability details when you click any matrix cell.
    4.  In the only row of the **Package** column \(which is located right of the Summary area\), select *GBT - Glass Bottle*.
    5.  In the matrix table, specify the quantities listed in the following table.

        |Attribute Value|Cherry|Peach|Strawberry|
        |---------------|------|-----|----------|
        |**32 fl oz**|`10`|`10`|`10`|

    6.  Click **Add and Close** to add the items to the **Details** tab of the sales order.
4.  In the **Unit Price** column of this tab, specify the following unit prices for the items:
    -   *CHR-32OZ-GBT*: `16.99`
    -   *PCH-32OZ-GBT*: `14.99`
    -   *SWB-32OZ-GBT*: `16.99`
5.  On the form toolbar, click **Save**.

You have created a sales order with matrix items.

## Step 2: Processing Shipment and Invoice { .section}

To create and process the shipment and invoice related to the created sales order, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the More menu, click **Quick Process**.
2.  In the **Process Order** dialog box, which opens so that you can review \(and change, if needed\) the settings before quickly processing the order, do the following:
    1.  In the **Warehouse ID** box, make sure that *WHOLESALE* is selected.
    2.  In the **Shipment Date** section, make sure that *Today* is selected.
    3.  In the **Shipping** section, make sure that the following check boxes are selected:
        -   **Create Shipment**
        -   **Confirm Shipment**
        -   **Update IN**
    4.  In the **Invoicing** section, make sure that the **Prepare Invoice** check box is selected.
    5.  Select the **Release Invoice** check box.
    6.  Click **OK**.
    7.  After the system creates the documents, close the **Processing Results** box \(which the system has opened\). Notice that the sales order now has the *Completed* status.

You have successfully created a sales order with matrix items and processed the related shipment and invoice.

**Parent topic:**[Managing Matrix Items](../UserGuide/Matrix_Items_Mapref.md)

