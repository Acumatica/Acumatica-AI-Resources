# Export of Sales Prices {#_ce3c09c0-a5e3-4ce5-a0ea-17baf26214bf .concept}

Inventory items and opportunities can be synchronized between Acumatica ERP and Salesforce in real time, but for correct and complete synchronization of the data, sales prices in Acumatica ERP should be separately synchronized with product prices in Salesforce.

Real-time synchronization is not available for sales prices. Sales prices can be exported from Acumatica ERP to Salesforce through the [Export by Scenario](SM_20_70_36.md) \(SM207036\) form. Prices may be exported in various currencies, and price classes used in Acumatica ERP may be exported as price books to Salesforce.

Before an administrator can start configuring the export of sales prices, integration between the systems should be properly configured \(for details, see [Configuration](IS__con_Configuration.md)\). Then the following steps, each of which is described in detail below, should be completed:

1.  [Synchronization of inventory items](#_98e2ce6d-42b6-4923-a9eb-89cb7d515d06) between Acumatica ERP and Salesforce
2.  [Review and update of the built-in generic inquiry forms](#_ecf660c0-90f0-4961-b34d-86b95c3b3210) used for the export of sales prices
3.  [Review and update of the built-in export scenarios](#_e0a5da75-be3d-4682-9a9f-775b829b6da8) used for the export of sales prices
4.  [Configuration of custom generic inquiries and export scenarios](#_98a8e341-fc69-44c1-97f7-53411c98c840)
5.  [Configuration of the support of multiple currencies](#_66378375-f42f-46ec-8301-e1e70134f49e)
6.  [Export of sales prices](#_a42ea918-6753-43da-ace5-3f1d5a6fc801)

## Synchronization of Inventory Items {#_98e2ce6d-42b6-4923-a9eb-89cb7d515d06 .section}

Stock and non-stock inventory items in Acumatica ERP should be synchronized with products in Salesforce. For that purpose, the *Full Data Resync* job should be run for stock and non-stock inventory items on the [Salesforce Data Resync](SF_20_50_35.md) \(SF205035\) form, and then all conflicts \(if any\) should be resolved on the [Salesforce Sync State](SF_20_50_40.md) \(SF205040\) form.

## Review and Update of the Built-In Generic Inquiry Forms {#_ecf660c0-90f0-4961-b34d-86b95c3b3210 .section}

The *Default Prices for Export to Salesforce \(SF000001\)* and *Base Sales Prices for Export to Salesforce \(SF000002\)* forms, which are hidden generic inquiry forms, are used in Acumatica ERP to support the export of sales prices through the *Export Default Prices to Salesforce* and *Export Base Sales Prices to Salesforce* export scenarios.

The generic inquiry forms may be additionally configured to match your company's policies regarding sales prices. For information about the limitations on the export of sales prices, see [Synchronizing Sales Prices](IS__con_Limitations.md#_a429d61b-d2b9-4fe9-be68-d10ecdf2cc2d).

## Review and Update of the Built-In Export Scenarios {#_e0a5da75-be3d-4682-9a9f-775b829b6da8 .section}

On the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, the value of the *Pricebook2Id* field should be updated for the involved export scenarios as follows:

-   The *Pricebook2Id* of the standard price book should be specified for the *Export Default Prices to Salesforce* export scenario.
-   The *Pricebook2Id* of the price book with base prices should be specified for the *Export Base Sales Prices to Salesforce* export scenario.

**Note:** The standard price book in Salesforce should already be filled with prices. If a product has no price in the standard price book, no sales price can be exported for this product from Acumatica ERP to any price book in Salesforce.

## Configuration of the Support of Multiple Currencies {#_66378375-f42f-46ec-8301-e1e70134f49e .section}

The identifiers of currencies used in Acumatica ERP should exactly match the currency codes used in Salesforce.

In Acumatica ERP, a currency identifier may be configured on the [Companies](CS_10_15_00.md) \(CS101500\) form for the base currency or on the [Currencies](CM_20_20_00.md) \(CM202000\) form if multiple currencies are supported.

In Salesforce, a currency code may be configured in the **Active Currencies** list at **Setup** &gt; **Administer** &gt; **Company Profile** &gt; **Manage Currencies**.

**Note:** If your company does not use multiple currencies, default prices always appear in Salesforce in their base currency.

If the use of multiple currencies is enabled both systems, an Acumatica ERP administrator should do the following:

1.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, select the *Salesforce Sync* data provider and then, on the **Schema** tab, select the *PricebookEntry* source object, click **Fill Schema Fields**, and select the **Key** check box for the *Pricebook2Id*, *Product2Id*, and *CurrencyIsoCode* fields; for all the other listed fields, this check box should be cleared.
2.  On the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, for the *Export Default Prices to Salesforce* and *Export Base Sales Prices to Salesforce* export scenarios, the *Active* check box should be selected for the *CurrencyIsoCode* field. The administrator can specify the base currency in the **Field** column if it differs from the default value.

## Configuration of Custom Generic Inquiries and Export Scenarios {#_98a8e341-fc69-44c1-97f7-53411c98c840 .section}

To match your company's sales process, you can create custom generic inquiries and integration scenarios.

For example, you can do the following to prepare for the export of customer price classes or customer prices:

1.  On the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, create a generic inquiry that collects customer price classes or customer prices.
2.  On the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, create an export scenario based on the new generic inquiry.

    You can copy the mapping data from the *Export Base Sales Prices to Salesforce* export scenario and specify the *Pricebook2Id* that corresponds to customer price classes or customer prices in Salesforce. You can define different price books by using nested `=IIF()` formulas. Also, you may need to set up the support of multiple currencies.


## Export of Sales Prices {#_a42ea918-6753-43da-ace5-3f1d5a6fc801 .section}

Before starting the export of sales prices from Acumatica ERP to Salesforce, an administrator should make sure that the corresponding generic inquiries and export scenarios match the company's sales policies.

Then, on the [Export by Scenario](SM_20_70_36.md) \(SM207036\) form, a corresponding export scenario should be executed as many times as needed until all the prices appear in Salesforce.

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

