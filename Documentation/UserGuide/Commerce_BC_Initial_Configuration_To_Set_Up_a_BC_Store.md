# Initial Configuration: To Set Up a BigCommerce Store {#_39e1dc11-2ba4-4ab7-b680-a635625a842a .task}

This activity will guide you through the process of signing up for a BigCommerce trial account and performing the minimum configuration of a BigCommerce store so that it can be connected with the Acumatica ERP instance.

## Story { .section}

The SweetLife company is planning on opening an online store built on the BigCommerce platform. The store's warehouse, from which the goods sold online will be shipped, is based in New York. The company maintains the prices of its products in U.S. dollars and delivers products across New York by using the company's own vehicles. For orders in the amount of $100 and more, the company offers free shipping.

As an implementation consultant helping SweetLife to implement the integration between BigCommerce and Acumatica ERP, you want to set up a new store and perform the minimum required configuration of the BigCommerce store that will be sufficient to proceed with the configuration of the integration.

**Note:** This activity covers the creation and basic configuration of a new BigCommerce store. The results of performing the instructions presented below are used in subsequent activities. We recommend that you sign up for a new trial account and create a new store for testing purposes. If you have an existing test store and do not want to set up another one, make sure that in the subsequent activities, you make the necessary adjustments where the results of the current activity are used.

## Process Overview { .section}

In this activity, you will perform the following steps in BigCommerce:

1.  Signing up for a BigCommerce trial account
2.  Completing the store profile
3.  Specifying the default currency
4.  Configuring the shipping rules
5.  Turning off notifications about changes to customer accounts
6.  Deleting existing products and product categories

## Step 1: Signing Up for a BigCommerce Trial Account { .section}

Create a BigCommerce trial account by following [the instructions in the BigCommerce documentation](https://support.bigcommerce.com/s/article/Starting-a-Bigcommerce-Trial). Make a note of the login and password that you have created, because you will use them to sign in to the control panel of your store as the store owner.

## Step 2: Completing the Store Profile { .section}

To complete the profile of the BigCommerce store, do the following:

1.  Sign in to the BigCommerce store as the store owner by using the username and password you have created in the previous step.

    You are now viewing the BigCommerce control panel, which you will use for setup and management of the store.

2.  In the left pane, click **Settings**.
3.  On the **Settings** page, in the **Setup** section, click **Store profile**.
4.  On the **Store profile** page, in the **Contact information** section, specify the following details:
    -   **Store display name**: `SweetStore - BC`
    -   **Address**: `3950 Hoffman Avenue, Elmont, New York`
    -   **Address type**: *Retail*
5.  In the **Locale** section, make sure that the following values are selected:

    -   **Default country**: *United States*
    -   **Default language**: *English \(en\)*
    **Important:** Make sure that you have selected the correct country because it affects the range of payment, shipping, and tax options available for your store.

6.  In the lower right, click **Save** to save your changes.

## Step 3: Specifying the Default Currency { .section}

To specify the default currency in which prices will be displayed to customers and in which transactions will be made, do the following:

1.  While you are still signed in to the control panel of your BigCommerce store, in the left pane, click **Settings**.
2.  On the **Settings** page, in the **Setup** section, click **Currencies**.
3.  On the **Currencies** page, which opens, in the **Default Currency** section, make sure that the default currency \(which is determined by BigCommerce automatically\) is *US Dollar - USD*.

**Tip:** If the default currency is anything other than *US Dollar - USD*, do the following:

1.  In the **Allow shoppers to purchase in their currency** section, click **Add new currency**.
2.  In the **Add Currency** dialog box, which opens, in the **Currency code** box, select *USD - US Dollar* and click **Next**.
3.  On the **USD - US Dollar** page, leave the default settings, and click **Save**.
4.  On the **Currencies** page, in the **Additional Currencies** section, click the More button in the rightmost column in the row for the *US Dollar - USD* currency, and in the menu that opens, select **Set as default**.
5.  In the **Set USD as your default currency** dialog box, click **Set as default** again.
6.  In the **Additional Currencies** section, click the More button in the rightmost column in the row for an additional currency, and in the menu that opens, select **Delete**.
7.  In the **Delete &lt;additional currency&gt;** dialog box, which opens, click **Delete**.

Because SweetLife wants to display prices and sell products only in United States dollars, the configuration of other currencies is not needed.

For the purposes of the initial configuration and first synchronization, which you will perform in [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md), you do not need to set up any payment methods at this time.

## Step 4: Configuring the Shipping Rules { .section}

To configure the shipping rules for your online store, do the following:

1.  While you are signed in to the BigCommerce store, in the left pane of the control panel, click **Settings**,
2.  On the **Settings** page, in the **Setup** section, click **Shipping**.
3.  On the **Shipping** page, which opens, in the **Shipping origin** section, review the location from which products are going to be shipped. If the address is not displayed, add it as follows:
    1.  In the **Shipping origin** section, click **Add shipping address**.
    2.  In the **Configure shipping address** dialog box, which opens, specify the following details:
        -   **Address Line 1**: `3950 Hoffman Avenue`
        -   **City**: `New York`
        -   **Postcode**: `11003`
        -   **Country**: *United States* \(default\)
        -   **State**: *New York*
    3.  In the lower right, click **Submit**.
4.  In the **Checkout shipping options** section, do the following:
    1.  Click **Add shipping zone** &gt; **Add a custom zone**.
    2.  In the **Add custom zone** dialog box, which opens, on the **Zone** tab, specify the following settings:
        -   **Name**: `New York State`
        -   **Type**: *Selection of states or provinces*
        -   **Country**: *United States*
        -   **State**: *New York*
    3.  Click **Submit** to save the changes and close the dialog box.

        In the **Basic shipping rules** subsection, notice that the *New York State* rule is now active \(the toggle is switched on for it\).

    4.  Delete any other shipping rules by clicking the **Delete** button in the row with this shipping rule.
5.  In the **Basic shipping rules** subsection, in the row of *New York State*, click **Configure**.
6.  On the **New York State** page, in the **Static shipping quotes** section, switch on the toggle to enable the *Free Shipping* rule.
7.  In the **Free shipping options** dialog box, which opens, specify the following settings:

    -   **Limit to order over**: Selected
    -   Amount \(USD\): `100.00`
    -   **Use discounted order subtotal**: Selected
    -   **Make products with a fixed shipping cost ineligible for free shipping**: Selected
    With these settings, the orders in the amount of $100 or more will be eligible for free shipping.

8.  In the lower right of the dialog box, click **Submit** to save your changes.
9.  In the lower right of the **New York State** page, to which you return, click **Done**.

    For simplicity, you do not need to specify any other shipping rules at this time. In a production environment, you are most likely to configure the shipping options on a more granular level.


## Step 5: Turning Off Notifications About Changes to Customer Accounts { .section}

For testing purposes we recommend that you turn off sending email notifications to customers every time their details are changed. To do this, do the following:

1.  While you are signed in to the control panel of the BigCommerce store, in the left pane, click **Marketing** &gt; **Transactional Emails**.
2.  On the **Transactional emails** page, in the row of the *Account Settings Edited* template, click the More button in the rightmost column, and on the menu that opens, click **Disable**.

    The status of the template id changed to *Disabled*.


## Step 6 \(Optional\): Deleting Existing Product Categories and Products { .section}

Sample products and product categories have been preloaded to your BigCommerce store for demo purposes. To delete these product categories and products assigned to these categories in your BigCommerce store, do the following:

1.  In the left pane, click **Products** &gt; **Categories**.
2.  On the table toolbar of the **Product categories** page, select the **&lt;Number&gt; categories** check box.

    This selects check boxes in all the rows in the list of categories. Also, additional buttons appear right to the selected check box on the table toolbar.

3.  On the table toolbar, click the **Delete** button.
4.  In the **Delete categories** dialog box, which opens, click **Delete categories**.

    The system deletes all the categories.

5.  In the left pane, click **Products** &gt; **All products**.
6.  On the table toolbar of the **Products** page, select the **&lt;Number&gt; products** check box.

    This selects check boxes in all the rows in the list of products. Also, additional buttons appear right to the selected check box on the table toolbar.

7.  On the table toolbar, click the **Delete** button.
8.  In the **Delete products** dialog box, which opens, click **Delete**.

    The system deletes all the products.


You have specified the minimum set of store settings that you will need for the basic configuration of the BigCommerce integration.

Now you should proceed to review the configuration of your Acumatica ERP instance, as described in [Initial Configuration: To Prepare the Acumatica ERP Instance](Commerce_BC_Initial_Configuration_To_Prepare_Acumatica_ERP_Instance.md).

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

