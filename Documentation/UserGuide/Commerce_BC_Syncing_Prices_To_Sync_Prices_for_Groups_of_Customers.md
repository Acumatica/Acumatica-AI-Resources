# Price Synchronization: To Export Prices for Customer Groups {#_d813040d-1277-4cd7-b324-6b94a25ac6da .task}

In this activity, you will explore how sales prices of the *Customer Price Class* type are exported from Acumatica ERP to and saved in the BigCommerce store.

**Important:**

-   The following activity is based on the *U100* dataset.
-   You can export price lists from Acumatica ERP only to BigCommerce stores on the *Enterprise* subscription plan. For information about BigCommerce subscription plans and available features, see the [Pricing](https://www.bigcommerce.com/essentials/pricing/) page.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams wants to maintain all of its sales prices, including the prices of products sold in the BigCommerce online store, in Acumatica ERP. As an implementation consultant, you want to export sales prices of the *Customer Price Class* type for different types of jam from Acumatica ERP to the BigCommerce store so that you can offer a product to various groups of customers at different prices.

The company wants to sell the *Pear jam 96 oz* stock item at a discounted price of $43.70 to customers of the *LOCAL* customer price class and at a regular price of $45 to all other customers.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *PEARJAM96* stock item has been created.
-   On the [Customer Price Classes](AR_20_80_00.md) \(AR208000\) form, the *LOCAL* \(for local customers\) customer price class has been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *FRUITICO* customer has been configured.
-   On the [Sales Prices](AR_20_20_00.md) \(AR202000\) form, the sales prices listed in the following table have been defined. Both prices are effective.

|Inventory ID|Price Type|Price Code|UOM|Price|
|------------|----------|----------|---|-----|
|*PEARJAM96*|*Base*|Empty|*PIECE*|*45.00*|
|*PEARJAM96*|*Customer Price Class*|*LOCAL*|*PIECE*|*43.70*|

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, prepare the customer price class, customer, and sales price list data for synchronization.
2.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, process the prepared data of customer price classes, customers, and price lists.
3.  In the control panel of the BigCommerce store, review the customer groups, the exported prices of the item, the exported price list, and create a password for the customer account.
4.  On the storefront, view the product page as a signed-in customer.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Make sure that the following prerequisite activities have been performed:
    1.  [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md)
    2.  [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md)
2.  Sign in to the control panel of the BigCommerce store as the store administrator.
3.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
4.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, open the *SweetStore - BC* store.
5.  On the **Entities** tab, select the unlabeled check box in the row of the *Price List* entity. Notice that the system has automatically selected this check box for *Customer Price Class* entity.

    You select the *Price List* entity to export prices specific to customer price classes.

6.  On the form toolbar, click **Save**.
7.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *FRUITICO* customer.
8.  On the **Shipping** tab \(**Other Settings** section\), in the **Price Class** box, select *LOCAL*.
9.  On the form toolbar, click **Save**.

## Step 1: Preparing the Data { .section}

To synchronize the customer price classes and prices of the stock items that are specific to customer price classes, do the following:

1.  Open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Prepare Mode**: *Full*
    -   **Date Range**: Empty
3.  In the table, select the check box in the unlabeled column for each of the following entities:

    -   *Customer Price Class*
    -   *Customer*
    -   *Price List*
    The *Customer* entity is included in this synchronization process to make sure the customers assigned to the *LOCAL* customer price class are exported to the BigCommerce store and are added to the customer group corresponding to their price class. You will use a customer of this customer price class \(*FRUITICO*\) later in this activity.

4.  On the form toolbar, click **Prepare**.
5.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 2: Processing the Prepared Data { .section}

To process the customer price class, customer, and price list data, do the following:

1.  Open the [Process Data](BC_50_15_00.md) \(BC501500\) form.
2.  In the Summary area, specify the following settings:
    -   **Store**: *SweetStore - BC*
    -   **Entity**: *Customer Price Class*
3.  On the form toolbar, click **Process**.
4.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
5.  In the **Entity** box, select *Customer*.
6.  On the form toolbar, click **Process**.
7.  In the **Processing** dialog box, which opens, click **Close** to close the dialog box.
8.  In the **Entity** box, select *Price List*.
9.  On the form toolbar, click **Process**.
10. In the **Processing** dialog box, which opens, click **Close** to close the dialog box.

## Step 3: Reviewing the Customer Groups { .section}

To review the customer groups, in the control panel of the BigCommerce store, do the following:

1.  In the left pane, click **Customers** &gt; **Customer Groups**.

    On the **Customer Groups** page, which opens, notice that two customer groups have been created \(*INTERN* and *LOCAL*\).

    Customer price classes defined in Acumatica ERP are mapped to customer groups in the BigCommerce store. In the **Customers in Group** column, notice the number of customers that have been assigned to each of the customer groups.

2.  In the row of the *LOCAL* customer group, click the *View* link in the **Customers in Group** column.

    On the **View Customers** page, which opens, the system displays two customers assigned to the customer group, including the *FourStar Coffee &amp; Sweets Shop* customer.


## Step 4: Reviewing the Exported Sales Prices of the Item { .section}

To review the sales prices of the *PEARJAM96* stock item in the BigCommerce store, do the following:

1.  In the left pane, click **Products** &gt; **All products**.
2.  On the **View Products** page, in the list of products, locate the *PEARJAM96* stock item, and in the row of this item, click the link in the **Name** column.
3.  On the product management page, which opens for *Pear jam 96 oz*, in the **Pricing** subsection of the **Product Information** section, click the **Show Advanced Pricing** link.

    Notice that two prices are displayed in this section: the default price of $45.15, which is the default price of the stock item maintained on the [Stock Items](IN_20_25_00.md) \(IN202500\) form; and the sales price of $45.00, which is the sales price of the *Base* type defined for the stock item on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form.

4.  At the top of the page, click **View on Storefront**.

    On the product detail page, which opens for *Pear jam 96 oz*, notice that the sales price of $45.00 is displayed as the item's price, and the default price is displayed as the previous price.


## Step 5: Reviewing the Exported Price List { .section}

To review the *LOCAL* price list, which is specific to customers belonging to the *LOCAL* customer group, do the following:

1.  Return to the control panel of the BigCommerce store.
2.  In the left pane, click **Products** &gt; **Price Lists**.
3.  On the **Price Lists** page, which opens, in the **Price List Name** column, click *LOCAL*.

    On the **View Price Lists / LOCAL \(USD\)** page, which opens, review the prices on the **Prices** tab.

    Notice that for the *PEARJAM96* item, the **New Sale Price** column shows a value of $43.70, which is the price of the item defined for the *LOCAL* customer price class on the [Sales Prices](AR_20_20_00.md) form.

    **Tip:** If the **New Sale Price** column is not displayed in the table, click **Edit column** in the upper right of the table and select the check box for the **New Sale Price** column.


## Step 6: Creating a Password for the Customer { .section}

To create a password for the *FourStar Coffee &amp; Sweets Shop* customer, do the following:

1.  In the left pane, click **Customers** &gt; **All customers**.
2.  While you are still viewing the **View Customers** page, click the *FourStar Coffee &amp; Sweets Shop* link in the **Name** column.
3.  On the **Edit Customer** page, which opens, in the **Customer Password** section, specify the customer password of `!Q123456` in both the **Password** box and the **Confirm Password** box.
4.  In the lower right, click **Save &amp; Exit** to save your changes.

## Step 7: Viewing the Product Page as a Signed-In Customer { .section}

To view customer price, do the following:

1.  At the upper right, click **View storefront** to open the storefront.
2.  On the storefront, click **Sign In** in the upper right of the main page.
3.  On the Sign-In page, enter the following credentials:
    -   **Email Address**: `salesperson.fourstars@example.com`
    -   **Password**: `!Q123456`
4.  Click **Sign in** to sign in to the account of the *FourStar Coffee &amp; Sweets Shop* customer.
5.  In the upper right, click **Search**, and start typing `pearjam` in the search box.
6.  In the list of search results, click the tile of *Pear jam 96 oz*.

    On the product detail page, which opens for *Pear jam 96 oz*, review the product price. *Pear jam 96 oz* is available for purchase at $43.70, which is the price specific to the *LOCAL* customer price class \(or customer group\) to which the *FourStar Coffee &amp; Sweets Shop* is assigned.

7.  In the upper right, click **Sign Out** to sign out of the *FourStar Coffee &amp; Sweets Shop* account.

**Parent topic:**[Synchronizing Sales Prices](../UserGuide/Commerce_BC_Syncing_Prices_Mapref.md)

