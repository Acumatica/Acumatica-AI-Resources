# Synchronizing Customers: General Information

In Acumatica ERP Retail Edition, you can synchronize customer records between Acumatica ERP and the BigCommerce store.

## Learning Objectives

In this chapter, you will learn how to do the following:

-   Set up the synchronization of individual and business customers and customer locations \(addresses\) so that they can be both exported to the BigCommerce store and imported from the BigCommerce store to Acumatica ERP
-   Synchronize individual customers that have multiple locations
-   Synchronize business customers

## Applicable Scenarios

You configure the import of customers if you want to synchronize changes to customer information made in the BigCommerce store to Acumatica ERP. The synchronization of customers is a prerequisite for the synchronization of orders. So if you plan to import online orders placed in the BigCommerce store by new, existing, or guest customers and then further process these orders in Acumatica ERP, you need to synchronize customers first.

You configure the export of customers from Acumatica ERP to the BigCommerce store if you maintain records of customers in Acumatica ERP and want the details of these customers to be available in the BigCommerce store so that the up-to-date customer information, such as customer billing and address details, is available when registered customers place orders online.

## The Customer and Company Entities

In Acumatica ERP, individual customers are synchronized during the synchronization of the *Customer* entity, and business customers are synchronized during the synchronization of the *Company* entity. In the context of customer synchronization with BigCommerce, a *business customer* refers to a customer for which the **Customer Category** box is set to *Organization* on the [Customers](AR_30_30_00.md) \(AR303000\) form or to a company in the BigCommerce store.

**Important:** The synchronization of business customers is available if the *BigCommerce B2B Integration* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you activate either of these entities on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you must specify the default settings that will be applied to imported customers and customer locations.

For information about the default settings of customers and customer locations, see [Synchronizing Customers: Default Settings](Commerce_BC_Syncing_Customers_Settings.md).

For details about the synchronization of individual customers, see [Synchronizing Customers: Individual Customers](Commerce_BC_Syncing_Customers_Individual.md). For information about the synchronization of business customers, see [Synchronizing Customers: Business Customers](Commerce_BC_Syncing_Customers_Companies.md).

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

