# Vendor Relations: Process Activity {#_83a0731b-77d6-4b65-9629-9e2a83d0ff07 .task}

This activity will walk you through the process of setting up and using vendor relations in purchase documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams wants to buy fruit from a big vendor \(All Fruits Mall\). SweetLife pays this vendor, but the goods are supplied by a child company of this vendor \(Glory Fruit Case\). On 1/30/2026, SweetLife sent its purchase order to Glory Fruit Case. The Glory Fruit Case vendor issued a bill to SweetLife, and SweetLife paid this bill to All Fruits Mall even though it ordered fruit from Glory Fruit Case.

Acting as an accountant of SweetLife, you need to set up the vendor relations in the system, and create and process documents for both companies.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Inventory and Order Management* and *Inventory*, which supports the creation of purchase orders with stock items selected in the lines of these orders
-   On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *ALLFRUITS \(All Fruits Mall\)* and *GLORYFRUIT \( Glory Fruit Case\)* vendors have been configured.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *GRAPEFRUIT* stock item has been created and is available in the *WHOLESALE* warehouse.

## Process Overview { .section}

In this activity, you will enable the *Vendor Relations* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and set up the vendor relations on the [Vendors](AP_30_30_00.md) \(AP303000\) form. On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you will create an order for the supplied-by vendor. On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you will process a purchase receipt for the order and generate an AP bill. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will review the bill for the pay-to vendor and pay the bill on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Vendor Relations* feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Vendor Relations** check box in the **Inventory and Order Management** group of features.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Specifying a Pay-To Vendor for the Supplied-By Vendor { .section}

To specify the pay-to vendor \(All Fruits Mall\) for the supplied-by vendor \(Glory Fruit Case\), do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *GLORYFRUIT* \(the vendor that will be a supplied-by vendor\).
3.  On the **Payment** tab, in the **Pay-to Vendor** box of the **Default Payment Settings** section, select *ALLFRUITS*.

    This is the vendor that the system will use by default in bills and debit adjustments when the vendor selected on the form is selected in purchase orders or purchase receipts.

4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Reviewing the Pay-To Vendor of the Supplied-By Vendor { .section}

To review the settings of the *ALLFRUITS* vendor \(that is, the pay-to vendor\) and make sure the supplied-by vendor is specified correctly, do the following:

1.  While you are still on the [Vendors](AP_30_30_00.md) \(AP303000\) form, in the **Vendor ID** box, select *ALLFRUITS*.

    This is the vendor that has been specified in the **Pay-to Vendor** box for the *GLORYFRUIT* vendor.

2.  On the **Supplied-by Vendors** tab \(which appears for only a pay-to vendor\), make sure the *GLORYFRUIT* vendor is listed in the table; it is listed because in its settings, you specified the *ALLFRUITS* vendor as their pay-to vendor.

## Step 4: Creating a Purchase Order { .section}

To create a purchase order for the *GLORYFRUIT* vendor, do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Normal*
    -   **Vendor**: *GLORYFRUIT*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Promised On**: *1/30/2026* \(inserted automatically\)
    -   **Description**: `Purchase of grapefruit`
3.  On the **Details** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *GRAPEFRUIT*
    -   **Warehouse**: *WHOLESALE*
    -   **Order Qty.**: `100`
    -   **Unit Cost**: `15`
4.  On the form toolbar, click **Save**.
5.  Go to the **Vendor Info** tab.

    Notice that the **Pay-to Vendor** box contains *ALLFRUITS* as the pay-to vendor of *GLORYFRUIT*. It was inserted because you specified this setting in Step 2.

6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the purchase order.

## Step 5: Processing the Purchase Receipt { .section}

To create a purchase receipt for the purchase order and generate an AP bill, do the following:

1.  While you are still viewing the *Purchase of grapefruit* order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, on the form toolbar, click **Enter PO Receipt**.

    The system prepares the purchase receipt for the selected purchase order and opens it on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

2.  On the form toolbar, click **Save**.
3.  Review the settings of the prepared purchase receipt.
4.  Select the **Create Bill** check box in the Summary area.
5.  On the form toolbar, click **Release**. Wait for the system to complete the operation.
6.  Go to the **Orders** tab and review the value in the **Pay-to Vendor** column for the only row.

    This column displays *ALLFRUITS* because the payment for the bill will be automatically generated for this vendor.


## Step 6: Reviewing the AP Bill { .section}

The system automatically generated an AP bill for the purchase order when you released the purchase receipt. To review this bill, do the following:

1.  While you are still viewing the purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, go to the **Billing** tab and click the link in the **Reference Nbr.** column.
2.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, which the system has opened, review the AP bill. Notice that the vendor specified in the **Vendor** box of the Summary area is *ALLFRUITS*.
3.  Go to the **Financial** tab and review the information in the **Receipt Info** section.

    The **Supplied-by Vendor** box contains *GLORYFRUIT* because it is the vendor that received the purchase order and supplied the goods.


## Step 7: Paying the AP Bill { .section}

To pay the AP bill for the purchase order, do the following:

1.  While you are still viewing the AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, on the form toolbar, click **Pay**.

    The system creates a payment and opens it on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

2.  On the **Documents to Apply** tab, review the bill’s settings. Notice that the **Supplied-By Vendor** column shows *GLORYFRUIT* even though the vendor selected in the **Vendor** box is *ALLFRUITS*.
3.  On the form toolbar, click **Remove Hold**.
4.  On the form toolbar, click **Print/Process** to print the check.
5.  On the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, which is opened, click **Process**.

    The system opens a report with the printed version of the check.

6.  Close the page with the printed version of the check; on the [Release Payments](AP_50_52_00.md) \(AP505200\) form, which is opened, click **Process**.

    The system releases the payment to the vendor.


**Parent topic:**[Managing Vendor Relations](../UserGuide/Finance_Managing_Vendor_Relations_Mapref.md)

