# Importing Non-Card Refunds: To Process a Refund for a Not-Yet-Shipped Order {#_679cf70b-19ef-4ce1-b586-8c8e69386c69 .task}

The following activity will walk you through the process of importing a partial refund from the BigCommerce store to Acumatica ERP. This is a partial refund of an order that has been paid by a non-card payment method and has not yet been shipped.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that a representative of the GoodFood One Restaurant customer placed an order for 10 jars of banana jam in the SweetLife Fruits &amp; Jams retail store and paid the entire order amount upfront in cash. The jam was to be delivered from the SweetLife Fruits &amp; Jams warehouse within seven days. Later the same day, before the jam was shipped, the representative of GoodFood One Restaurant showed up in the retail store. The representative informed the store manager that an error had occurred and only 5 jars of banana jam should have been purchased, and asked the manager to refund the cost of the remaining quantity of banana jam. As the store manager, you need to refund the cost of 5 jars of banana jam and import this refund to Acumatica ERP so that the correct quantities of jam will be issued from SweetLife Fruits &amp; Jams's warehouse.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *BigCommerce Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  In the control panel of the BigCommerce store, place a sales order for a customer.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the sales order data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, release the prepayment related to the imported sales order.
5.  In the control panel of the BigCommerce store, update the order quantities, and issue a refund to the customer.
6.  On the [Prepare Data](BC_50_10_00.md) form, prepare the refund data for processing, and on the [Process Data](BC_50_15_00.md) form, process the refund data.
7.  On the [Sales Orders](SO_30_10_00.md) form, review the updated sales order, and on the [Payments and Applications](AR_30_20_00.md) form, review the updated prepayment.
8.  On the [Payments and Applications](AR_30_20_00.md) form, review and release the refund.

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure that the following prerequisite activities have been performed:
    -   [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md)
    -   [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md)
    -   [Importing Non-Card Refunds: Implementation Activity](Commerce_BC_Importing_nonCC_Refunds_Implem_Activity.md)
2.  Sign in to the control panel of the BigCommerce store as the store administrator.

## Step 1: Creating an Order { .section}

To place an order for ten 96-ounce jars of banana jam, do the following:

1.  In the left pane of the control panel of the BigCommerce store, click **Orders** &gt; **Add**.
2.  On the **Add an Order** page \(**Customer Info** step\), create the order as follows:
    1.  In the **Customer Information** section, select the **Existing Customer** option button right of **Order for**.
    2.  In the **Search** box, start typing the customer name, `GOODFOOD`; select the *GoodFood One Restaurant* customer in the list of search results.
    3.  Near the top of the **Billing Information** section, click *Use this address* to use the existing customer address as the billing address.

        The elements of the billing address are populated with the settings from the previously saved address of this customer.

    4.  In the bottom right, click **Next**.
3.  On the **Add an Order** page \(**Items** step\), under **Add Products**, do the following:
    1.  In the **Search** box, start typing `banana`; in the list of search results, select *Banana jam 96 oz*.
    2.  In the line of the *Banana jam 96 oz*, change the quantity to *10*.
    3.  At the bottom of the page, click **Next**.
4.  On the **Add an Order** page \(**Shipping** step\), in the **Shipping Method** section, click the *Fetch Shipping Quotes* link.
5.  In the box with the list of shipping options, select *Free Shipping*.

    You created this shipping option during the completion of the [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md) prerequisite activity.

    For the purposes of this activity, you should assume that the billing address and shipping address are the same.

6.  In the bottom right, click **Next**.
7.  On the **Add an Order** page \(**Finalize** step\), do the following:
    -   Review the information in the **Customer Billing Details**, **Shipping Details**, and **Summary** sections
    -   In the **Finalize** section, select the *Manual Payment* payment method.
8.  In the bottom right, click **Save &amp; Process Payment**.

    The system creates an order and opens the **View Orders** page with the last order displayed at the top of the order list. Make a note of the order number of the last created order \(which is shown in the **Order ID** column\).

    Because you have already accepted the payment outside of BigCommerce, the status of the order is *Awaiting Fulfillment*.


## Step 2: Importing the Sales Order { .section}

To import the sales order into Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
4.  In the table, select the check box in the unlabeled column in the row with the *Sales Order* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
7.  In the row with the *Sales Order* entity, click the link in the **Ready to Process** column.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Sales Order* entity selected in the Summary area, select the unlabeled check box in the row with the sales order that you created in the previous step \(which you can identify by its order number in the **External ID** column\).
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Sales Order { .section}

To review the imported sales order, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Sales Order*
3.  On the **Processed** tab, in the row of the sales order that you have just imported \(which you can locate by its external ID\), click the link in the **ERP ID** column.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, review the settings of the sales order as follows:
    1.  In the Summary area, notice that the sales order has the *Open* status. The **Description** box shows the status of the order in the BigCommerce store, which is *Awaiting Fulfillment*.
    2.  On the **Details** tab, review the quantity of the *BANJAM96* item, which is *10*.
    3.  On the **Payments** tab, review the details of the prepayment that was imported from the BigCommerce store along with the sales order. Notice that the **Payment Method** and **Cash Account** columns show the payment method and cash account \(*ONLINE* and *10250ST*, respectively\) that were defined in Acumatica ERP and mapped to the *Manual Payment* store payment method. The prepayment has the *Balanced* status. Before you can process and import a refund in the BigCommerce store, you need to release this prepayment.

## Step 4: Releasing the Imported Payment { .section}

To release the payment that was imported from the BigCommerce store along with the sales order, do the following:

1.  While you are still viewing the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click the link with the prepayment number in the **Reference Nbr.** column.
2.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens in a pop-up window with the prepayment selected, click **Release** on the form toolbar.

    Once the prepayment is successfully released, its status is changed to *Open*.


## Step 5: Issuing a Refund for an Individual Item { .section}

To issue a refund for units of an individual item in your BigCommerce store, while you are signed in to the control panel of the BigCommerce store, do the following:

1.  In the left pane, click **Orders** &gt; **All orders**.
2.  On the **View Orders** page, in the row with the order for *GoodFood One Restaurant*, on the **Actions** menu, click **Refund**.
3.  On the **Refund order** page, which opens, on the **Refund individual items** tab \(**Refundable items** section\), specify *5* in the **Units to refund** column in the row with the banana jam.
4.  In the bottom right, click **Continue**.
5.  On the **Confirm refund** page, which opens, in the **Refund method** section, select the **Refund customer through third party provider** option button.
6.  In the bottom right, click **Confirm Refund**.
7.  On the **View Orders** page, which opens for the partially refunded order, notice that the number of refunded items \(which is *5*\) is now displayed under the number of ordered banana jam jars. The refunded amount is also displayed under **Grand Total**.

## Step 6: Importing the Refund { .section}

To import the refund to Acumatica ERP, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column in the row with the *Refund* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  Click the link in the **Ready to Process** column in the row with the *Refund* entity.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Refund* entity selected in the Summary area, select the unlabeled check box in the row with the refund \(which you can identify by the number of the order it refers to in the **External ID** column\).
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 7: Reviewing the Results of the Import { .section}

To review how the refund has been imported to Acumatica ERP, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Sales Order*
3.  On the **Processed** tab, in the row of the refund that you have just imported \(which you can locate by the external ID of the related order\), click the link in the **ERP ID** column.

    On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens in a pop-up window, review the order as follows:

    -   On the **Details** tab, notice that the quantity of the *BANJAM96* stock item has been reduced from *10* to *5*.
    -   In the Summary area, notice that the order total has been reduced to reflect the new item quantities. The **Description** box now shows the updated status of the order in the BigCommerce store, which is *Partially Refunded*.
4.  On the **Payments** tab, click the link of the prepayment number in the **Reference Nbr.** column.

    On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens with the prepayment selected, notice that the applied amount and the available balance reflect the reduced order amount and the refunded amount, respectively.


## Step 8: Reviewing and Releasing the Refund { .section}

1.  Open the Payments and Applications \(AR3020PL\) form.
2.  Filter the list of records as follows:

    1.  In the list of records, click the header of the **Description** column.
    2.  In the list of filter conditions, select **Contains**.
    3.  In the text box, type `SweetStore`.
    4.  Click **OK** to apply the filter.
    In the list of documents, notice that a new *Refund* document has been created for the refund you imported in Step 6. \(You can identify it by the order number and transaction type shown in the **Description** column\).

3.  In the **Reference Nbr.** column, click the link with the identifier of the refund.
4.  On the form toolbar of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens with the refund selected, click **Release**.

    Once the processing of the refund is finished, its status changes to *Closed*.

5.  On the **Application History** tab, which shows the prepayment to which the refund was applied, in the only row, click the link in the **Reference Nbr.** column.
6.  On the [Payments and Applications](AR_30_20_00.md) form, which opens with the prepayment selected, notice that the available balance has become zero.

You have now imported a partial refund for ordered items in an order that has not yet been shipped and processed this partial refund.

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_BC_Importing_nonCC_Refunds_Mapref.md)

