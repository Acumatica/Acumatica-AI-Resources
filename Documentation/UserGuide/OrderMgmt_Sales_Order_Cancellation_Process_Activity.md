# Sales Order Cancellation: Process Activity {#_cb9c366e-5c24-4355-84a8-441fcd0eeecc .task}

The following activity demonstrates how to create a sales order with a prepayment, cancel the order, reopen it, and process it to completion.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Grace Norman, a sales manager of the SweetLife Fruits &amp; Jams company. On January 30, 2026, the GoodFood One Restaurant wholesale customer has ordered four boxes of fresh pomegranates from SweetLife's main office. The customer has made a prepayment for the fruit. The ordered pomegranates are stored in the warehouse of the company’s main office. You, as a sales manager, need to enter and process the appropriate documents.

Further suppose that the customer wants the order to be delivered on the same day. SweetLife can deliver only two boxes today and the remaining two boxes tomorrow. The customer informs you that they are canceling the order, so you need to cancel the sales order.

Finally, suppose that later that day, the customer informs you that they have not found a vendor who can deliver the fruit on the same day and that they again want to order the four boxes of pomegranates from SweetLife. You need to reopen and process the sales order.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
    -   *Inventory*, which gives you the ability to maintain stock items by using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
-   On the [Order Types](SO_20_10_00.md) \(SO201000\) form, the *SO* order type has been configured and activated.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *GOODFOOD \(GoodFood One Restaurant\)* customer has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *POMEGRANATES* stock item has been created.

## Process Overview { .section}

In this activity, to process a sales order with a prepayment, you will first create a sales order of the *SO* type on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and add the items to be sold. Then you will add a prepayment on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form and release it on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

Then you will unapply the prepayment by removing the link from the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form and cancel the order. Finally, you will reopen the order and create and quickly process it.

## System Preparation { .section}

Before you start performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system as sales manager Grace Norman. You should sign in by using the *norman* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, make sure the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating the Sales Order { .section}

To create the sales order for GoodFood One Restaurant, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Order Type**: *SO*
    -   **Customer**: *GOODFOOD*
    -   **Date**: *1/30/2026*
    -   **Description**: `Sale of four boxes of pomegranates`
3.  On the table toolbar of the **Details** tab, click **Add Row**.
4.  Specify the following settings in this row:
    -   **Inventory ID**: *POMEGRANATES*
    -   **Warehouse**: *WHOLESALE* \(inserted automatically\)
    -   **Quantity**: `4`
5.  On the form toolbar, click **Save**.

## Step 2: Creating the Prepayment for the Sales Order { .section}

To create the prepayment made by the *GOODFOOD* customer and apply it to the sales order, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, open the **Payments** tab.
2.  On the table toolbar, click **Create Prepayment**.
3.  In the **Create Prepayment** dialog box, which opens, do the following:

    1.  Make sure that *10200WH - Wholesale Checking* is specified in the **Cash Account** box.
    2.  In the **Payment Amount** box, type `200`.
    3.  Click **OK** to close the dialog box.
    The system creates a prepayment and applies it to the sales order. Notice that in the row with the prepayment, the system has inserted *200* in the **Applied to Order** column.

4.  Click the link in the **Reference Nbr.** column.

    The system opens the prepayment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form in a pop-up window.

5.  On the form toolbar, click **Remove Hold**, and then click **Release**.
6.  Close the pop-up window with the [Payments and Applications](AR_30_20_00.md) form, which returns you to the sales order on the [Sales Orders](SO_30_10_00.md) form.

## Step 3: Unapplying the Prepayment and Canceling the Sales Order { .section}

Suppose that the customer informed you that they want to cancel the order. Before canceling the sales order, you need to unapply the prepayment from the sales order. Do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the table toolbar of the **Payments** tab, click **Delete Row**. This unapplies the prepayment and removes the link between the sales order and the prepayment. \(It does not delete the prepayment.\)
2.  On the form toolbar, click **Save**.
3.  On the More menu, click **Cancel Order**. Notice that the sales order is assigned the *Canceled* status and that you can no longer change its settings.

## Step 4: Reopening the Sales Order { .section}

Suppose that later the same day, the customer informed you that they want to buy the pomegranates because they have not found a vendor who can deliver the fruit more quickly. To reopen the order, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click **Reopen Order** on the form toolbar. The sales order is assigned the *Open* status.
2.  On the **Payments** tab, click **Add Row**.
3.  In the **Doc. Type** column, select *Prepayment*. In the **Reference Nbr.** column, select the prepayment that you have created earlier in this activity.
4.  In the **Applied To Order** column, type `200`.
5.  On the form toolbar, click **Save**.

## Step 5: Quickly Processing the Sales Order { .section}

Now you will create and process the sales documents related to the sales order through quick processing of the order. Do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click **Quick Process** on the form toolbar.
2.  In the **Process Order** dialog box, which opens, do the following:
    1.  In the **Warehouse ID** box, make sure that *WHOLESALE* is selected.
    2.  In the **Shipment Date** section, make sure that *Today* is selected.
    3.  In the **Shipping** section, make sure that the following check boxes are selected:
        -   **Create Shipment**
        -   **Confirm Shipment**
        -   **Update IN**
    4.  In the **Invoicing** section, do the following:
        1.  Make sure that the **Prepare Invoice** check box is selected.
        2.  Select the **Release Invoice** check box.
    5.  Click **OK**. The **Processing Results** dialog box opens. Wait for the system to create the documents.
    6.  Close the dialog box. Notice that the sales order now has the *Completed* status.

**Parent topic:**[Canceling Sales Orders](../UserGuide/OrderMgmt_Sales_Order_Cancellation_Mapref.md)

