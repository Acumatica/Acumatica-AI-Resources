# Initial Configuration: Setting Up a Shopify Store {#_30590c46-7aa8-455b-9848-b2015d682ca7 .concept}

Before you start configuring the integration between Acumatica ERP and Shopify, you should set up the Shopify store. In this topic, you will learn about the minimum settings of the Shopify store that you need to configure.

**Attention:** This topic covers only the essential settings that you need to configure in Shopify for integration with the Acumatica ERP instance. For details on the configuration of other settings, refer to the Shopify documentation.

## Setting Up a Shopify Store { .section}

You use the admin area in Shopify to initially set up and configure your store, as well as to perform ongoing management of products, customers, and orders. By using the admin area, you set up the store by performing the following general steps:

1.  Signing up for a Shopify account
2.  Setting up a Shopify store
3.  Setting the store time zone
4.  Setting up the currencies in which goods will be available for purchase and the payment methods that you will accept
5.  Setting up taxes
6.  Configuring the shipping zones and shipping rules

## Signing Up for a Shopify Trial Account { .section}

Before you implement the integration with Acumatica ERP on the production Shopify store, we recommend that you test your desired configuration in a test environment.

If you have a Shopify Partner account, you can create a new development store. Otherwise, you need a Shopify trial account, which you can sign up for on [https://www.shopify.com/](https://www.shopify.com/). The registration requires that you provide a valid email address, the name of your store, your name and contact details, and your admin password.

**Attention:** In trial accounts, you can create orders other than draft orders only if you have selected a subscription plan, which requires entering bank card details.

For information about the detailed steps that you need to complete to create a trial account, see the [Free trial page in the Shopify Help Center](https://help.shopify.com/en/manual/intro-to-shopify/pricing-plans/free-trial).

## Setting Up a Shopify Store { .section}

The following sections of this topic list the groups of settings that need to be specified in a Shopify store for configuring the initial integration of Acumatica ERP and Shopify. For general information about initial configuration of a Shopify store, refer to the [Initial setup articles in the Shopify Help Center](https://help.shopify.com/en/manual/intro-to-shopify/initial-setup).

## Setting the Store Time Zone { .section}

The time zone of your store is used in time conversion so that if different time zones have been set up in the store and in the Acumatica ERP instance, orders, payments, and other data is assigned the correct time in the target system after the synchronization. To set up the store time zone, in the **Standards and formats** section of the **Store details** settings page of the Shopify admin area, you select the needed time zone in the **Time zone** box.

## Setting Up the Store Currency and Payment Methods { .section}

You set up the store currency that your customers will be charged in the **Store currency** section of the **Store details** settings page of the Shopify admin area. The currency you select in this section is locked after the first sale and cannot be changed.

In Shopify, you can configure additional currencies in which prices will be displayed for customers. However, customers will be able to check out only by using the store currency selected on the **Store details** settings page.

Once the store currency has been set up, you can configure payment methods that will be used to accept payments. You configure payment providers and payment methods on the **Payments** settings page. For information about configuring payment methods, see the [Getting paid article in the Shopify Help Center](https://help.shopify.com/en/manual/payments/getting-paid).

## Configuring Taxes { .section}

You set up tax rates and tax calculation rules for your store on the **Taxes** settings page of your Shopify admin area. For information about configuring taxes, refer to the [Taxes articles in the Shopify Help Center](https://help.shopify.com/en/manual/taxes).

## Configuring Shipping { .section}

Shopify provides a wide range of shipping options that you can flexibly configure to your needs. On the **Shipping and delivery** settings page of the Shopify admin area, you specify the shipping zones to which you want to offer delivery as well as shipping rates.

For information about configuring shipping, see [Shipping and delivery articles in the Shopify Help Center](https://help.shopify.com/en/manual/shipping).

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

