# Sales Tax Calculation in Opportunities and Sales Quotes {#_a20eee2f-985b-43d7-a221-6dcd93adce97 .concept}

In Acumatica ERP, sales tax calculations can be performed by the Avalara AvaTax service in opportunities and sales quotes. This topic provides an overview of the key configuration steps and important details related to the process.

## Overview of Sales Tax Calculation in Opportunities and Sales Quotes { .section}

In Acumatica ERP, the integration with Avalara AvaTax supports tax calculation in opportunities and sales quotes.

To initiate tax calculation in an opportunity or a sales quote, you do the following on the [Opportunities](CR_30_40_00.md) \(CR304000\) or [Sales Quotes](CR_30_45_00.md) \(CR304500\) form.

-   Add taxable items on the **Details** tab.
-   Specify an *Avalara* tax zone on the **Shipping** tab in the **Tax Settings** section. \(If a business account with the *Avalara* tax zone is specified in the Summary area of the form, the system fills in the **Tax Zone** box automatically.\)

When you save the document, Acumatica ERP sends an API request to Avalara. The Avalara AvaTax service returns the applicable taxes and specifies their tax IDs, tax rates, tax amounts, and taxable amounts on the **Taxes** tab of the form. The total tax amount is shown in the **Tax Total** box of the Summary area of the form. Additionally, the applied taxes are added to the [Taxes](TX_20_50_00.md) \(TX205000\) form.

When a sales quote is generated from the opportunity, the system transfers the opportunity details, including the calculated taxes, to the sales quote on the [Sales Quotes](CR_30_45_00.md) form. Similarly, when a sales order is created from an opportunity, the system transfers the opportunity details, including the calculated taxes, to the sales order.

## Address Verification for Tax Calculation in Opportunities and Sales Quotes {#section_h1x_nhk_tcc .section}

An API request sent from Acumatica ERP to Avalara contains the `shipTo` and `shipFrom` parameters. Acumatica ERP defines the `shipTo` address, which affects the selection of applicable taxes, according to the conditions described in the following table.

**Tip:** The table illustrates the conditions on the [Opportunities](CR_30_40_00.md) \(CR304000\) form. The same conditions are applied to the [Sales Quotes](CR_30_45_00.md) \(CR304500\) and [Sales Orders](SO_30_10_00.md) \(SO301000\) forms.

|Settings|`shipTo`|
|--------|--------|
|The **Ship Via** box is populated on the **Shipping** tab of the [Opportunities](CR_30_40_00.md) form. The **Common Carrier** check box is selected on the **Details** tab on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form for the specified ship via code.|The customer's address displayed in the **Ship-To Address** section on the **Shipping** tab of the [Opportunities](CR_30_40_00.md) form|
|The **Ship Via** box is populated on the **Shipping** tab of the [Opportunities](CR_30_40_00.md) form. The **Common Carrier** check box is cleared on the **Details** tab on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form for the specified ship via code.|The address is one of the following:-   The **Warehouse** address if a warehouse is specified in a detail line on the **Details** tab of the [Opportunities](CR_30_40_00.md) form
-   The branch address if no warehouse is specified in a detail line

|
|The **Ship Via** box is cleared on the **Shipping** tab of the [Opportunities](CR_30_40_00.md) form.|The address is one of the following:-   The warehouse address specified in a detail line
-   The branch address if a warehouse is not specified

|

The system defines the `shipFrom` address to be used in an API request to Avalara according to the conditions described in the following table.

|Settings|`shipFrom`|
|--------|----------|
|A warehouse is not specified in a detail line on the **Details** tab.|The branch address|
|A warehouse is specified in a detail line on the **Details** tab.|The warehouse address|

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

