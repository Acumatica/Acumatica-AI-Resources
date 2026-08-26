# Sale of Matrix Items: To Import an Order with Matrix Items {#_2e57b87a-28a1-4660-b598-75b031cc828f .task}

The following activity will walk you through the processes of purchasing products with variants \(matrix items\) in the Shopify store and importing the sales order with these products into Acumatica ERP.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams sells juices \(which are defined in Acumatica ERP as matrix items based on the *JUICE* template item\) in its Shopify store. Acting as an implementation consultant helping SweetLife to set up the integration between Acumatica ERP and the Shopify store, you want to explore how online orders containing matrix items \(product variants\) are imported to Acumatica ERP and review the results of the import.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the storefront of the Shopify store, place an order with two variants of the *Juice* product.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
    -   The *JUICE* template item has been exported to the Shopify store, as described in [Sale of Matrix Items: To Export Matrix Items](Commerce_SP_Selling_Matrix_Items_To_Export_Matrix_Items.md).
    -   The *SHOPIFYPAY* payment method has been defined and mapped to the store payment method configured for the Shopify Payments payment provider, as described in [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md).
2.  Sign in to the admin area of the Shopify store as the store administrator.

## Step 1: Creating an Order { .section}

To create an order for five 32-fluid-ounce bottles of peach juice and five 16-fluid-ounce bottles of apple juice in the storefront, do the following:

1.  In the left menu of the admin area, click Preview right of **Online Store**.
2.  On the storefront, start typing `juice` in the search bar, and then select *Juice* in the search results.
3.  On the page for *Juice*, select the following options:
    -   **Ingredient**: *Peach*
    -   **Package**: *Glass bottle*
    -   **Volume**: *32 fl oz*
4.  Click **Add to cart**.
5.  On the page of *Juice*, select the following options:
    -   **Ingredient**: *Apple*
    -   **Package**: *Glass bottle*
    -   **Volume**: *16 fl oz*
6.  Click **Add to cart**.
7.  In the confirmation pop-up window that opens, click **View my cart**.
8.  In your cart, specify a quantity of 5 for each product, and click **Check out**.
9.  On the order creation page, specify the needed settings as follows:
    1.  In the **Contact** section, in the **Email or mobile phone number** box, type `melody@example.com`.
    2.  In the **Shipping address** section, specify the following settings:
        -   **First name**: `Melody`
        -   **Last name**: `Keys`
        -   **Address**: `3402 Angus Road`
        -   **City**: `New York`
        -   **Country/region**: *United States*
        -   **State**: *New York*
        -   **ZIP code**: `10003`
    3.  At the bottom of the page, click **Continue to shipping**.
10. On the order creation page \(**Shipping** step\), in the **Shipping method** section, make sure that the **Economy** option button is selected, and click **Continue to payment**.
11. On the order creation page \(**Payment** step\), in the **Payment** section, specify the following settings under **Credit card**:
    -   **Card number**: `4242 4242 4242 4242`
    -   **Name on card**: *Melody Keys*
    -   **Expiration date**: `12/23`
    -   **Security code**: `123`
12. In the **Billing address** section, select the **Same as shipping address** option button.
13. Click **Pay now** to place and pay your order.

    Your order has been created, and on the confirmation page, the order number is displayed. You will process the order with this order number further in this activity.


## Step 2: Importing the Sales Order { .section}

To import the order that you created to Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*
4.  In the table, select the check box in the unlabeled column in the row of the *Sales Order* entity.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
7.  In the row of the *Sales Order* entity, click the link with the number of prepared synchronization records in the **Ready to Process** column.
8.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - SP* store and the *Sales Order* entity selected, select the unlabeled check box in the row of the order that you created in Step 1, and on the form toolbar, click **Process**.
9.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Sales Order { .section}

To review the details of the imported sales order, do the following:

1.  Open the [Sync History](BC_30_10_00.md) \(BC301000\) form.
2.  In the Summary area of the form, specify the following settings:
    -   **Store**: *SweetStore - SP*
    -   **Entity**: *Sales Order*
3.  On the **Processed** tab, in the row of the sales order that you have just imported \(which you can locate by its external ID\), click the link in the **ERP ID** column.
4.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens for the imported order, review the order details.

    On the **Details** tab, notice that a separate line was added for each product variant that was sold. The **Inventory ID** column contains the identifiers of the matrix items generated for the *JUICE* template item \(which are *PCH-32OZ-GBT* and *APL-16OZ-GBT*\) and not the identifier of the *JUICE* template item itself.


For the purposes of this activity, you do not need to process the sales order.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

