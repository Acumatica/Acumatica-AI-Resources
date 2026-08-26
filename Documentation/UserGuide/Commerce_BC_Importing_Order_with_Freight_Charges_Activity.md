# Importing an Order with Freight Charges: Activity {#_bca40511-f23b-41b3-9391-d74c5a254f7c .task}

The following activity will walk you through the process of configuring a shipping method in the BigCommerce store and mapping it to an existing ship via code in Acumatica ERP. You will also create a sales order for stock items that need to be shipped to the customer's location, import the order to Acumatica ERP, and then review the results of the import.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that you are an implementation consultant helping the SweetLife Fruits &amp; Jams company to configure the integration with the BigCommerce store. As part of the implementation process, you want to explore how freight charges added to an online order in the BigCommerce store are imported to Acumatica ERP. For testing purposes, you need to configure a shipping zone that will correspond to Manhattan, where SweetLife's head office and main warehouse are also located. For shipments to this area, you will charge a small handling fee of $5. You need to create at least one shipping method for the shipping zone. For simplicity, you will charge a $30 shipping fee per order. Before processing an order placed with the shipping method, you need to map it to the ship via code and shipping terms defined in Acumatica ERP.

To test the configuration, you need to create a BigCommerce order that requires a shipment; you will then synchronize it with Acumatica ERP and review the details of the imported order. For training purposes, you will process a purchase of a cherry jam for the GoodFood One Restaurant customer. GoodFood is located in Manhattan and the shipping option corresponding to the created shipping rule will be available to this customer in the cart and at checkout.

## Process Overview { .section}

In this activity, you will do the following:

1.  In the BigCommerce store, on the **Shipping Manager** page, you will create a shipping zone for Manhattan and configure a shipping rule for this shipping zone based on a flat fee.
2.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form of Acumatica ERP, you will map the shipping rule you created to the *LOCAL* ship via code, which has been preconfigured in Acumatica ERP.
3.  By using the control panel of the BigCommerce store, you will create a sales order for the *GoodFood* customer.
4.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form of Acumatica ERP, you will prepare sales order data for import from BigCommerce to Acumatica ERP.
5.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, you will synchronize sales order data.
6.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you will review the imported sales order and analyze how the freight fees have been imported to Acumatica ERP.

## System Preparation { .section}

Before you complete the steps described in this activity, do the following:

-   Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
    -   The entities have been prepared for synchronization, as described in [Preparing Entities for Synchronization: Implementation Activity](Commerce_BC_Preparing_Entities_Implem_Activity.md).
    -   The first synchronization of data has been completed manually, as described in [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md).
-   Sign in to the control panel of the BigCommerce store as an administrator.

## Step 1: Configuring a Shipping Rule in the BigCommerce Store { .section}

To configure a shipping rule in the BigCommerce store, do the following:

1.  In the left menu of the control panel, click **Store Setup** &gt; **Shipping**.
2.  On the **Shipping Manager** page, which opens, in the **Checkout Shipping Options** section, click **Add shipping zone** &gt; **Add a custom zone**.
3.  On the **Zone** tab of the **Add custom zone** dialog box, which opens, specify the following settings:
    -   **Name**: *New York, Manhattan*
    -   **Type**: *Advanced Selection*
    -   **Multiple postcodes**: Selected
    -   **Country**: *United States*
    -   **Multiple postcodes**: `100*, 101*, 102*`

        These masks cover most of the ZIP codes of Manhattan. For more information about using masks in this box, see the BigCommerce documentation.

4.  On the **Handling fee** tab, in the **Default handling fee** section, select the **Apply a single handling fee to all shipping methods in this zone** option button.
5.  In the **Handling Fee Type** box, which appears, select *Fixed*.
6.  In the **Handling Fee** box, which appears, specify `5.00`.
7.  Click **Submit** to save your changes and close the dialog box.
8.  On the **Shipping Manager** page, in the **Default shipping rules** section, click **Configure** in the row of the *New York, Manhattan* shipping zone.
9.  On the **New York, Manhattan** page, which opens, in the **Static shipping quotes** section, switch on the toggle to enable the *Flat Rate* shipping rule.
10. In the **Flat Rate Options** dialog box, specify the following settings:
    -   **Display name**: `Flat rate` \(entered by default\)
    -   **Shipping rate**: `30.00`
    -   **Type**: *Per Order*
11. Click **Submit** to save your changes and close the dialog box.

## Step 2: Updating the Store's Settings in Acumatica ERP { .section}

To map the shipping rule you created in Step 1 with the ship via code in Acumatica ERP, do the following:

1.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded and the BigCommerce store configured by using the *gibbs* username and *123* password.
2.  Open the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
3.  To map the shipping rule configured in BigCommerce with the ship via code in Acumatica ERP in the **Shipping Zone Mapping** section of the **Orders** tab, click the **Ship Via** column in the row of the *New York, Manhattan* store shipping zone and the *Flat Rate* store shipping method, and select *LOCAL* in the lookup table.

    For the purposes of this activity, leave the **Shipping Zone** and **Shipping Terms** columns empty.

4.  On the form toolbar, click **Save**.

## Step 3: Creating a Sales Order { .section}

To create a sales order for the *GOODFOOD* customer in the BigCommerce store, do the following:

1.  In the left menu of the control panel of the BigCommerce store, click **Orders** &gt; **Add**.
2.  On the **Add an Order - Customer Info** page, complete the order as follows:
    1.  In the **Customer Information** section, set **Order for** to *Existing Customer*.
    2.  In the **Search** box, start typing the customer name, `GOODFOOD`, and select the *GoodFood One Restaurant* customer from the list of search results.
    3.  In the **Transactional Currency** section, make sure that *US Dollar - USD* is selected in the **Currency** box.
    4.  In the **Billing Information** section, click **Use this address** right of the address boxes to use the existing customer address as a billing address.

        The billing address elements are filled with the settings from the previously saved customer's address.

    5.  At the bottom of the page, click **Next**.
3.  On the **Add an Order - Items** page, under **Add Products**, do the following:
    1.  In the **Search** box, start typing `Cherry`, and from the list of search results, select *Cherry jam 96 oz*.
    2.  In the only row for *Cherry jam 96 oz*, in the **Qty** column, type `30`.

        Notice that in the **Item Price** column, the price of the product is $45.15, which is the default price of the *CHERJAM96* stock item that was imported from Acumatica ERP.

    3.  At the bottom of the page, click **Next**.
4.  On the **Add an Order - Shipping** page, in the **Shipping Method** section, click the **Fetch Shipping Quotes** link.
5.  In the box with the list of shipping options, select *Flat Rate \($35.00\)*.

    Note that this amount combines a $30 shipping fee, which corresponds to the flat-rate shipping rule, and a $5 handling fee, which you configured for the *New York, Manhattan* shipping zone \(to which the customer's shipping address belongs\).

    For the purposes of this activity, you can assume that the billing address and shipping address are the same.

6.  At the bottom of the page, click **Next**.
7.  On the **Add an Order - Finalize** page, do the following:
    -   Review the information in the **Customer Billing Details**, **Shipping Details**, and **Summary** sections
    -   In the **Finalize** section, select the *Manual Payment* payment method.
8.  At the bottom of the page, click **Save &amp; Process Payment**.
9.  On the **View Orders** page, which opens, notice that the order has been created.

## Step 4: Importing the Sales Order { .section}

To import the sales order you created in Step 3 to Acumatica ERP, do the following:

1.  Sign in to Acumatica ERP by using the *gibbs* username.
2.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
3.  In the Summary area, specify the following settings:
    -   **Store**: The name of your BigCommerce store
    -   **Prepare Mode**: *Incremental*
4.  In the table, in the row of the *Sales Order* entity, select the unlabeled check box.
5.  On the form toolbar, click **Prepare**.
6.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.
7.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, on the form toolbar, click **Process All** to process all out-of-sync synchronization records.
8.  In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the dialog box.

## Step 5: Reviewing the Imported Sales Order { .section}

To review how the freight charges are displayed in the imported sales order, do the following:

1.  Open the Sales Orders \(SO3010PL\) form.
2.  In the list of orders, click the order number link of the sales order for the *GOODFOOD* customer that you created in Step 3 and imported in Step 4.
3.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the **Totals** tab, review the freight details in the **Freight Info** section.

    Notice that the $35.00 amount is displayed in the **Freight Price** box. During the import of the sales order, the system combined the $30 shipping fee and the $5 handling fee.


**Parent topic:**[Importing Orders with Freight Charges](../UserGuide/Commerce_BC_Importing_Order_with_Freight_Charges_Mapref.md)

