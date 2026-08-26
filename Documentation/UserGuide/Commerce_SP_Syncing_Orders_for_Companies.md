# Order Synchronization: Orders for Companies {#_23e5d6fb-bcd6-4ac8-b2ca-04cb87070b8d .concept}

You can export orders that have been on behalf of a business customer \(company\) between Acumatica ERP and a Shopify store.

## Import of an Order Placed on Behalf of a Company { .section}

Orders that a customer has placed in a Shopify store on behalf of a company are synchronized during the synchronization of the *Sales Order* entity. During the import of each order to Acumatica ERP, the system does the following:

-   If the company for which the order has been placed has not yet been imported, imports it first along with its locations and contacts, as described in [Customer Synchronization: Business Customers](Commerce_SP_Syncing_Customers_Companies.md)
-   Creates a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and inserts the following in the Summary area:
    -   In the **Customer** box: The identifier of the company on behalf of which the order was placed
    -   In the **Contact** box: The identifier of the customer that placed the order
    -   In the **Location** box: The identifier of the location that was selected during the order placement
    -   In the **Customer Order Nbr.** box: The identifier of the customer's purchase order if it has been specified in the **PO number** box on the order page in the Shopify store
-   On the **Addresses** tab of the [Sales Orders](SO_30_10_00.md) form, inserts the following:
    1.  The shipping address, based on the settings of the company's location that was selected during order placement
    2.  The shipping contact, based on the settings of the customer that placed the order
    3.  The billing details, based on the settings of the company's location that was selected during order placement

## Export of an Order Placed on Behalf of a Company { .section}

In Acumatica ERP, a business customer is a customer for which **Customer Category** is set to *Organization* on the [Customers](AR_30_30_00.md) \(AR303000\) form. Orders that have been created in Acumatica ERP for a business customer are exported to a Shopify store during the synchronization of the *Sales Order* entity. During the export of such an order, the system does the following in the Shopify store:

-   If the business customer has not been synchronized yet, exports the business customer, as described in [Customer Synchronization: Business Customers](Commerce_SP_Syncing_Customers_Companies.md)
-   Creates an order as follows:
    -   Specifies the business customer \(which is exported to the Shopify store as a company\) as the purchasing entity
    -   Specifies the contact that was selected in the order in Acumatica ERP as the customer
    -   Inserts the shipping and billing addresses from the location that was selected in the order in Acumatica ERP
    -   Inserts the identifier of the customer's purchase order in the **PO number** box if it has been specified in the **Customer Order Nbr.** box in the Summary area of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

