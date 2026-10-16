# Initial Configuration: Implementation Checklist

You can use the information in this topic to quickly check what needs to be configured in the BigCommerce store and in the Acumatica ERP instance, and what information must be obtained before you can start implementing the integration with the BigCommerce store.

## API Credentials to Capture in the BigCommerce Store

The table below lists the API information that is necessary for configuring a store connection and should be captured beforehand. For more information, see [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md).

<table id="_144e0ba0-ef8d-4292-a967-db75e3f2841e"><thead><tr><th>

Required Information

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Store Admin URL**

</td><td>

The permanent URL of the ecommerce store followed by */manage*.

 This path is used for navigating to BigCommerce pages from the [Sync History](BC_30_10_00.md) \(BC301000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

</td></tr><tr><td colspan="2">

**REST Settings**

</td></tr><tr><td>

**API Path**

</td><td>

The URL of the BigCommerce API.

</td></tr><tr><td>

**Client ID**

</td><td>

An ID that is provided by BigCommerce when a new store is set up on the BigCommerce platform.

</td></tr><tr><td>

**Access Token**

</td><td>

An access token provided by BigCommerce when a new store is set up on the BigCommerce platform.

 For synchronization to work properly, the access token should have the necessary access permissions in BigCommerce. We recommend that you grant the maximum access permissions, as described in [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md)

</td></tr></tbody>
</table>

## Settings in the BigCommerce Store

In the table below, you will find the information about the settings that you should specify in the BigCommerce store before you start setting up the integration with Acumatica ERP. For more information, see [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).

<table id="_b6b54c78-0e9b-421b-9932-d639f697d104"><thead><tr><th>

Required Settings

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Store profile**

</td><td>

The basic information about the online store, including the store name, address, country, and contact details.

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

The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

<table id="_fdb2462e-b863-4a19-916e-19f09c97eeb3"><thead><tr><th>

Form

</th><th>

Things to Check

</th><th>

Notes

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following required features are enabled:

 -   *Business Account Locations*
-   *Retail Commerce*
-   *BigCommerce Connector*
-   *Custom Order Types*
-   *Inventory*
-   *Scheduled Processing*
-   *Volume Pricing*

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

The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the BigCommerce store.

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

[Item Sales Categories](IN_20_40_60.md) \(IN204060\)

</td><td>

The sales categories under which the stock items and non-stock items are placed have been configured and assigned to individual items.

 A sales category under which non-stock and stock items will be placed if they are not assigned any category in Acumatica ERP has been configured.

</td><td>

See [Managing the Inventory Catalog in the Self-Service Portal: General Information](config_SSP_Admin_Managing_Inventory_Catalog_GeneralInfo.md).

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

[Cash Accounts](CA_20_20_00.md)

</td><td>

The cash accounts associated with payment methods used in the ecommerce transactions have been created.

</td><td>

See [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).

</td></tr><tr><td>

[Payment Methods](CA_20_40_00.md)

</td><td>

The payment methods used in the ecommerce transactions have been configured.

</td><td>

See [Cash Management: Payment Methods](../ImplementationGuide/config_Basic_Company_Payment_Methods.md).

</td></tr><tr><td>

[Processing Centers](CA_20_50_00.md)

</td><td>

The processing center to be used for processing credit card payments has been configured.

</td><td>

See [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

</td></tr></tbody>
</table>

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

