# Importing Card Refunds: To Process a Refund for a Shipped Order {#_63f3208e-25bc-402f-8528-934c3758a5e2 .task}

The following activity will walk you through the process of importing from the Shopify store to Acumatica ERP a partial refund of an order paid by card that has been fully delivered.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that a customer placed an order for 10 jars of pear jam in the SweetLife Fruits &amp; Jams online store, and paid the entire order by card. Four days later, after the purchased jam has already been delivered, the customer returned 2 jars of pear jam to the store. As the store manager, you need to process the return of 2 jars of pear jam. You also want to reimburse the customer for returning part of the purchase in person.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  On the storefront of the Shopify store, place a sales order for a customer through the storefront and pay for it with a credit card.
2.  In the admin area of the Shopify store, review the sales order.
3.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the sales order data.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.
5.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, review the prepayment created for the imported sales order, capture the funds, and release the prepayment.
6.  On the [Sales Orders](SO_30_10_00.md) form, create a shipment.
7.  On the [Shipments](SO_30_20_00.md) \(SO302000\) form, confirm the shipment.
8.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the shipment data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the shipment data.
9.  In the admin area of the Shopify store, issue a refund for an individual item.
10. On the [Prepare Data](BC_50_10_00.md) form, prepare the refund data for processing, and on the [Process Data](BC_50_15_00.md) form, process the refund data.
11. On the [Sales Orders](SO_30_10_00.md) form, review the return order, and on the [Payments and Applications](AR_30_20_00.md) form, review the updated prepayment.
12. On the [Payments and Applications](AR_30_20_00.md) form, review and release the refund.

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure that the following prerequisite activities have been performed:
    1.  [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md)
    2.  [Data Synchronization: To Perform the First Synchronization](Commerce_SP_Data_Sync_Activity_First_Sync.md)
    3.  [Importing Card Refunds: Implementation Activity](Commerce_SP_Importing_CC_Refunds_Implem_Activity.md)
2.  Sign in to the admin area of the Shopify store as the store administrator.

## Step 1: Placing an Order { .section}

To create an order for ten 96-ounce jars of pear jam from the Shopify admin area, do the following:

1.  In the left menu, under **Sales Channels**, click the Preview button right of **Online Store**.
2.  On the storefront, start typing `pear` in the search bar, and in the list of search results, click *Pear jam 96 oz*.
3.  On the page for the *Pear jam 96 oz* product, click **Add to cart**.
4.  In the top right, click **View my cart**.
5.  On the **Your cart** page, which opens, change the quantity of the *Pear jam 96 oz* product to *10*.
6.  Click **Check out**.
7.  On the order creation page \(**Information** step\), specify the needed settings as follows:
    1.  In the **Contact** section, in the **Email or mobile phone number** box, specify *melody@example.com*.
    2.  In the **Shipping address** section, fill in the shipping address boxes as follows:
        -   **First name**: `Melody`
        -   **Last name**: `Keys`
        -   **Address**: `3402 Angus Road`
        -   **City**: `New York`
        -   **Country/region**: *United States*
        -   **State**: *New York*
        -   **ZIP code**: `10003`
    3.  At the bottom of the page, click **Continue to shipping**.
8.  On the order creation page \(**Shipping** step\), in the **Shipping method** section, select the **Economy** option button, and click **Continue to payment**.
9.  On the order creation page \(**Payment** step\), in the **Payment** section, select the **Credit card** option button, and specify the following card settings:
    -   **Card number**: `4242 4242 4242 4242`
    -   **Name on card**: `Melody Keys`
    -   **Expiration date**: `12/23`
    -   **Security code**: `123`
10. In the **Billing address** section, select the **Same as shipping address** option button.
11. Click **Pay now** to place and pay your order.

    Your order has been created, and on the confirmation page, the order number is displayed. You will process the order with this order number further in this activity.


## Step 2: Reviewing the Sales Order in the Admin Area { .section}

To review the sales order that you placed in the previous step, while you are signed in to the admin area of the Shopify store, do the following:

1.  In the left menu, click **Orders**.
2.  On the **Orders** page, which opens, click the row with the order for *Melody Keys*.
3.  On the order details page, which opens, review the order details.

    Notice that the payment status is *Authorized* and the **Capture payment** button is displayed. Because you have configured the *Shopify Payments* payment option to only authorize \(but not capture\) the payment amount when the order is placed, the payment funds have not yet been captured.

    **Tip:**

    -   You can view the details of the card transaction by expanding the corresponding link in the **Timeline** section.
    -   Besides the order number, Shopify assigns each order an identifier \(a numeric sequence\) that you can see in the URL of the order page in the store admin area. You can use this identifier to locate the necessary order on the [Process Data](BC_50_15_00.md) \(BC501500\) form \(in the **External ID** column\), for example, if you need to import an individual order from the Shopify store to Acumatica ERP.

## Step 3: Importing the Sales Order { .section}

To import the sales order to Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
4.  In the table, select the check box in the unlabeled column in the row with the *Sales Order* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
7.  In the row with the *Sales Order* entity, click the link with the number of prepared synchronization records in the **Ready to Process** column.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Sales Order* entity selected, select the unlabeled check box in the row with the order you created in Step 1 \(which you can identify by its number in the **External ID** column\).
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 4: Reviewing the Imported Sales Order and Payment { .section}

To review the imported sales order, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Entity**: *Sales Order*
3.  On the **Processed** tab, in the row of the sales order that you have just imported \(which you can locate by its external ID\), click the link in the **ERP ID** column.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, review the settings of the sales order.

    In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes include the order number from Shopify. In the **Customer** box, the system has inserted the ID of the customer that was generated based on the customer numbering sequence defined on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

    On the **Details** tab, review the quantity of the *PEARJAM96* items, which is 10 pieces.

    On the **Payments** tab, review the details of the created payment document.

    Notice that the payment document has the *Prepayment* type. It includes the external credit card transaction associated with the purchase. The number of the transaction \(which in Shopify is shown in the **Timeline** section\) is displayed in the **Payment Ref.** column and its status, which is *Pre-Authorized*, is displayed in the **Proc. Status** column. The **Payment Method** and **Cash Account** columns show the payment method and cash account defined in Acumatica ERP and mapped to the *SHOPIFY\_PAYMENTS* store payment method \(*SHOPIFYPAY* and *10250ST*, respectively\). Because the payment has been authorized but not captured, the prepayment has the *Pending Processing* status. Before you can process and import a refund in the Shopify store, you need to capture and release the prepayment.


## Step 5: Capturing and Releasing the Payment { .section}

To capture the funds and release the prepayment, do the following:

1.  While you are viewing the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click the link with the prepayment number in the **Reference Nbr.** column.

    The [Payments and Applications](AR_30_20_00.md) \(AR302000\) form opens in a pop-up window with the prepayment selected.

2.  On the More menu \(under **Card Processing**\), click **Capture**.

    Once the funds are successfully captured, the processing status of the payment changes to *Captured*, and its status changes from *Pending Processing* to *Balanced*.

3.  On the form toolbar, click **Release** to release the payment.

    The status of the prepayment changes to *Open*.

4.  Close the pop-up window with the [Payments and Applications](AR_30_20_00.md) form to return to the [Sales Orders](SO_30_10_00.md) form.

## Step 6: Creating a Shipment for the Imported Order { .section}

To create a shipment for the order, do the following:

1.  While you are viewing the imported order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click **Create Shipment** on the form toolbar.
2.  In the **Specify Shipment Parameters** dialog box, which opens, make sure the current date and the *RETAIL* warehouse are selected, and click **OK**. The system creates a shipment and opens it on the [Shipments](SO_30_20_00.md) \(SO302000\) form.

## Step 7: Confirming the Shipment for the Imported Order { .section}

To confirm the shipment for the order, do the following:

1.  While you are still viewing the shipment on the [Shipments](SO_30_20_00.md) \(SO302000\) form, review the line on the **Details** tab. Make sure of the following:
    -   The correct order line is included in the shipment.
    -   The *RETAIL* warehouse is specified for the item.
    -   The shipped quantity is equal to the ordered quantity.
2.  On the form toolbar, click **Confirm Shipment**.

Notice that the shipment has been assigned the *Confirmed* status. Make a note of the shipment number; you will use it to identify the shipment to be exported to the Shopify store in the next step.

Because you have confirmed the shipment, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the status of the imported sales order has changed to *Completed*.

## Step 8: Synchronizing the Shipment with the Shopify Store { .section}

To synchronize with the Shopify store the shipment that you created and confirmed in Steps 6 and 7, do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column for the *Shipment* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  Click the link in the **Ready to Process** column in the row with the *Shipment* entity.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Shipment* entity selected, select the unlabeled check box for the shipment created and confirmed in the previous steps \(which you can identify by the shipment number in the **ERP ID** column\).
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 9: Issuing a Refund in the Shopify Store { .section}

Now you will issue a refund for an individual item. While you are signed in to the admin area of your Shopify store, do the following:

1.  In the left menu, click **Orders**.
2.  On the **Orders** page, click the row of the order that you created and imported earlier in the activity.
3.  On the sales order page, which opens, click **Refund** on the page toolbar.
4.  On the **Refund** page, in the item quantity box, specify *2*.
5.  In the Summary section, review the **Refund total** amount \($98.31, which includes $8.01 in taxes\)
6.  To reimburse the customer for having to return part of the purchase, in the **Refund amount** box, change the amount to `108.31`.
7.  Click **Refund $108.31**.

## Step 10: Importing the Refund { .section}

To import the refund to Acumatica ERP, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column in the row with the *Refund* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  Click the link in the **Ready to Process** column in the row with the *Refund* entity.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Refund* entity selected in the Summary area, select the unlabeled check box in the row of the refund \(which you can identify by the number of the order it refers to in the **External ID** column\).
8.  On the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 11: Reviewing the Return Order { .section}

To review the return order created in Acumatica ERP as a result of the refund import, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.
2.  Filter the list of records as follows:

    1.  In the list of records, click the header of the **Customer Name**.
    2.  In the list of filter conditions, select **Contains**.
    3.  In the text box, type `Melody`.
    4.  Click **OK** to apply the filter.
    Notice that an order of the *ER* type has been created for *Melody Keys*. Because the original sales order had the *Completed* status, it could not be modified and the return order was created. The return order has the *ER* type because this type was selected in the **Return Order Type** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form in [Importing Card Refunds: Implementation Activity](Commerce_SP_Importing_CC_Refunds_Implem_Activity.md).

3.  In the row with the return order for *Melody Keys*, click the link in the **Order Nbr.** column.

    The [Sales Orders](SO_30_10_00.md) \(SO301000\) form opens with the return order selected.

    In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes contain the reference number of the original order in the Shopify store. In the **External Reference** box, the system inserted the identifier of the refund in the Shopify store.

    On the **Details** tab, the system inserted two lines: one with the returned item \(*PEARJAM96*\) with the quantity of 2; the other one with the *REFUNDAMT* non-stock item, which reflects an order-level refund of $10 that you specified in the Shopify store.

    Notice that in the **Reason Code** column of both lines, the system inserted *EREFUND*, which is the reason code you specified in the **Refund Reason Code** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form in [Importing Card Refunds: Implementation Activity](Commerce_SP_Importing_CC_Refunds_Implem_Activity.md).


## Step 12: Reviewing the Refund { .section}

To review the refund created for the return order, do the following:

1.  Open the Payments and Applications \(AR3020PL\) form.
2.  Filter the list of records as follows:

    1.  In the list of records, click the header of the **Customer Name**.
    2.  In the list of filter conditions, select **Contains**.
    3.  In the text box, type `Melody`.
    4.  Click **OK** to apply the filter.
    Notice that a document of the *Refund* type has been created for *Melody Keys* and assigned the *Balanced* status.

3.  In the row with this refund, click the link in the **Reference Nbr.** column.

    On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens with the refund selected, review the details of the refund. In the **Description** box of the Summary area, notice the information about the store name, sales order number, and store payment method to which the refund was applied. The **Payment Method** and **Cash Account** boxes contain the same settings that were used in the original prepayment. The **Orig. Transaction** box shows the identifier of the card transaction of the original prepayment.

    On the **Sales Orders** tab, notice that the refund has been linked to the return order.

    On the **Card Processing** tab, notice that the transaction type of the card transaction \(shown in the **Tran. Type** box\) is *Refund*, and the **Proc. Center Response Reason** column shows *Imported External Transaction*, which indicates that the refund was imported from an external ecommerce system rather than issued in Acumatica ERP.


You have now imported to Acumatica ERP a refund for a returned item and a partial refund of the order amount for an order that has been fully shipped. For the purposes of this activity, you do not need to process the return order or refund further.

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_SP_Importing_CC_Refunds_Mapref.md)

