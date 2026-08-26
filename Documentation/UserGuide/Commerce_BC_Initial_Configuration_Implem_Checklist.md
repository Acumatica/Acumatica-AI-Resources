# Initial Configuration: Implementation Checklist {#_3812ec13-2956-413a-b65b-2d069061423b .concept}

You can use the information in this topic to quickly check what needs to be configured in the BigCommerce store and in the Acumatica ERP instance, and what information must be obtained before you can start implementing the integration with the BigCommerce store.

## API Credentials to Capture in the BigCommerce Store { .section}

The table below lists the API information that is necessary for configuring a store connection and should be captured beforehand. For more information, see [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md).

|Required Information|Description|
|--------------------|-----------|
|**Store Admin URL**|The permanent URL of the ecommerce store followed by */manage*.

 This path is used for navigating to BigCommerce pages from the [Sync History](BC_30_10_00.md) \(BC301000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

|
|**REST Settings**|
|**API Path**|The URL of the BigCommerce API.|
|**Client ID**|An ID that is provided by BigCommerce when a new store is set up on the BigCommerce platform.|
|**Access Token**|An access token provided by BigCommerce when a new store is set up on the BigCommerce platform.

 For synchronization to work properly, the access token should have the necessary access permissions in BigCommerce. We recommend that you grant the maximum access permissions, as described in [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md)

|

## Settings in the BigCommerce Store { .section}

In the table below, you will find the information about the settings that you should specify in the BigCommerce store before you start setting up the integration with Acumatica ERP. For more information, see [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).

|Required Settings|Description|
|-----------------|-----------|
|**Store profile**|The basic information about the online store, including the store name, address, country, and contact details.

 The store country is important because it determines which payment and shipping options are available for your store.

|
|**Default currency**|The default currency in which prices are displayed to users and which transactions are made. The default currency should be the same as the base currency in the Acumatica ERP instance.|
|**Payment methods for the default currency**|The payment methods that can be used for transactions in the default currency.|
|**Shipping rules**|The shipping zones and rates that you want to use in your store.|
|**Taxes**|The tax settings that apply to your online store.|

## Settings in Acumatica ERP { .section}

The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following required features are enabled:

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

|See [Preparing an Instance: Acumatica ERP Features](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Features_Overview.md).|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the BigCommerce store.|See [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created.|See [Customers: General Information](Customer_GeneralInfo.md).|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import.
-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer location IDs on import.

|See [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).|
|[Item Sales Categories](IN_20_40_60.md) \(IN204060\)|The sales categories under which the stock items and non-stock items are placed have been configured and assigned to individual items.

 A sales category under which non-stock and stock items will be placed if they are not assigned any category in Acumatica ERP has been configured.

|See [Managing the Inventory Catalog in the Self-Service Portal: General Information](config_SSP_Admin_Managing_Inventory_Catalog_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|A unique order type has been created for orders imported from the online store.|See [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The sales taxes applicable to the products that you sell have been configured.|See [Sales Taxes: General Information](../ImplementationGuide/SalesTaxes_GeneralInfo.md).|
|[Ship via Codes](CS_20_75_00.md) \(CS207500\)|The ship via codes for the delivery services that the company uses have been created.|See [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).|
|[Cash Accounts](CA_20_20_00.md)|The cash accounts associated with payment methods used in the ecommerce transactions have been created.|See [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).|
|[Payment Methods](CA_20_40_00.md)|The payment methods used in the ecommerce transactions have been configured.|See [Cash Management: Payment Methods](../ImplementationGuide/config_Basic_Company_Payment_Methods.md).|
|[Processing Centers](CA_20_50_00.md)|The processing center to be used for processing credit card payments has been configured.|See [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).|

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

