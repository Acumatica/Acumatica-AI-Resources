# Importing Non-Card Refunds: To Process a Refund for a Shipped Order {#_04b6b5e6-e94f-4a28-956e-57582d47dd58 .task}

The following activity will walk you through the process of importing a partial refund from the BigCommerce store to Acumatica ERP. This partial refund is for a shipped order that has already been fully delivered.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that a representative of the West BBQ Restaurant customer placed an order for 10 jars of plum jam in the SweetLife Fruits &amp; Jams retail store, and paid the entire order amount upfront in cash. Four days later, after the purchased jam has already been delivered, a representative of West BBQ Restaurant returned 2 jars of plum jam. As the store manager, you need to process the return of 2 jars of plum jam. You also want to reimburse the customer $10 for the inconvenience of returning part of the purchase in person.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *BigCommerce Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  In the control panel of the BigCommerce store, place a sales order for a customer.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the sales order data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, release the prepayment related to the imported sales order.
5.  Using the [Sales Orders](SO_30_10_00.md) form as a starting point, create a shipment.
6.  On the [Shipments](SO_30_20_00.md) \(SO302000\) form, confirm the shipment.
7.  On the [Prepare Data](BC_50_10_00.md) form, prepare the shipment data for processing, and on the [Process Data](BC_50_15_00.md) form, process the shipment data.
8.  In the control panel of the BigCommerce store, issue a refund for a returned item.
9.  In the control panel of the BigCommerce store, issue an order-level refund.
10. On the [Prepare Data](BC_50_10_00.md) form, prepare the refund data for processing, and on the [Process Data](BC_50_15_00.md) form, process the refund data.
11. On the [Sales Orders](SO_30_10_00.md) form, review the return orders the system created after the refunds were imported.
12. On the [Payments and Applications](AR_30_20_00.md) form, review the refunds created for each of the return orders.

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure the following prerequisite activities have been performed:
    1.  [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md)
    2.  [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md)
    3.  [Importing Non-Card Refunds: Implementation Activity](Commerce_BC_Importing_nonCC_Refunds_Implem_Activity.md)
2.  Sign in to the control panel of the BigCommerce store as the store administrator.

## Step 1: Creating a Sales Order in BigCommerce { .section}

To place an order for ten 96-ounce jars of plum jam, do the following:

1.  In the left pane of the control panel of the BigCommerce store, click **Orders** &gt; **Add**.
2.  On the **Add an Order** page \(**Customer Info** step\), create the order as follows:
    1.  In the **Customer Information** section, select the **Existing Customer** option button right of **Order for**.
    2.  In the **Search** box, start typing the customer name, `west`; select the *West BBQ Restaurant* customer in the list of search results.
    3.  Near the top of the **Billing Information** section, click *Use this address* to use the existing customer address as the billing address.

        The elements of the billing address are populated with the settings from the previously saved address of this customer.

    4.  In the bottom right, click **Next**.
3.  On the **Add an Order** page \(**Items** step\), under **Add Products**, do the following:
    1.  In the **Search** box, start typing `plum`; in the list of search results, select *Plum jam 96 oz*.
    2.  In the line of the *Plum jam 96 oz*, change the quantity to `10`.
    3.  In the bottom right, click **Next**.
4.  On the **Add an Order** page \(**Shipping** step\), in the **Shipping Method** section, click the *Fetch Shipping Quotes* link.
5.  In the box with the list of shipping options, select *Free Shipping*.

    You created this shipping option during the completion of the [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md) prerequisite activity.

    For the purposes of this activity, you should assume that the billing address and shipping address are the same.

6.  In the bottom right, click **Next**.
7.  On the **Add an Order** page \(**Finalize** step\), do the following:
    -   Review the information in the **Customer Billing Details**, **Shipping Details**, and **Summary** sections.
    -   In the **Finalize** section, select the *Manual Payment* payment method.
8.  In the bottom right, click **Save &amp; Process Payment**.

    The system creates an order and opens the **View Orders** page with the created order displayed at the top of the order list. Make a note of the order number of the last created order \(which is shown in the **Order ID** column\).

    Notice that the status of the order is *Awaiting Fulfillment*.


## Step 2: Importing the Sales Order { .section}

To import the sales order you created into Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
4.  In the table, in the row with the *Sales Order* entity, select the unlabeled check box.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
7.  In the row with the *Sales Order* entity, click the link in the **Ready to Process** column.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Sales Order* entity selected in the Summary area, select the unlabeled check box in the row with the sales order that you created in the previous step.
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Order { .section}

To review the imported sales order, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Sales Order*
3.  On the **Processed** tab, in the row of the sales order that you have just imported \(which you can locate by its external ID\), click the link in the **ERP ID** column.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, review the settings of the sales order.

    In the Summary area, notice that the sales order has the *Open* status. The **Description** box shows the status of the order in the BigCommerce store, which is *Awaiting Fulfillment*.

    On the **Details** tab, review the quantity of the *PLUMJAM96* item, which is *10*.

    On the **Payments** tab, review the details of the prepayment that was imported from the BigCommerce store along with the sales order. Notice that the **Payment Method** and **Cash Account** columns show the payment method and cash account \(*ONLINE* and *10250ST*, respectively\) that were defined in Acumatica ERP and mapped to the *Manual Payment* store payment method. The prepayment has the *Balanced* status. Before you can process and import a refund in the BigCommerce store, you need to release this prepayment.


## Step 4: Releasing the Imported Payment { .section}

To release the payment that was imported from the BigCommerce store along with the sales order, do the following:

1.  While you are still viewing the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click the link with the prepayment number in the **Reference Nbr.** column.
2.  On the form toolbar of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens in a pop-up window with the prepayment selected, click **Release**.

    Once the processing of the prepayment finishes successfully, its status is changed to *Open*.

3.  Close the pop-up window with the [Payments and Applications](AR_30_20_00.md) form to return to the [Sales Orders](SO_30_10_00.md) form.

## Step 5: Creating a Shipment for the Imported Order { .section}

To create a shipment for the order you have imported, do the following:

1.  While you are viewing the imported order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click **Create Shipment** on the form toolbar.
2.  In the **Specify Shipment Parameters** dialog box, which opens, make sure the current date and the *RETAIL* warehouse are selected, and click **OK**. The system creates a shipment and opens it on the [Shipments](SO_30_20_00.md) \(SO302000\) form.

## Step 6: Confirming the Shipment for the Imported Order { .section}

To confirm the shipment for the order, do the following:

1.  While you are still viewing the shipment on the [Shipments](SO_30_20_00.md) \(SO302000\) form, review the line on the **Details** tab. Make sure of the following:
    -   The correct order line is included in the shipment.
    -   The *RETAIL* warehouse is specified for the item.
    -   The shipped quantity is equal to the ordered quantity.
2.  On the form toolbar, click **Confirm Shipment**.

Notice that the shipment has been assigned the *Confirmed* status. Make a note of the shipment number; you will use it to identify the shipment to be exported to the BigCommerce store in the next step.

Because you have confirmed the shipment, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the status of the imported sales order has changed to *Completed*.

## Step 7: Synchronizing the Shipment with the BigCommerce Store { .section}

To synchronize with the BigCommerce store the shipment that you have created and confirmed, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column for the *Shipment* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row with the *Shipment* entity, click the link in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Shipment* entity selected in the Summary area, select the unlabeled check box for the shipment that you created and confirmed \(which you can identify by the shipment number in the **ERP ID** column\).
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 8: Issuing a Refund for an Individual Item { .section}

To issue a refund for units of an individual item in your BigCommerce store, do the following:

1.  In the left pane of the control panel of the BigCommerce store, click **Orders** &gt; **All orders**.
2.  On the **View Orders** page, in the list of orders, locate the order for the *West BBQ Restaurant* customer that you created and imported.

    Notice that the status of the order has changed to *Shipped*.

3.  In the row with the same order, on the **Actions** menu, click **Refund**.
4.  On the **Refund order** page, which opens, on the **Refund individual items** tab \(**Refundable items** section\), specify *2* in the **Units to refund** column in the row with the *Plum jam 96 oz* item.
5.  In the bottom right, click **Continue**.
6.  On the **Confirm refund** page, which opens, in the **Refund method** section, select the **Refund customer through third party provider** option button.
7.  In the bottom right, click **Confirm Refund**.
8.  On the **View Orders** page, which opens, notice that the number of returned items \(which is *2*\) is now displayed under the number of ordered plum jam jars, and the order status has changed to *Partially Refunded*. The refunded amount is also displayed under **Grand Total**.

## Step 9: Issuing a Partial Refund of the Order Amount { .section}

To reimburse the customer for having to return part of the purchase in person, do the following:

1.  While you are still viewing the order for which you created a refund in the previous step, on the **Actions** menu, click **Refund**.
2.  On the **Refund order** page, on the **Apply an order level refund** tab \(**Refundable items** section\), specify `10` in the **Amount to be refunded** box.
3.  In the bottom right, click **Continue**.
4.  On the **Confirm refund** page, which opens, in the **Refund method** section, select the **Refund customer through third party provider** option button.
5.  In the bottom right, click **Confirm Refund**.
6.  On the **View Orders** page, which opens, notice that the refunded amount under **Grand Total** has increased by $10.

## Step 10: Importing the Refunds { .section}

To import the refunds into Acumatica ERP, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column in the row with the *Refund* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  Click the link in the **Ready to Process** in the row with the *Refund* entity.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Refund* entity selected in the Summary area, select the unlabeled check box in the row with the refund that you issued in the previous step.
8.  On the form toolbar, click **Process**.

    You can identify the refund you need by the number of the order it pertains to in the **External ID** column. Because the refund has not been synchronized before, it does not have a value in the **ERP ID** column. Notice that only one synchronization record was created for both refunds issued in the BigCommerce store for the same order.

9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 11: Reviewing the Return Orders { .section}

To review the return orders created in Acumatica ERP as a result of the importing of refunds, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.
2.  Filter the list of records as follows:

    1.  In the list of records, click the header of the **Customer**.
    2.  In the list of filter conditions, select **Equals**.
    3.  In the text box, type `WESTBBQ`.
    4.  Click **OK** to apply the filter.
    Notice that two orders of the *ER* type have been created for the *WESTBBQ* customer. Because the original sales order had the *Completed* status, return orders were created. The return orders have the *ER* type because this type was selected in the **Return Order Type** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form in [Importing Non-Card Refunds: Implementation Activity](Commerce_BC_Importing_nonCC_Refunds_Implem_Activity.md).

3.  In the row with the return order for the *WESTBBQ* customer and an ordered quantity of *2*, click the link in the **Order Nbr.** column.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens with the return order selected, review the order as follows:
    -   In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes contain the reference number of the original order in the BigCommerce store. In the **External Reference** box, the system has inserted the identifier of the refund in the BigCommerce store.
    -   On the **Details** tab, the system has created a line with the returned item \(*PLUMJAM96*\) and the quantity you specified while creating the refund in the BigCommerce store \(which is *2*\). Notice that in the **Reason Code** column of this line, the system has inserted *EREFUND*, which is the reason code you specified in the **Refund Reason Code** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form in [Importing Non-Card Refunds: Implementation Activity](Commerce_BC_Importing_nonCC_Refunds_Implem_Activity.md).
5.  On the form toolbar, click **Go to Next Record** to open the second return order.

    On the **Details** tab of this order, notice that a line has been created for the *REFUNDAMT* non-stock item with the order-level refund amount that you specified in the BigCommerce store \($10\). The system inserted this item because it was specified in **Refund Amount Item** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form in [Importing Non-Card Refunds: Implementation Activity](Commerce_BC_Importing_nonCC_Refunds_Implem_Activity.md).


## Step 12: Reviewing the Refunds { .section}

To review the refunds created for each of the return orders, do the following:

1.  Open the Payments and Applications \(AR3020PL\) form.
2.  Filter the list of records as follows:

    1.  In the list of records, click the header of the **Customer**.
    2.  In the list of filter conditions, select **Equals**.
    3.  In the text box, type `WESTBBQ`.
    4.  Click **OK** to apply the filter.
    Notice that two documents of the *Refund* type have been created for the *WESTBBQ* customer, one for each of the refunds you issued in the BigCommerce store. The **Payment Ref.** column shows the identifier of each of these refunds in the BigCommerce store.

3.  In the **Reference Nbr.** column, click the link with the reference number of the refund created for the two returned jars of the plum jam. \(Of the two refunds for the *WESTBBQ* customer, the one you need has a smaller identifier in the **Payment Ref.** column.\)
4.  On the [Payments and Applications](AR_30_20_00.md) form, which opens with the refund selected, review the document settings in the Summary area.

    In the **Description** box, notice the information about the store name, sales order number, and store payment method to which the refund was applied. The **Available Balance** column reflects the amount refunded in the BigCommerce store. The **Payment Method** and **Cash Account** boxes have the same values as the original prepayment \(*ONLINE* and *10250ST*, respectively\).

    On the **Sales Orders** tab, notice that the refund has been linked to the first return order.

5.  On the form toolbar, click **Go to Next Record** to open the second refund.

    In the **Reference Nbr.** box, select the number of the second refund created for the *WESTBBQ* customer. Notice that it has the same settings as the first refund, except for the refund identifier \(which is shown in the **Payment Ref.** box and in the **Description** box\), and the available balance \(which reflects an order-level refund of $10 issued in the BigCommerce store\).

    On the **Sales Orders** tab, notice that the refund has been linked to the second return order.


You have now imported to Acumatica ERP a refund for a returned item and a partial refund of the order amount. For the purposes of this activity, you do not need to process the return orders or refunds further.

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_BC_Importing_nonCC_Refunds_Mapref.md)

