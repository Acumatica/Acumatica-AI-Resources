# Initial Configuration: Setting Up a BigCommerce Store {#_81b7193b-5307-48c5-aefa-bb5caa6f0006 .concept}

Before you start configuring the integration between Acumatica ERP and BigCommerce, you should set up the BigCommerce store, prepare entities in Acumatica ERP, and obtain store connection information. In this topic, you will learn about the minimum settings of the BigCommerce store that you need to configure.

**Attention:** This topic covers only the essential settings that you need to configure in BigCommerce for integration with the Acumatica ERP instance. For details on the configuration of other settings, refer to the BigCommerce documentation.

## Setting Up a BigCommerce Store { .section}

You use the control panel in BigCommerce to initially set up and configure your store, as well as to perform ongoing management of products, customers, and orders. By using the control panel, you set up the BigCommerce store by performing the following general steps:

1.  Signing up for a BigCommerce account
2.  Completing the store profile
3.  Setting up the currencies in which goods will be available for purchase and the payment methods that you will accept
4.  Setting up taxes
5.  Configuring the shipping zones and shipping rules

## Signing Up for a BigCommerce Trial Account { .section}

Before you implement the integration with Acumatica ERP on the production BigCommerce store, we recommend that you test your desired configuration in a test environment. To do that, you need a free BigCommerce trial account, which you can sign up for on the [BigCommerce Essentials Trial](https://www.bigcommerce.com/essentials/free-trial/) page. The registration requires that you provide a valid email address, the name of your store \(which you can change at any time\), your name and contact details, and your admin password.

For information about the detailed steps that you need to complete to create a trial account, see the [BigCommerce documentation](https://support.bigcommerce.com/s/article/Starting-a-Bigcommerce-Trial).

## Completing the Store Profile { .section}

After you have created a new BigCommerce store, you need to set it up so that you can accept and process orders. The first thing you should do is complete the store's profile on the **Store profile** page. To access the page, you click **Settings** in the left pane, and on the **Settings** page, in the **Setup** section, you click **Store profile**. Here you can specify such settings as the store name, store address, store country, contact email address, and contact phone. It is important to specify the store country early in the setup process because this setting determines which payment gateways or shipping providers are available for use in your store.

For more information about setting up the store profile, see [Store Profile Settings](https://support.bigcommerce.com/s/article/Store-Profile-Settings) in the BigCommerce documentation.

## Setting Up Currencies and Payment Methods { .section}

You set up the currencies that your store's customers will see and can be charged in on the **Currencies** page. To access the page, you click **Settings** in the left pane, and on the **Settings** page, in the **Setup** section, you click **Currencies**.

You can configure multiple currencies to be used as display currencies and transaction currencies in your store. The default currency is determined based on the store's general settings; however, it can be changed. For each currency that you want to use as a transactional currency in your store, at least one acceptable payment method must be configured.

You should check and, if necessary, update the display settings of the default currency, and then configure at least one payment method for this currency on the **Payment Methods** page. To access the page, you click **Settings** in the left pane, and on the **Settings** page, in the **Setup** section, you click **Payments**.

For more information about working with currencies in BigCommerce, see [Managing Currencies](https://support.bigcommerce.com/s/article/Managing-Currencies) in the BigCommerce documentation. For details on payment methods, see [Online Payment Methods](https://support.bigcommerce.com/s/article/Online-Payment-Methods) and [Offline Payment Methods](https://support.bigcommerce.com/s/article/Offline-Payment-Methods).

## Configuring Taxes { .section}

You set up tax zones, tax calculation rules, the way of displaying taxes in the storefront, and the way of specifying prices for products \(that is, whether prices are entered inclusive or exclusive of tax\) on the **Tax** page. To access the page, you click **Settings** in the left pane, and on the **Settings** page, in the **Setup** section, you click **Tax**.

For more information about configuring taxes, see [Tax Overview](https://support.bigcommerce.com/s/article/Tax-Overview) in the BigCommerce documentation.

## Configuring Shipping { .section}

BigCommerce provides a wide range of shipping options that you can flexibly configure to your needs. You specify the place where you will ship your products from, as well as the shipping zones and shipping rules on the **Shipping Manager** page. To access the page, you click **Settings** in the left pane, and on the **Settings** page, in the **Setup** section, you click **Shipping**.

For information about configuring shipping, see [Shipping Setup](https://support.bigcommerce.com/s/article/Shipping-Setup) in the BigCommerce documentation.

## Deleting Existing Orders, Product Categories, Products, Customers, and Customer Groups { .section}

If you are planning to use an existing store for testing the BigCommerce integration with Acumatica ERP, you might want to delete customers, customer groups, products, product categories, and orders that already exist in the store. Deleting these entities from the store will reduce the amount of data that needs to be synchronized; thus, you can more easily see which data comes from which system when you configure synchronization between Acumatica ERP and the BigCommerce store.

You delete customers, products, product categories, and orders as follows:

-   To delete customers, you click **Customers** &gt; **All customers** in the left pane to open the **Customers** page. On this page, you select the unlabeled check box for all customers in the list and click the Delete button on the table toolbar; then in the confirmation dialog box that opens, you click **OK**.
-   To delete customer groups, you click **Customers** &gt; **Customer Groups** in the left pane to open the **Customer Groups** page. On this page, you select the unlabeled check box for all customer groups in the list and click the Delete button on the table toolbar; then in the confirmation dialog box that opens, you click **OK**.
-   To delete product categories, you click **Products** &gt; **Categories** in the left pane to open the **Product categories** page. On this page, you select the unlabeled check box for all product categories in the list and then click the **Delete** button on the table toolbar. In the **Delete categories** dialog box, which opens, you click **Delete categories**.
-   To delete products, you click **Products** &gt; **All products** in the left pane to open the **Products** page. On this page, you select the unlabeled check box for all products in the list and then click the **Delete** button on the table toolbar. In the **Delete products** dialog box, which opens, you click **Delete**.
-   To delete orders, you click **Orders** &gt; **All orders** in the left pane to open the **Orders** page. On this page, you select the unlabeled check box for all orders in the list and click the Delete button on the table toolbar; then in the confirmation dialog box that opens, you click **OK**.

## Turning Off Notifications About Changes to Customer Accounts { .section}

If you are planning to export customer records from Acumatica ERP to the BigCommerce store, we recommend that you turn off sending email notifications about changes to customer accounts in the BigCommerce store. If such notifications are turned on and customers are configured to be exported or to be synchronized in both directions \(that is, to be exported and imported\), a customer will be sent an email every time the ecommerce connector synchronizes the customer data, which may look to the customer as if their store account has been hacked.

You manage sending notifications to customers on the **Transactional emails** page, which you open by clicking **Marketing** &gt; **Transactional Emails** in the left pane of the control panel. To disable notifications about changes in the customer account, you click the button in the rightmost column in the row of the *Account Settings Edited* template, and in the menu that opens, you click **Disable**.

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

