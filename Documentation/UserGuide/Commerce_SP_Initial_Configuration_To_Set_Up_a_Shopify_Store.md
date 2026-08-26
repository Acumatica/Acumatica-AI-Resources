# Initial Configuration: To Set Up a Shopify Store {#_a62e068b-df4c-4170-95ce-333a1a740f0a .task}

This activity will guide you through the process of signing up for a Shopify trial account and performing the minimum configuration of a Shopify store so that it can be connected with the Acumatica ERP instance.

## Story { .section}

The SweetLife company is planning on opening an online store built on the Shopify platform. The store's warehouse, from which the goods sold online will be shipped, is based in New York. The company maintains the prices of its products in U.S. dollars and delivers products across New York by using the company's own vehicles. As an implementation consultant helping SweetLife to implement the integration between Shopify and Acumatica ERP, you want to set up a new store and perform the minimum required configuration of the Shopify store that will be sufficient to proceed with the configuration of the integration.

## Process Overview { .section}

In this activity, you will perform the following steps in Shopify:

1.  Sign up for a Shopify trial account
2.  Set the store name and address
3.  Set the store time zone
4.  Set up the store currency
5.  Review the default shipping options
6.  Review the storefront settings

## Step 1: Signing Up for a Shopify Trial Account { .section}

**Attention:** This activity covers the creation and basic configuration of a new Shopify store. The results of performing the instructions presented below are used in subsequent activities. We recommend that you sign up for a new trial account and create a new store for testing purposes. If you have an existing test store and do not want to set up another one, make sure that in the subsequent activities, you make the necessary adjustments where the results of the current activity are used.

Create a Shopify trial account as follows:

1.  On the [http://www.shopify.com](http://www.shopify.com) webpage, click **Start for free**.
2.  On the sign-up page, that opens, at the bottom, select *United States*.
3.  Sign up using your email or account.

    Make sure to memorize the password because you will need it to sign in to the store.

4.  On the plan selection page requesting your credit card information, which opens, in the lower right, click **Skip** to skip the plan selection.
5.  On the questionnaire page, which opens, at the bottom, click **I'll do this later** to skip the personalization steps.

    You will be signed in to the admin area of your Shopify store.

    In the lower right, pay attention to a notice that says you have 3 days left in your trial.

    **Tip:** Add the link to the admin area of your Shopify store to your favorites to quickly access it.


## Step 2: Setting the Store Name { .section}

To specify the store name, while you are signed in to the admin area of your Shopify store, do the following:

1.  In the lower left of the admin area, click **Settings**.
2.  In the left menu of the page that opens, click **General**.
3.  On the **General** page, which opens, in the **Store contact details** section, click the *My Store* name of your store, which Shopify has assigned by default.
4.  In the **Store contact details** page, which opens, enter the store name in the **Store name** box.

    In subsequent activities, *SweetStore - SP* will be used as the store name.

5.  In the **Store phone** box, enter `516 555 0150`.
6.  At the top of the page, in the **Unsaved changes** bar, click **Save**.

## Step 3: Specifying the Default Store Settings { .section}

To specify the store time zone and to select the currency that will be used for charging customers, do the following:

1.  In the left menu of the page, click **General**.
2.  On the **General** page, which opens, in the **Store defaults** section, set **Time zone** to *\(GMT-05:00\) Eastern Time \(US &amp; Canada\)*.
3.  Notice that in the **Currency display** section, the store default currency is listed. If the currency is set to any value other than *US Dollar \(USD $\)*, change the currency as follows:
    1.  Click the More button next to the currency and then click **Change store currency**.
    2.  In the **Change store currency** dialog box, which opens, select *US Dollar \(USD $\)*
    3.  In the lower right, click **Save** to save the currency and close the dialog box.

## Step 4: Setting the Store Address { .section}

To specify the store address, do the following:

1.  While you are signed in to the admin area of your Shopify store and reviewing the store settings, in the left menu, click **Locations**.
2.  On the **Locations** page, in the **All locations** section, click the only listed default shop location with the *Shop location* name.
3.  On the **Shop location** page, which opens, in the **Locations details** section, click the pencil button right to **Address**.
4.  In the **Edit location address** dialog box, which opens, specify the following settings:
    -   **Country/region**: *United States*
    -   **Address**: `2330 Hoffman Avenue`
    -   **City**: `Elmont`
    -   **State**: *New York*
    -   **ZIP code**: `11003`
    -   **Phone** box: `516 555 0150`.
5.  In the lower right, click **Save**.

    The dialog box closes and you return to the **Shop location** page.

6.  At the top of the page, in the **Unsaved changes** bar, click **Save**.

    The address you have entered is the default address of your store that will be used for calculation of shipping rates.


## Step 5: Reviewing the Default Shipping Options { .section}

To review shipping options that will be available to shoppers, do the following:

1.  While you are signed in to the admin area of your Shopify store and reviewing the store settings, in the left menu, click **Shipping and delivery**.
2.  On the **Shipping and delivery** page, which opens, in the **Shipping** section, click *General profile* in the **Shipping profiles** table.
3.  On the **General profile** page, which opens, review that the settings that have been defined by default during the creation of the store.

    Notice that the **Fulfillment location** section displays the address that you specified for your store. Notice that two shipping zones \(*Domestic* and *International*\) have been created by default, and a set of rates has been defined for the *Domestic* shipping zone. This shipping zone will be used in subsequent activities.


## Step 6: Reviewing the Storefront Settings { .section}

To review the storefront settings and the storefront itself, do the following:

1.  While you are signed in to the admin area of your Shopify store and reviewing the store settings, close the settings page to return to the main page of the admin area.
2.  In the left pane, click the **Online Store** sales channel.
3.  On the **Themes** page, which opens, make sure that any theme is installed.

    If no theme is installed, you will see the **No theme is installed** section on the top of the page.

4.  If no theme is installed, click **Install default theme**.
5.  In the upper right, click **View store** to review the storefront with the installed theme, which opens in a new tab.

    In the browser address bar notice the store URL, which usually looks like this: *https://&lt;store name&gt;.myshopify.com/*. For a trial store, the *&lt;store name&gt;* is a randomly generated unique alphanumeric value. You will use this URL to connect the store to your Acumatica ERP instance.


You have specified the minimum set of store settings that you will need for the basic configuration of the Shopify integration with Acumatica ERP. Now you should proceed to establish the connection between the Shopify store and your Acumatica ERP instance, as described in [Initial Configuration: To Establish the Store Connection with a Custom App](Commerce_SP_To_Establish_Store_Connection_Custom_App.md).

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

