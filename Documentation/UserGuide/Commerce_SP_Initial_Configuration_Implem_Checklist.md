# Initial Configuration: Implementation Checklist {#_9350d10b-61b0-4545-ab67-578e2da356f4 .concept}

You can use the information in this topic to quickly check what needs to be configured in the Shopify store and in the Acumatica ERP instance before you can start implementing the integration with the Shopify store.

## API Credentials to Capture in the Shopify Store { .section}

If you connect a Shopify store to Acumatica ERP by using a custom app, you need to capture the API credentials of the custom app in the Shopify store, which are listed in the following table. You will need to specify these credentials on the **General** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form when you establish the store connection. For more information, see [Initial Configuration: To Establish the Store Connection with a Custom App](Commerce_SP_To_Establish_Store_Connection_Custom_App.md).

|Required Information|Description|
|--------------------|-----------|
|**Store Admin URL**|The permanent URL of the store followed by */admin*.

 This path is used for navigating to the Shopify store's pages from the [Sync History](BC_30_10_00.md) \(BC301000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

|
|**API Access Token**|The API access token that was generated for the custom app added to the Shopify store to integrate it with Acumatica ERP.|
|**API Secret Key**|The API secret key that was generated for the custom app created in the Shopify store to integrate it with Acumatica ERP.|

## Settings in the Shopify Store { .section}

In the table below, you will find the information about the settings that you should specify in the Shopify store before you start setting up the integration with Acumatica ERP. For more information, see [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).

|Required Settings|Description|
|-----------------|-----------|
|**Store profile**|The basic information about the online store, including the store name, business name and address.

 The store country is important because it determines which payment and shipping options are available for your store.

|
|**Default currency**|The default currency in which prices are displayed to users and which transactions are made. The default currency should be the same as the base currency in the Acumatica ERP instance.|
|**Payment methods for the default currency**|The payment methods that can be used for transactions in the default currency.|
|**Shipping rules**|The shipping zones and rates that you want to use in your store.|
|**Taxes**|The tax settings that apply to your online store.|

## Settings in Acumatica ERP { .section}

The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following required features are enabled:

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

|See [Preparing an Instance: Acumatica ERP Features](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Features_Overview.md).|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the Shopify store.|See [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created.|See [Customers: General Information](Customer_GeneralInfo.md).|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import.
-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer location IDs on import.

|See [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|A unique order type has been created for orders imported from the online store.|See [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The sales taxes applicable to the products that you sell have been configured.|See [Sales Taxes: General Information](../ImplementationGuide/SalesTaxes_GeneralInfo.md).|
|[Ship via Codes](CS_20_75_00.md) \(CS207500\)|The ship via codes for the delivery services that the company uses have been created.|See [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).|
|[Cash Accounts](CA_20_20_00.md) \(CA202000\)|The cash accounts associated with payment methods used in the ecommerce transactions have been created.|See [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|The payment methods to be mapped to store payment methods used in the ecommerce transactions have been configured.|See [Cash Management: Payment Methods](../ImplementationGuide/config_Basic_Company_Payment_Methods.md).|
|[Processing Centers](CA_20_50_00.md) \(CA205000\)|The processing center to be used for processing credit card payments has been configured.|See [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).|

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

