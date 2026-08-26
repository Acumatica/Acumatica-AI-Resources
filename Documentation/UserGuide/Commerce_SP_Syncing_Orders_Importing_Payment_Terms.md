# Order Synchronization: Import of Payment Terms {#_d2db3de9-17ef-4e10-bc73-c8fa12f92110 .concept}

Shopify provides the ability to select payment terms for orders that are due to be paid at a later date. In this topic, you will read about importing payment terms from Shopify to Acumatica ERP sales orders.

## Mapping of Payment Terms { .section}

When the connection to the Shopify store is established, the connector imports the list of Shopify payment terms into the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

To make the system assign the proper credit terms to an order imported from a Shopify store, you perform the following steps to set up the mapping of the Shopify payment terms:

1.  You define a set of credit terms on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form that corresponds to each set of Shopify payment terms.
2.  You select the configured credit terms in the **ERP Credit Terms** column in the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form to map them to the imported Shopify payment terms shown in the **Payment Terms Name** column.

    **Important:** Don't map the *Due on receipt* payment terms to any credit terms in Acumatica ERP. These terms can't be assigned to a company location in Shopify. Although this affects the synchronization only when you sync companies with your Shopify store, we don't recommend configuring this mapping.


## Import of Payment Terms { .section}

When sales orders with payment terms selected are imported from the Shopify store, the system searches for the credit terms to fill in the **Terms** box on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for the corresponding sales order as follows:

1.  Checks whether the payment terms are mapped to any credit terms in the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form; if so, it inserts the terms and stops the search.
2.  Inserts the credit terms that have been specified for the customer on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

    **Important:** If no payment terms are specified for an order in the Shopify store, the system uses the customer's credit terms for the sales order imported to Acumatica ERP.


**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

