# Importing Non-Card Refunds: To Process a Refund for a Shipped Order {#_640fd10b-284b-4f51-8410-aee43dd4a6ab .task}

The following activity will walk you through the process of importing a partial refund from the BigCommerce store to Acumatica ERP. This partial refund is for a shipped order that has already been fully delivered.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that a representative of the West BBQ Restaurant customer placed an order for 10 jars of plum jam in the SweetLife Fruits &amp; Jams retail store, and paid the entire order amount upfront in cash. Four days later, after the purchased jam has already been delivered, a representative of West BBQ Restaurant returned 2 jars of plum jam. As the store manager, you need to process the return of 2 jars of plum jam. You also want to reimburse the customer $10 for the inconvenience of returning part of the purchase in person.

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

1.  In the admin area of the Shopify store, place a sales order for a customer.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the sales order data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, release the prepayment related to the imported sales order.
5.  Using the [Sales Orders](SO_30_10_00.md) form as a starting point, create a shipment.
6.  On the [Shipments](SO_30_20_00.md) \(SO302000\) form, confirm the shipment.
7.  On the [Sales Orders](SO_30_10_00.md) form, create a shipment.
8.  On the [Prepare Data](BC_50_10_00.md) form, prepare the shipment data for processing, and on the [Process Data](BC_50_15_00.md) form, process the shipment data.
9.  In the admin area of the Shopify store, issue a refund to the customer.
10. On the [Prepare Data](BC_50_10_00.md) form, prepare the refund data for processing, and on the [Process Data](BC_50_15_00.md) form, process the refund data.
11. On the [Sales Orders](SO_30_10_00.md) form, review the updated sales order, and on the [Payments and Applications](AR_30_20_00.md) form, review the updated prepayment.
12. On the [Payments and Applications](AR_30_20_00.md) form, review the refunds created for each of the return orders.

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure the following prerequisite activities have been performed:
    1.  [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md)
    2.  [Data Synchronization: To Perform the First Synchronization](Commerce_SP_Data_Sync_Activity_First_Sync.md)
    3.  [Importing Non-Card Refunds: Implementation Activity](Commerce_SP_Importing_nonCC_Refunds_Implem_Activity.md)
2.  Sign in to the admin area of the Shopify store as the store administrator.

## Step 1: Creating a Sales Order in Shopify { .section}

To create an order for ten 96-ounce jars of plum jam from the Shopify admin area, do the following:

1.  In the left menu of the admin area, click **Orders**.
2.  On the **Orders** page, which opens, in the top right, click **Create order**.
3.  On the **Create order** page, which opens, in the **Order details** section, start typing `plum` in the search bar.
4.  In the list of search results, which are shown in a pop-up window, select *Plum jam 96 oz*, and click **Add to order**.
5.  In the row with the *Plum jam 96 oz* product, change the quantity to `10`.
6.  In the **Find or create a customer** section, start typing `west` in the search bar. In the list of search results, select *West BBQ Restaurant*.
7.  In the bottom right, click **Save**.
8.  In the **Payment** section, click **Mark as Paid**.
9.  In the **Mark as paid** pop-up window, in the **Type of payment received** box, select *Other* and click **Create order**.

    Note the order number and the identifier of the order in the address bar \(the numeric part in the URL that follows *&lt;store\_name&gt;.myshopify.com/admin/orders/*\).


**Tip:** Besides the order number, Shopify assigns each order an identifier \(a numeric sequence\) that you can see in the URL of the Shopify order page. You can use this identifier to locate the necessary order on the [Process Data](BC_50_15_00.md) \(BC501500\) form \(in the **External ID** column\), for example, if you need to import an individual order from the Shopify store to Acumatica ERP.

## Step 2: Importing the Sales Order { .section}

To import the sales order you created in the previous step to Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   Username: *gibbs*
    -   Password: *123*
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
4.  In the table, select the unlabeled check box in the row with the *Sales Order* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.
7.  In the row with the *Sales Order* entity, click the link with the number of prepared synchronization records in the **Ready to Process** column.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Sales Order* entity selected.
9.  On the form toolbar, click **Process All**.
10. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Sales Order { .section}

To review the imported sales order, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.
2.  In the list of orders, click the order number link of the last sales order of the *EO* type for *West BBQ Restaurant*.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, review the settings of the sales order.

    In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes include the order number from Shopify. In the **Customer** box, the system has inserted the ID of the customer that was generated based on the customer numbering sequence defined on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

    On the **Details** tab, review the quantity of the *PLUMJAM96* item, which is *10*.

    On the **Payments** tab, review the details of the prepayment that was created and applied to the sales order when the sales order was imported. Notice that the **Payment Method** and **Cash Account** columns show the payment method and cash account \(*ONLINE* and *10250ST*, respectively\) that were defined in Acumatica ERP and mapped to the *MANUAL* store payment method. The prepayment has the *Balanced* status. Before you can process and import a refund in the Shopify store, you need to release this prepayment.


## Step 4: Releasing the Imported Payment { .section}

To release the payment that was imported from the Shopify store along with the sales order, do the following:

1.  While you are still viewing the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click the link with the prepayment number in the **Reference Nbr.** column.
2.  On the form toolbar of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens in a pop-up window with the prepayment selected, click **Release**.

    Once the prepayment is successfully released, its status is changed to *Open*.

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

Notice that the shipment has been assigned the *Confirmed* status. Make a note of the shipment number; you will use it to identify the shipment to be exported to the Shopify store in the next step.

Because you have confirmed the shipment, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the status of the imported sales order has changed to *Completed*.

## Step 7: Synchronizing the Shipment with the Shopify Store { .section}

To synchronize with the Shopify store the shipment that you have created and confirmed, do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, do the following:
    1.  In the Summary area, select the following settings:
        -   **Store**: *SweetStore - SP*
        -   **Prepare Mode**: *Incremental*
    2.  In the table, select the unlabeled check box for the *Shipment* entity.
    3.  On the form toolbar, click **Prepare**.
    4.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** when the processing has completed.
2.  In the row with the *Shipment* entity, click the link in the **Ready to Process** column.
3.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Shipment* entity selected in the Summary area, select the unlabeled check box for the shipment that you created and confirmed \(which you can identify by the shipment number in the **ERP ID** column\).
4.  On the form toolbar, click **Process**.
5.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 8: Issuing a Refund in the Shopify Store { .section}

To issue a refund for units of an individual item in your Shopify store, do the following:

1.  Sign in to the admin area of your Shopify store.
2.  In the left menu, expand the **Orders** node and click **Orders**.
3.  On the **Orders** page, in the list of orders, open the order that you created and imported.
4.  On the sales order page, which opens, on the page toolbar, click **Refund**.
5.  On the **Refund** page, in the item quantity box, specify *2*.
6.  In the Summary section, review the **Refund total** amount \($98.32, which includes $8.02 in taxes\).
7.  To reimburse the customer for having to return part of the purchase, in the **Manual** box, change the amount to `108.32`.
8.  Click **Refund $108.32**.

## Step 9: Importing the Refund { .section}

To import the refund to Acumatica ERP, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the **Store** box, select *SweetStore - SP*.
3.  In the **Prepare Mode** box, select *Incremental*.
4.  In the table, select the unlabeled check box in the row with the *Refund* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.
7.  Click the link in the **Ready to Process** column in the row with the *Refund* entity.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Refund* entity selected in the Summary area, select the unlabeled check box in the row or the refund \(which you can identify by the number of the order it refers to in the **External ID** column\).
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 11: Reviewing the Return Order { .section}

To review the return orders created in Acumatica ERP as a result of the importing of refunds, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.

    Notice that an order of the *ER* type has been created for the *WESTBBQ* customer. Because the original sales order had the *Completed* status, it could not be modified and the return order was created. The return order has the *ER* type because this type was selected in the **Return Order Type** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form in [Importing Non-Card Refunds: Implementation Activity](Commerce_SP_Importing_nonCC_Refunds_Implem_Activity.md).

2.  In the row with the return order for the *WESTBBQ* customer, click the link in the **Order Nbr.** column.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens with the return order selected, review the order as follows:
    -   In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes contain the reference number of the original order in the Shopify store. In the **External Reference** box, the system has inserted the identifier of the refund in the Shopify store.
    -   On the **Details** tab, the system has inserted two lines: one with the returned item \(*PLUMJAM96*\) with a quantity of 2; the other one with the *REFUNDAMT* non-stock item, which reflects an order-level refund of $10 that you specified in the Shopify store. Notice that in the **Reason Code** column of both lines, the system inserted *EREFUND*, which is the reason code you specified in the **Refund Reason Code** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form in [Importing Non-Card Refunds: Implementation Activity](Commerce_SP_Importing_nonCC_Refunds_Implem_Activity.md).

## Step 12: Reviewing the Refund { .section}

To review the refund created for the return order, do the following:

1.  Open the Payments and Applications \(AR3020PL\) form.

    Notice that a document of the *Refund* type has been created for the *WESTBBQ* customer.

2.  In the row with this refund, click the link in the **Reference Nbr.** column.
3.  On the [Payments and Applications](AR_30_20_00.md) form, which opens with the refund selected, review the document details.

    In the **Description** box, notice the information about the store name, sales order number, and store payment method to which the refund was applied. The **Available Balance** column reflects the amount refunded in the Shopify store. The **Payment Method** and **Cash Account** boxes have the same values as the original prepayment \(*ONLINE* and *10250ST*, respectively\).

    On the **Sales Orders** tab, notice that the refund has been linked to the return order.


You have now imported to Acumatica ERP a refund for a returned item and a partial refund of the order amount for an order that has been fully shipped. For the purposes of this activity, you do not need to process the return order or refund further.

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_SP_Importing_nonCC_Refunds_Mapref.md)

