# Items with Lot and Serial Numbers: To Purchase and Sell Serialized Items {#_847ed262-b5fd-42ea-8919-383a931ad56e .task}

In the following activity, you will learn how to create and process purchase and sales documents for a stock item with a serial number that is entered manually into each shipment that includes units of the item.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

In this activity, you will act as sales and purchasing manager Pam Brawner in the Service and Equipment Sales Center of the SweetLife Fruits &amp; Jams company.

Suppose that you have received an order for two juicers with a production rate of 0.5 liter per minute from the Thai Food Restaurant customer. You do not have these juicers available in the warehouse for equipment storage, so you will purchase the juicers from the Squeezo Inc. vendor. The vendor provides juicers with serial numbers, which you do not need to track when the items are in the warehouse. But you need to track these numbers when the juicers are sold so that if a customer wants to return the juicer or request services, you can make sure that the juicer is one that the customer bought from your company.

You will process the sales order and the related purchase order in the system and enter serial numbers manually when processing the shipment.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
    -   *Inventory*, which gives you the ability to maintain stock items by using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *EQUIPHOUSE* warehouse has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *JUICER05С* stock item has been created.
-   On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, the *SRNJCR* serial class \(a class for tracking juicers by serial numbers\) has been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *SQUEEZO* vendor has been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *TOMYUM* customer has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, prepare a sales order and mark all items to be purchased for sale.
2.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, prepare a purchase order to order the items from the vendor.
3.  On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, prepare a purchase receipt when you receive the items from the vendor.
4.  On the [Shipments](SO_30_20_00.md) \(SO302000\) form, create a shipment.
5.  On the [Shipments](SO_30_20_00.md) form, enter the serial numbers of the units of the items to be sold.
6.  On the [Shipments](SO_30_20_00.md) form, confirm the shipment, and on the [Invoices](SO_30_30_00.md) \(SO303000\) form, process the related invoice.

## System Preparation { .section}

Before you start preparing the purchasing and sales documents for items with serial numbers, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as sales and purchasing manager Pam Brawner by using the *brawner* username and the *123* password.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Lot and Serial Tracking* feature is enabled.

## Step 1: Creating a Sales Order { .section}

To create the sales order for two juicers from the *TOMYUM* customer, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Order Type**: *SO*
    -   **Customer**: *TOMYUM*
    -   **Description**: `Sale of juicers with the 0.5 production rate`
3.  On the table toolbar of the **Details** tab, click **Add Row**.
4.  In the row, specify the following settings:
    -   **Inventory ID**: *JUICER05C*
    -   **Warehouse**: *EQUIPHOUSE*
    -   **Quantity**: `2`
    -   **Unit Price**: `700`
    -   **Mark for PO**: Selected

        By selecting the **Mark for PO** check box, you have marked the order line for purchasing, and it will be available for adding to a purchase order.

    -   **PO Source**: *Purchase to Order*
5.  On the form toolbar, click **Save**. The sales order is saved with the *Open* status.

You have created a sales order for the juicers and marked the item to be purchased for sale; now you will create a purchase order.

## Step 2: Creating a Purchase Order { .section}

Now you will create a purchase order for two units of the *JUICER05C* item from the *SQUEEZO* \(Squeezo Inc.\) vendor. To create a purchase order for the items that are marked for purchase, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click **Create Purchase Order** on the More menu.
2.  On the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form, which opens, in the row with *SO to Purchase* specified as the **Plan Type**, do the following:
    1.  In the unlabeled column, select the Included check box to include this row in processing.
    2.  In the **Warehouse** column, make sure that *EQUIPHOUSE* is selected.
    3.  In the **Vendor** column, select *SQUEEZO*.
3.  On the form toolbar, click **Process** to process the purchase request.

    The **Processing** dialog box opens. Wait for the system to complete the operation. The system creates a purchase order for the *SQUEEZO* vendor and opens it on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

4.  In the **Description** box of the Summary area, type `Purchase of juicers with the 0.5 production rate`.
5.  On the **Details** tab, in the **Unit Cost** column, type `500` in the line.
6.  On the form toolbar, click **Remove Hold**. The system saves the purchase order and the status of the purchase order changes to *Open*.

You can now print the purchase order and send it to the Squeezo Inc. vendor by mail. In this activity, we will skip this step.

## Step 3: Creating a Purchase Receipt { .section}

Suppose that the Squeezo Inc. vendor has delivered the juicers to the *EQUIPHOUSE* warehouse. To prepare the needed documents to reflect the receipt of the juicers, do the following:

1.  While you are still viewing the purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, click **Enter PO Receipt** on the form toolbar. The system opens the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form with the new receipt, which has the *Balanced* status and the data copied from the linked purchase order.
2.  In the Summary area, select the **Create Bill** check box to make the system generate the bill automatically on release of the purchase receipt.
3.  On the form toolbar, click **Release** to release the purchase receipt. Notice that the system has not required you to add serial numbers to the document; based on the *SRNJCR* serial class settings, serial numbers are entered when items are issued rather than when they are received.
4.  On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, in the Selection area, do the following:
    1.  In the **Inventory ID** box of the Selection area, select *JUICER05C*.
    2.  Make sure that the quantity of juicers you have received \(*2*\) is displayed in the **On Hand** box.
    3.  On the **Item Plans** tab, review the only line in the table, which shows that two *JUICER05C* units are allocated directly for the sales order for which you have processed the purchase.
    4.  Double-click the line to open the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form in a pop-up window.

The ordered juicers are ready for shipment.

## Step 4: Creating a Shipment { .section}

To create a shipment with the ordered and received juicers, do the following:

1.  While you are still viewing the sales order you have created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the form toolbar, click **Create Shipment**.
2.  In the **Specify Shipment Parameters** dialog box, which opens, make sure that today's date and the *EQUIPHOUSE* warehouse are selected, and click **OK**. The system creates a shipment and opens it on the [Shipments](SO_30_20_00.md) \(SO302000\) form in a pop-up window.

Notice that the system displays a warning on the **Details** tab that serial numbers are not specified for the juicer units and displays the ordered quantity of juicers in the **Unassigned Qty.** column. This means that you need to specify serial numbers for the ordered juicers manually.

## Step 5: Specifying Serial Numbers for the Shipped Items { .section}

To manually specify the serial numbers in the shipment for the juicers to be sold, do the following:

1.  While you are still viewing the shipment on the [Shipments](SO_30_20_00.md) \(SO302000\) form, on the **Details** tab, click the only line.
2.  On the table toolbar, click **Line Details**.
3.  In the **Line Details** dialog box, which opens, do the following:
    1.  On the table toolbar, click **Add Row**. The system adds a line for one unit of the *JUICER05С* item.
    2.  In the **Location** column, select *MAIN*. Notice that the value in the **Unassigned Qty.** box has been changed to *1*.
    3.  In the **Lot/Serial Nbr.** column, type `JCR050000333`.
    4.  Add a row for the second juicer.
    5.  In the **Location** column, select *MAIN*. Notice that the value in the **Unassigned Qty.** box has been changed to *0*.
    6.  In the **Lot/Serial Nbr.** column, type `JCR050000168`.
    7.  Click **OK** to save your changes and close the dialog box.
4.  On the form toolbar, click **Save**.

You have entered the serial numbers of the juicers. Notice that the **Unassigned Qty.** column and the warning on the **Details** tab are no longer shown. Now you can confirm the shipment and process the related invoice.

## Step 6: Confirming the Shipment and Processing the Invoice { .section}

To confirm the shipment and process the related invoice, do the following:

1.  While you are still viewing the shipment on the [Shipments](SO_30_20_00.md) \(SO302000\) form, review the line on the **Details** tab. Make sure that the shipped quantity in the line is equal to the ordered quantity.
2.  On the form toolbar, click **Confirm Shipment**. The status of the shipment has been changed to *Confirmed*.
3.  On the form toolbar, click **Prepare Invoice**. The system prepares the invoice and opens it on the [Invoices](SO_30_30_00.md) \(SO303000\) form in a pop-up window. The invoice has the *Balanced* status.
4.  On the form toolbar, click **Release** to release the invoice. The system changes the status of the invoice to *Open* and the status of the shipment to *Completed*. Close the pop-up window.
5.  On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, do the following:
    1.  In the **Inventory ID** box of the Selection area, select *JUICER05C*.
    2.  In the **Warehouse** box, select *EQUIPHOUSE*.
    3.  In the **On Hand** box, make sure that the quantity of juicers is 0.

You have successfully processed the shipment and the invoice related to the sale of the two juicers with serial numbers.

**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

