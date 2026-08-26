# Customer Synchronization: General Information {#_5ba7f167-e2eb-4403-ad73-b6a93bf3dca5 .concept}

In Acumatica ERP Retail Edition, you can synchronize customer records between Acumatica ERP and the Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the synchronization of individual and business customers and customer locations so that they can be both exported to the Shopify store and imported from the Shopify store to Acumatica ERP
-   Synchronize individual customers that have multiple locations
-   Synchronize business customers

## Applicable Scenarios { .section}

You configure the import of customers if you want to synchronize changes to customer information made in the Shopify store to Acumatica ERP.

You configure the export of customers from Acumatica ERP to the Shopify store if you maintain records of customers in Acumatica ERP and want the details of these customers to be available in the Shopify store so that the up-to-date customer information, such as customer billing and address details, is available when registered customers place orders online.

The synchronization of customers is a prerequisite for the synchronization of orders. When an order placed in the Shopify store is imported to Acumatica ERP, information about the customer that placed the order is imported to Acumatica ERP during the synchronization of the order. Similarly, when an order placed in Acumatica ERP is exported to the Shopify store, information about the customer that placed the order is exported to the Shopify store during the synchronization of the order.

## The Customer and Company Entities { .section}

In Acumatica ERP, individual customers are synchronized during the synchronization of the *Customer* entity, and business customers are synchronized during the synchronization of the *Company* entity. In the context of customer synchronization with Shopify, a *business customer* refers to a customer for which the **Customer Category** box is set to *Organization* on the [Customers](AR_30_30_00.md) \(AR303000\) form or to a company in the Shopify store.

**Important:** The synchronization of business customers is available if the *Shopify Business-to-Business Entities* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you activate either of these entities on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you must specify the default settings that will be applied to imported customers and customer locations.

For information about the default settings of customers and customer locations, see [Customer Synchronization: Default Settings](Commerce_SP_Syncing_Companies_Customer_Settings.md).

For details about the synchronization of individual customers, see [Customer Synchronization: Individual Customers](Commerce_SP_Syncing_Customers_Customers.md). For information about the synchronization of business customers, see [Customer Synchronization: Business Customers](Commerce_SP_Syncing_Customers_Companies.md).

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_SP_Syncing_Customers_Mapref.md)

