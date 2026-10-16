# Initial Configuration: Implementation Checklist

You can use the information in this topic to quickly check what needs to be configured in the Shopify store and in the Acumatica ERP instance before you can start implementing the integration with the Shopify store.

## API Credentials to Capture in the Shopify Store

If you connect a Shopify store to Acumatica ERP by using a custom app, you need to capture the API credentials of the custom app in the Shopify store, which are listed in the following table. You will need to specify these credentials on the **General** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form when you establish the store connection. For more information, see [Initial Configuration: To Establish the Store Connection with a Custom App](Commerce_SP_To_Establish_Store_Connection_Custom_App.md).

<table id="_2859b459-c03e-4740-b5b2-5292ab58ad2d"><thead><tr><th>

Required Information

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Store Admin URL**

</td><td>

The permanent URL of the store followed by */admin*.

 This path is used for navigating to the Shopify store's pages from the [Sync History](BC_30_10_00.md) \(BC301000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

</td></tr><tr><td>

**API Access Token**

</td><td>

The API access token that was generated for the custom app added to the Shopify store to integrate it with Acumatica ERP.

</td></tr><tr><td>

**API Secret Key**

</td><td>

The API secret key that was generated for the custom app created in the Shopify store to integrate it with Acumatica ERP.

</td></tr></tbody>
</table>

When selecting access scopes for the custom app, follow the recommendations in the table below for the entities you plan to activate and synchronize for your store. The access scopes marked as miscellaneous are required regardless of the entities selected. The table also lists the Shopify plans required to use the corresponding functionality in the store.

<table id="_89a75e3d-d3d2-4d38-8d62-f6c3f48ad1cf"><thead><tr><th>

Entity

</th><th>

Access Scopes

</th><th>

Store Plan

</th></tr></thead><tbody><tr><td>

*Customer*

</td><td>

`read_customers`

 `write_customers`

 `write_customer_merge`

 `read_customer_data_erasure`

 `write_customer_data_erasure`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Company*

</td><td>

`read_companies`

 `write_companies`

 `read_customers`

 `write_customers`

 `write_customer_merge`

 `read_customer_data_erasure`

 `write_customer_data_erasure`

</td><td>

Shopify Plus

</td></tr><tr><td>

*Customer Location*

</td><td>

`read_customers`

 `write_customers`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Stock Item*

 *Non-Stock Item*

 *Template Item*

</td><td>

`read_inventory`

 `read_publications`

 `read_products`

 `write_products`

 `read_publications`

 `write_publications`

 `read_product_listings`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Product Image*

</td><td>

`write_products`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Product Availability*

</td><td>

`read_inventory`

 `write_inventory`

 `read_products`

 `write_products`

 `read_locations`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Sales Order*

 *Sales Quote*

</td><td>

`read_orders`

 `write_orders`

 `read_all_orders`

 `read_order_edits`

 `write_order_edits`

 `read_draft_orders`

 `write_draft_orders`

 `read_order_submission_rules`

 `write_order_submission_rules`

 `read_price_rules`

 `write_price_rules`

 `read_discounts`

 `write_discounts`

 `read_discounts_allocator_functions`

 `write_discounts_allocator_functions`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Payment*

</td><td>

`read_shopify_payments_payouts`

 `read_shopify_payments_disputes`

 `read_shopify_payments_accounts`

 `read_shopify_payments_bank_accounts`

 `read_shopify_payments_provider_accounts_sensitive`

 `read_payment_customizations`

 `write_payment_customizations`

 `read_payment_terms`

 `write_payment_terms`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Shipment*

</td><td>

`read_orders`

 `read_locations`

 `write_assigned_fulfillment_orders`

 `write_merchant_managed_fulfillment_orders`

 `write_third_party_fulfillment_orders`

 `write_returns`

 `read_all_orders`

 `read_fulfillments`

 `write_fulfillments`

 `read_fulfillment_constraint_rules`

 `write_fulfillment_constraint_rules`

 `fulfill_and_ship_orders`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Refund*

</td><td>

`read_orders`

 `read_returns`

 `write_returns`

 `read_all_order`

</td><td>

Basic, Grow, Advanced

</td></tr><tr><td>

*Price List*

</td><td>

`write_products`

 `write_companies`

 `write_publications`

</td><td>

Shopify Plus

</td></tr><tr><td>

Miscellaneous

</td><td>

`read_content`

 `write_content`

 `read_themes`

 `write_themes`

 `read_metaobjects`

 `write_metaobjects`

 `read_metaobject_definitions`

 `write_metaobject_definitions`

 `read_locales`

 `write_locales`

 `read_translations`

 `write_translations`

 `read_analytics`

 `read_reports`

 `write_reports`

 `read_checkouts`

 `write_checkouts`

 `read_checkout_branding_settings`

 `write_checkout_branding_settings`

 `read_gift_cards`

 `write_gift_cards`

 `read_gift_card_transactions`

 `write_gift_card_transactions`

 `read_inventory_shipments`

 `write_inventory_shipments`

 `read_inventory_shipments_received_items`

 `write_inventory_shipments_received_items`

</td><td>

 

</td></tr></tbody>
</table>

## Settings in the Shopify Store

In the table below, you will find the information about the settings that you should specify in the Shopify store before you start setting up the integration with Acumatica ERP. For more information, see [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).

<table id="_b6b54c78-0e9b-421b-9932-d639f697d104"><thead><tr><th>

Required Settings

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Store profile**

</td><td>

The basic information about the online store, including the store name, business name and address.

 The store country is important because it determines which payment and shipping options are available for your store.

</td></tr><tr><td>

**Default currency**

</td><td>

The default currency in which prices are displayed to users and which transactions are made. The default currency should be the same as the base currency in the Acumatica ERP instance.

</td></tr><tr><td>

**Payment methods for the default currency**

</td><td>

The payment methods that can be used for transactions in the default currency.

</td></tr><tr><td>

**Shipping rules**

</td><td>

The shipping zones and rates that you want to use in your store.

</td></tr><tr><td>

**Taxes**

</td><td>

The tax settings that apply to your online store.

</td></tr></tbody>
</table>

## Settings in Acumatica ERP

The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

<table id="_fdb2462e-b863-4a19-916e-19f09c97eeb3"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th><th>

Notes

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following required features are enabled:

 -   *Business Account Locations*
-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*
-   *Inventory*
-   *Scheduled Processing*

 The *Inventory Subitems* feature is disabled.

**Important:** If this feature is enabled, the import of sales orders will not work.

 The following recommended features are enabled:

 -   *Drop Shipments*
-   *External Tax Calculation Integration*
-   *Customer Discounts*
-   *Multiсurrency Accounting*
-   *Multiple Warehouses*
-   *Multiple Warehouse Locations*
-   *Shipping Carrier Integrations*

</td><td>

See [Preparing an Instance: Acumatica ERP Features](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Features_Overview.md).

</td></tr><tr><td>

[Customer Classes](AR_20_10_00.md) \(AR201000\)

</td><td>

The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the Shopify store.

</td><td>

See [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created.

</td><td>

See [Customers: General Information](Customer_GeneralInfo.md).

</td></tr><tr><td>

[Numbering Sequences](CS_20_10_10.md) \(CS201010\)

</td><td>

-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import.
-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer location IDs on import.

</td><td>

See [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

A unique order type has been created for orders imported from the online store.

</td><td>

See [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).

</td></tr><tr><td>

[Taxes](TX_20_50_00.md) \(TX205000\)

</td><td>

The sales taxes applicable to the products that you sell have been configured.

</td><td>

See [Sales Taxes: General Information](../ImplementationGuide/SalesTaxes_GeneralInfo.md).

</td></tr><tr><td>

[Ship via Codes](CS_20_75_00.md) \(CS207500\)

</td><td>

The ship via codes for the delivery services that the company uses have been created.

</td><td>

See [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).

</td></tr><tr><td>

[Cash Accounts](CA_20_20_00.md) \(CA202000\)

</td><td>

The cash accounts associated with payment methods used in the ecommerce transactions have been created.

</td><td>

See [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).

</td></tr><tr><td>

[Payment Methods](CA_20_40_00.md) \(CA204000\)

</td><td>

The payment methods to be mapped to store payment methods used in the ecommerce transactions have been configured.

</td><td>

See [Cash Management: Payment Methods](../ImplementationGuide/config_Basic_Company_Payment_Methods.md).

</td></tr><tr><td>

[Processing Centers](CA_20_50_00.md) \(CA205000\)

</td><td>

The processing center to be used for processing credit card payments has been configured.

</td><td>

See [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

</td></tr></tbody>
</table>

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

