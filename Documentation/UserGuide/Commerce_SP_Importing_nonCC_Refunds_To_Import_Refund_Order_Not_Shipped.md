# Importing Non-Card Refunds: To Process a Refund for a Not-Yet-Shipped Order {#_51b8f069-44f3-4324-ae6f-f7ec3bbc83f8 .task}

The following activity will walk you through the process of importing a partial refund from the Shopify store to Acumatica ERP. This is a partial refund of an order that has been paid by a non-card payment method and has not yet been shipped.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that a representative of the GoodFood One Restaurant customer placed an order for 10 jars of banana jam in the SweetLife Fruits &amp; Jams retail store and paid the entire order amount upfront in cash. The jam was to be delivered from the SweetLife Fruits &amp; Jams warehouse within seven days. Later the same day, before the jam was shipped, the representative of GoodFood One Restaurant showed up in the retail store. The representative informed the store manager that an error had occurred and only 3 jars of banana jam should have been purchased, and asked the manager to refund the cost of the remaining quantity of banana jam. As the store manager, you need to refund the cost of 3 jars of banana jam and import this refund to Acumatica ERP so that the correct quantities of jam will be issued from SweetLife Fruits &amp; Jams's warehouse.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  In the admin area of the Shopify store, place a sales order for a customer.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for processing, and on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the sales order data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, release the prepayment related to the imported sales order.
5.  In the admin area of the Shopify store, update the order quantities, and issue a refund to the customer.
6.  On the [Prepare Data](BC_50_10_00.md) form, prepare the refund data for processing, and on the [Process Data](BC_50_15_00.md) form, process the refund data.
7.  On the [Sales Orders](SO_30_10_00.md) form, review the updated sales order, and on the [Payments and Applications](AR_30_20_00.md) form, review the updated prepayment.
8.  On the [Payments and Applications](AR_30_20_00.md) form, review and release the refund.

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure that the following prerequisite activities have been performed:
    -   [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md)
    -   [Data Synchronization: To Perform the First Synchronization](Commerce_SP_Data_Sync_Activity_First_Sync.md)
    -   [Importing Non-Card Refunds: Implementation Activity](Commerce_SP_Importing_nonCC_Refunds_Implem_Activity.md)
2.  Sign in to the admin area of the Shopify store as the store administrator.

## Step 1: Placing an Order { .section}

To create an order for ten 96-ounce jars of banana jam from the Shopify admin area, do the following:

1.  In the left menu of the admin area, click **Orders**.
2.  On the **Orders** page, which opens, in the top right, click **Create order**.
3.  On the **Create order** page, which opens, in the **Order details** section, start typing `Banana` in the search bar.
4.  In the list of search results, which are shown in a pop-up window, select *Banana jam 96 oz*, and click **Add to order**.
5.  In the row with the *Banana jam 96 oz* product, change the quantity to `10`.
6.  In the **Find or create a customer** section, start typing `good` in the search bar. In the list of search results, select *GoodFood One Restaurant*.
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
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Sales Order* entity selected
9.  On the form toolbar, click **Process All**.
10. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Sales Order { .section}

To review the imported sales order, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.
2.  In the list of orders, click the order number link of the last sales order of the *EO* type for *GoodFood One Restaurant* \(which is the order you imported in the previous step\).
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, review the settings of the sales order.

    In the Summary area, notice that the **Customer Order Nbr.** and **Description** boxes include the order number from Shopify. In the **Customer** box, the system has inserted the ID of the customer that was generated based on the customer numbering sequence defined on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

    On the **Details** tab, review the quantity of the *BANJAM96* items, which is 10 pieces.

    On the **Payments** tab, review the details of the prepayment that was created and applied to the sales order when the sales order was imported. Notice that the **Payment Method** and **Cash Account** columns show the payment method and cash account defined in Acumatica ERP and mapped to the *MANUAL* store payment method \(*ONLINE* and *10250ST*, respectively\). The prepayment has the *Balanced* status. Before you can process and import a refund in the Shopify store, you need to release this prepayment.


## Step 4: Releasing the Imported Payment { .section}

To release the payment imported with the sales order from the Shopify store, do the following:

1.  While you are still viewing the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, click the link with the prepayment number in the **Reference Nbr.** column.
2.  On the form toolbar of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens in a pop-up window with the prepayment selected, click **Release**.

    Once the prepayment is successfully released, its status is changed to *Open*.


## Step 5: Issuing a Refund for an Individual Item { .section}

To issue a refund for units of an individual item in your Shopify store, do the following:

1.  Sign in to the admin area of your Shopify store.
2.  In the left menu, expand the **Orders** node and click **Orders**.
3.  On the **Orders** page, in the list of orders, open the order that you created and imported.
4.  On the sales order page, which opens, on the page toolbar, click **Refund**.
5.  On the **Refund** page, in the item quantity box, specify *3*.
6.  In the Summary section, review the refunded amount and click **Refund $147.48**.

    The refund amount includes the item subtotal \($135.45\) and applicable taxes \($12.03\).


## Step 6: Importing the Refund { .section}

To import the refund to Acumatica ERP, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the **Store** box, select *SweetStore - SP*.
3.  In the **Prepare Mode** box, select *Incremental*.
4.  In the table, select the unlabeled check box in the row with the *Refund* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.
7.  Click the link in the **Ready to Process** column in the row with the *Refund* entity.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Refund* entity selected in the Summary area, select the unlabeled check box in the row with the refund \(which you can identify by the number of the order it refers to in the **External ID** column\).
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 7: Reviewing the Results of the Import { .section}

To review how the refund has been imported to Acumatica ERP, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, open the sales order that you created and imported earlier in this activity, and review the order as follows:
    -   On the **Details** tab, notice that the quantity of the *BANJAM96* stock item has been reduced from *10* to *7*.
    -   In the Summary area, notice that the order total has been reduced to reflect the new item quantity. The **Description** box now shows the updated status of the order in the Shopify store, which is *Partially Refunded*.
2.  On the **Payments** tab, click the link of prepayment number in the **Reference Nbr.** column.
3.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens with the prepayment selected, notice that the applied amount and the available balance reflect the reduced order amount and the refunded amount, respectively.

## Step 8: Reviewing and Releasing the Refund { .section}

1.  Open the Payments and Applications \(AR3020PL\) form.

    In the list of documents, notice that a new *Refund* document has been created for the refund you imported in Step 6. \(You can identify it by the order number and transaction type shown in the **Description** column\).

2.  In the **Reference Nbr.** column, click the link with the identifier of the refund.
3.  On the form toolbar of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens with the refund selected, click **Remove Hold**, and then click **Release**.

    Once the processing of the refund is finished, its status changes to *Closed*.

4.  On the **Application History** tab, which shows the prepayment to which the refund was applied, in the only row, click the link in the **Reference Nbr.** column.
5.  On the [Payments and Applications](AR_30_20_00.md) form, which opens with the prepayment selected, notice that the available balance has become zero.

You have now imported a partial refund for ordered items in an order that has not yet been shipped and processed this partial refund.

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_SP_Importing_nonCC_Refunds_Mapref.md)

