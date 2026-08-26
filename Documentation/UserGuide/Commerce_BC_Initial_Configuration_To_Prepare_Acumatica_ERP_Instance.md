# Initial Configuration: To Prepare the Acumatica ERP Instance {#_13cd8fe9-80ac-4fed-ad2e-81b24293c27a .task}

In this activity, you will go through the settings that need to be specified in the Acumatica ERP instance before you set up the connection to the BigCommerce store.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

The SweetLife company is planning on opening an online store built on the BigCommerce platform. The warehouse from which the goods will be shipped is based in New York. The company maintains the prices of its products in United States dollars and delivers products across New York by using the company's own vehicles. As an implementation consultant helping SweetLife to implement the integration between BigCommerce and Acumatica ERP, you want to make sure that the features required for the ecommerce functionality are enabled and the necessary entities are created and configured in the Acumatica ERP instance.

## Process Overview { .section}

The Acumatica ERP instance with the *U100* dataset already contains most of the settings and data that you will need to specify when you start configuring the store connection. In this activity, you will review the following settings or entities on the following forms of the Acumatica ERP instance:

-   [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: The features that have been enabled to support ecommerce functionality
-   [Customer Classes](AR_20_10_00.md) \(AR201000\) form: The customer class for the customers imported from the BigCommerce store
-   [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form: The numbering sequences to be used for generating the identifiers for new customers and customer locations imported from the BigCommerce store
-   [Customers](AR_30_30_00.md) \(AR303000\) form: The customer account to be used for guest orders \(orders placed by unregistered users\) in the online store
-   [Item Sales Categories](IN_20_40_60.md) \(IN204060\) form: The item sales category to be used as the default sales category; items that have no item sales category in Acumatica ERP will be displayed under this category in the online store
-   [Order Types](SO_20_10_00.md) \(SO201000\) form: The order type to be used for orders imported from the BigCommerce store, and the order type to be used for handling returns of online purchases
-   [Ship via Codes](CS_20_75_00.md) \(CS207500\): The carrier to be used for handling shipping
-   [Cash Accounts](CA_20_20_00.md) \(CA202000\): The cash account to be used for ecommerce orders
-   [Payment Methods](CA_20_40_00.md) \(CA204000\): The payment method to which payment methods from the BigCommerce store will be mapped

## System Preparation { .section}

Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:

-   **Username**: *gibbs*
-   **Password**: *123*

## Step 1: Enabling the Needed Features { .section}

To make sure the needed features for ecommerce functionality have been enabled, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  Make sure that the following features are enabled:

    -   *Business Account Locations* \(under the *Standard Financials* group of features\)
    -   *Inventory* \(under the *Inventory and Order Management* group of features\)
    -   *Retail Commerce* \(under the *Third-Party Integrations* group of features\)
    -   *BigCommerce Connector*
    **Note:** Depending on the setup of your BigCommerce store and the inventory and order management processes in your company, you might need to enable additional features. For more information, see [Initial Configuration: Implementation Checklist](Commerce_BC_Initial_Configuration_Implem_Checklist.md).


## Step 2: Reviewing the Customer Class for Customers Imported from BigCommerce { .section}

During the process of establishing and configuring the connection between Acumatica ERP and the BigCommerce store, you will need to specify the customer class that will be used for creating customer records for customers imported from the BigCommerce store. You can use an existing customer class or create a new one with a different set of default settings to be used specifically for online customers. In the instance with the *U100* data preloaded, a dedicated customer class for online customers has already been created.

To review the customer class that will be used for customers imported from the BigCommerce store, do the following:

1.  Open the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.
2.  In the **Class ID** box, select *ECCUSTOMER*.

    In a subsequent activity, you will specify this customer class in the store settings so that the system will use the settings of this customer class to populate customer records for new customers that will be imported from the BigCommerce store to Acumatica ERP.


## Step 3: Reviewing the Numbering Sequences for Customers and Customer Locations { .section}

To review the numbering sequences that Acumatica ERP will use to assign identifiers to customers and customer locations \(addresses\) imported from the BigCommerce store, do the following:

1.  Open the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.
2.  In the **Numbering ID** box, select *ECCUSTOMER*.

    Review the settings of the numbering sequence that will be used to automatically generate the identifiers of the customers imported from the BigCommerce store to Acumatica ERP. With these settings, these customers will be assigned identifiers that start with the letter *C* followed by a numerical portion.

3.  In the **Numbering ID** box, select *ECLOCATION*.

    Review the settings of the numbering sequence that will be used to automatically generate the identifiers of the customer locations imported from the BigCommerce store to Acumatica ERP. With these settings, these customer locations will be assigned identifiers that start with the letter *L* followed by a numerical portion.


In a subsequent activity, you will specify these numbering sequences in the store settings so that the system will use them to create identifiers for customers and addresses imported from the BigCommerce store to Acumatica ERP.

## Step 4: Reviewing the Customer Record to Be Used for Guest Orders { .section}

SweetLife's online store is going to accept guest orders \(that is, orders from customers who are not registered in the store\). During the configuration of the store connection, you will need to select the customer record in Acumatica ERP that will appear in orders that are placed as guest orders in the BigCommerce store. In the instance with the *U100* data preloaded, the generic online customer account has already been created.

To review the customer account that will be used for guest orders, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the Summary area, in the **Customer ID** box, select *ECOMGUEST*.

    In a subsequent activity, you will specify this customer in the store settings to make it appear on all orders imported from the BigCommerce store that were placed in the store by non-registered customers.


## Step 5: Reviewing the Item Sales Categories { .section}

To review the inventory-related settings that you will need to specify during the configuration of the store connection, do the following:

1.  Open the [Item Sales Categories](IN_20_40_60.md) \(IN204060\) form.
2.  In the **Categories** tree, click *Other*.

    Notice that no stock or non-stock items are currently assigned to this category. You will select this category in a subsequent activity to make stock and non-stock items that do not have their own categories appear under the *Other* category after they are imported to the BigCommerce store.


## Step 6: Reviewing the Order Settings { .section}

In order to review the order type created for the sales orders coming from the BigCommerce store, do the following:

1.  Open the [Order Types](SO_20_10_00.md) \(SO201000\) form.
2.  In the **Order Type** box, select *EO - eCommerce Order*.

    In the **Order Template** box of the Summary area, notice that this order type is based on the *SO* order template. In a subsequent activity, you will configure the system to assign this order type to all orders imported from the BigCommerce store.


## Step 7: Reviewing the Shipping Settings { .section}

To review the Acumatica ERP shipping settings that you will need to specify during the configuration of the store connection, do the following:

1.  Open the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
2.  In the **Ship Via** box, select *SWEETSHIP*.

    Because SweetLife is going to deliver the products sold in the online store by using only its own fleet of vehicles, you will specify this shipping option when you configure the store connection.


## Step 8: Reviewing the Cash Account and Payment Method Settings { .section}

To review the payment method in Acumatica ERP that will be mapped to the BigCommerce payment methods configured in the online store, do the following:

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  In the **Payment Method ID** box, select *ONLINE*.

    For simplicity, you will later map this payment method to all payment methods configured in the BigCommerce store. On the **Allowed Cash Accounts** tab, notice that the table contains only one cash account, *10250ST - Company Merchant Account*.

3.  In the **Cash Account** column, click the link with the cash account identifier.
4.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, which opens in a pop-up window, review the cash account settings.

    In the Summary area, notice that the *10250ST* cash account has been configured for the *RETAIL* branch and the *USD* currency.


In the next activity, [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md), you will learn how to capture the store's API information required for establishing the connection between your instance of Acumatica ERP and the BigCommerce store.

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

