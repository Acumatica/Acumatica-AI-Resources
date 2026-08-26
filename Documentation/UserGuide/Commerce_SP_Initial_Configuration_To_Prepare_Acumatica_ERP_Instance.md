# Initial Configuration: To Prepare the Acumatica ERP Instance {#_a13d0a8a-c5cc-4914-af3b-937ec4ce1a82 .task}

In this activity, you will go through the settings that need to be specified in the Acumatica ERP instance before you set up the connection to the Shopify store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

SweetLife Fruits &amp; Jams is planning on opening an online store built on the Shopify platform. The warehouse from which the goods will be shipped is based in New York. The company maintains the prices of its products in United States dollars and delivers products across New York by using the company's own vehicles. As an implementation consultant helping SweetLife to implement the integration between Shopify and Acumatica ERP, you want to make sure that the features required for the ecommerce functionality are enabled and the necessary entities are created and configured in the Acumatica ERP instance.

## Process Overview { .section}

The Acumatica ERP instance with the *U100* dataset already contains most of the settings and data that you will need to specify when you start configuring the store connection. In this activity, you will review the following settings or entities on the following forms of the Acumatica ERP instance:

-   [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: The features that have been enabled to support ecommerce functionality
-   [Customer Classes](AR_20_10_00.md) \(AR201000\) form: The customer class for the customers imported from the Shopify store
-   [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form: The numbering sequences to be used for generating the identifiers for new customers and customer locations imported from the Shopify store
-   [Customers](AR_30_30_00.md) \(AR303000\) form: The customer account to be used for guest orders \(orders placed by unregistered users\) in the online store
-   [Order Types](SO_20_10_00.md) \(SO201000\) form: The order type to be used for orders imported from the Shopify store, and the order type to be used for handling returns of online purchases
-   [Ship via Codes](CS_20_75_00.md) \(CS207500\): The carrier to be used for handling shipping
-   [Cash Accounts](CA_20_20_00.md) \(CA202000\): The cash account to be used for ecommerce orders
-   [Payment Methods](CA_20_40_00.md) \(CA204000\): The payment method to which payment methods from the Shopify store will be mapped

## System Preparation { .section}

Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:

-   **Username**: *gibbs*
-   **Password**: *123*

## Step 1: Enabling the Needed Features { .section}

To make sure the needed features for ecommerce functionality have been enabled, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  Make sure that the following features are enabled:

    -   *Inventory*
    -   *Business Account Locations*
    -   *Retail Commerce*
    -   *Shopify Connector*
    If any of these features is not enabled, click **Modify** on the form toolbar, select the check box that activates the feature, and click **Enable** on the form toolbar.

    **Note:** Depending on the setup of your Shopify store and the inventory and order management processes in your company, you might need to enable additional features. For more information, see [Initial Configuration: Implementation Checklist](Commerce_SP_Initial_Configuration_Implem_Checklist.md).


## Step 2: Reviewing the Customer Class for Customers Imported from Shopify { .section}

During the process of establishing and configuring the connection between Acumatica ERP and the Shopify store, you will need to specify the customer class that will be assigned to customer records imported from the Shopify store and that will provide the default settings for the imported customers. You can use an existing customer class or create a new one with a different set of default settings to be used specifically for online customers. In the instance with the *U100* data preloaded, a dedicated customer class for online customers has already been created.

To review the customer class that will be used for customers imported from the Shopify store, do the following:

1.  Open the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.
2.  In the **Class ID** box, select *ECCUSTOMER*.

    In a subsequent activity, you will specify this customer class in the store settings so that the system will use the settings of this customer class to populate customer records for new customers that will be imported from the Shopify store to Acumatica ERP.


## Step 3: Reviewing the Numbering Sequences for Customers and Customer Locations { .section}

To review the numbering sequences that Acumatica ERP will use to assign identifiers to customers and customer locations \(addresses\) imported from the Shopify store, do the following:

1.  Open the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.
2.  In the **Numbering ID** box, select *ECCUSTOMER*.

    Review the settings of the numbering sequence that will be used to automatically generate the identifiers of the customers imported from the Shopify store to Acumatica ERP. With these settings, these customers will be assigned identifiers that start with the letter *C* followed by a numerical portion.

3.  In the **Numbering ID** box, select *ECLOCATION*.

    Review the settings of the numbering sequence that will be used to automatically generate the identifiers of the customer locations imported from the Shopify store to Acumatica ERP. With these settings, these customer locations will be assigned identifiers that start with the letter *L* followed by a numerical portion.


In a subsequent activity, you will specify these numbering sequences in the store settings so that the system will use them to create identifiers for customers and customer locations imported from the Shopify store to Acumatica ERP.

## Step 4: Reviewing the Order Settings { .section}

To review the order type created for the orders coming from the Shopify store, do the following:

1.  Open the [Order Types](SO_20_10_00.md) \(SO201000\) form.
2.  In the **Order Type** box, select *EO - eCommerce Order*.

    In the **Order Template** box notice that this order type is based on the *SO* order template. In a subsequent activity, you will configure the system to assign this order type to all orders imported from the Shopify store.


## Step 5: Reviewing the Shipping Settings { .section}

To review the Acumatica ERP shipping settings that you will need to specify during the configuration of the store connection, do the following:

1.  On the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
2.  In the **Ship Via** box, select *SWEETSHIP*.

    Because SweetLife is going to deliver the products by using only its own fleet of vehicles, you will specify this shipping option when you configure the store connection.


## Step 6: Reviewing the Cash Account and Payment Method Settings { .section}

To review the payment method in Acumatica ERP that will be mapped to the Shopify payment methods configured in the online store, do the following:

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  In the **ERP Payment Method** box, select *ONLINE*.

    For simplicity, this payment method will be mapped to all payment methods configured in the Shopify store. On the **Allowed Cash Accounts** tab, notice that the table contains only one cash account, *10250ST - Company Merchant Account*.

3.  In the **Cash Account** column, click the link with the cash account name.
4.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, which opens in a pop-up window, review the cash account settings.

    In the Summary area, notice that the *10250ST* cash account has been configured for the *USD* currency and the *RETAIL* branch.

5.  Close the dialog box.

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

