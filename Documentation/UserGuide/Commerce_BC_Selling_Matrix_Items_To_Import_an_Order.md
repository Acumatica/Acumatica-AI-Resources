# Selling Matrix Items: To Import an Order with Matrix Items {#_5c7a6721-f60a-4c8d-a26d-c363674df278 .task}

The following activity will walk you through the processes of purchasing product variants \(matrix items\) in the BigCommerce store and importing the sales order containing these products into Acumatica ERP.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that SweetLife Fruits and Jams sells juices \(which are defined in Acumatica ERP as matrix items based on the *JUICE* template item\) in its BigCommerce store. Acting as an implementation consultant helping SweetLife to set up the integration between Acumatica ERP and the BigCommerce store, you want to explore how online orders containing matrix items \(product variants\) are imported to Acumatica ERP and review the results of the import.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the storefront of the BigCommerce store, place an order with two variants of the *JUICE* product.
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the sales order data for synchronization; on the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, review the imported sales order.

## System Preparation { .section}

Before you complete the instructions in this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
    -   Customers have been created and synchronized with the BigCommerce store, as described in [Synchronizing Customers: To Synchronize Customers with Multiple Locations](Commerce_BC_Syncing_Customers_To_Sync_Customers_with_Locations.md).
    -   The *JUICE* template item has been exported to the BigCommerce store, as described in [Selling Matrix Items: To Export Matrix Items](Commerce_BC_Selling_Matrix_Items_To_Export_Matrix_Items.md).
    -   The available quantities of the matrix items based on the *JUICE* template item have been exported, ass described in [Selling Matrix Items: To Export Product Availability Data](Commerce_BC_Selling_Matrix_Items_To_Sync_Product_Availability.md).
    -   Sales prices of the matrix items based on the *JUICE* template item have been exported, as described in [Selling Matrix Items: To Export Base Prices](Commerce_BC_Selling_Matrix_Items_To_Export_Base_Prices.md).
2.  Sign in to the control panel of the BigCommerce store as the store administrator.

## Step 1: Creating an Order { .section}

To create an order for 10 bottles of peach juice and 5 bottles of apple juice, while you are signed in to the control panel of the BigCommerce store, do the following:

1.  In the left pane, click **Orders** &gt; **Add**.
2.  On the **Add an order** page \(**Customer info** step\), create the order as follows:
    1.  In the **Customer information** section, select the **Existing customer** option button right of **Order for**.
    2.  In the **Search** box, start typing the customer's name, `Isabelle`, and select *Isabelle Bober* in the list of search results.
    3.  In the **Billing Information** section, click *Use this address* right of the address details for *William Duncan*.

        The billing address elements are filled with the settings from the previously saved address of this customer.

    4.  Clear the **Save to customer's address book** check box.
    5.  In the lower right, click **Next**.
3.  On the **Add an order** &gt; **Items** page, under **Add products**, do the following:
    1.  In the **Search** box, start typing `juice`, and in the list of search results, select *Juice*.
    2.  In the **Customize Juice** dialog box, which opens, specify the following settings:
        -   **Ingredient**: *Peach*
        -   **Package**: *Glass bottle*
        -   **Volume**: *32 fl oz*
    3.  In the lower right of the dialog box, click **Add item** to add the item to the order and close the dialog box.
    4.  Specify the quantity of *10* for the added peach juice.
    5.  In the **Search** box, start typing `juice`, and in the list of search results, select *Juice*.
    6.  In the **Customize Juice** dialog box, which opens, specify the following settings:
        -   **Ingredient**: *Apple*
        -   **Package**: *Glass bottle*
        -   **Volume**: *16 fl oz*
    7.  In the lower right of the dialog box, click **Add item** to add the item to the order and close the dialog box.
    8.  Specify the quantity of *5* for the added apple juice.
    9.  In the lower right, click **Next**.
4.  On the **Add an order** &gt; **Fulfillment** page, do the following:
    1.  In the **Shipping method** section, click the *Fetch shipping quotes* link.
    2.  In the box with the list of shipping options, click *Free Shipping \($0.00\)*.
    3.  In the lower right, click **Next**.
5.  On the **Add an order** &gt; **Payment** page, do the following:
    1.  In the **Payment** section, select the *Manual payment* payment method.
    2.  In the lower right, click **Save &amp; process payment**.
6.  On the **View orders** page, which opens, make a note of the reference number of the created order.

## Step 2: Importing the Sales Order { .section}

To import the order that you created to Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, specify the following settings in the Summary area:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Incremental*
3.  In the table, select the check box in the unlabeled column in the row of the *Sales Order* entity.
4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
6.  In the row of the *Sales Order* entity, click the link with the number of prepared synchronization records in the **Ready to Process** column.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, which opens with the *SweetStore - BC* store and the *Sales Order* entity selected, select the unlabeled check box in the row of the order that you created in Step 1, and on the form toolbar, click **Process**.
8.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 3: Reviewing the Imported Sales Order { .section}

To review the details of the imported sales order, do the following:

1.  On the [Sync History](BC_30_10_00.md) \(BC301000\) form, specify the following settings in the Summary area:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Sales Order*
2.  On the **Processed** tab, in the row of the sales order that you have just imported \(which you can locate by its external ID\), click the link in the **ERP ID** column.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens for the imported order in a pop-up window, review the order details.

    On the **Details** tab, notice that a separate line was added for each product variant that was sold. The **Inventory ID** column contains the identifiers of the matrix items generated for the *JUICE* template item \(which are *PCH-32OZ-GBT* and *APL-16OZ-GBT*\) and not the identifier of the *JUICE* template item itself.


For the purposes of this activity, you do not need to process the sales order.

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

