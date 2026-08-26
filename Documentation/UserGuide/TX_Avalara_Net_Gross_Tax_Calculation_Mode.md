# Setup of Net or Gross Tax Calculation {#_6239c795-23f6-440a-b188-5fddf55d2f1f .concept}

To ensure accurate pricing and compliance with local tax regulations, you can define how taxes are calculated—either as inclusive \(gross\) or exclusive \(net\). Start by specifying the default tax calculation mode for a tax provider. You can then fine-tune tax behavior by assigning a specific mode to individual customers or vendors. And when exceptions arise, you have the flexibility to switch the tax mode directly within a document.

**Important:** The *Net/Gross Entry Mode* feature must be enabled on the [Enable/Disable Features](https://training.acumatica.com/2025R1/(W(2))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=c1555e43-1bc5-4f6f-ba9d-b323f94d8a6b) \(CS100000\) form.

## Specify a Tax Providers’ Default Tax Calculation Mode {#section_wwj_xwh_2gc .section}

Select the default tax calculation mode for a tax provider on the [Tax Providers](TX_10_20_00.md) \(TX102000\) form. In the **Default Tax Calculation Mode** box, you can select one of the following options:

-   *Gross*: Refers to inclusive taxes, meaning the price includes taxes
-   *Net*: Refers to exclusive taxes, meaning the price does not include taxes

Keep in mind that you can override this setting for a specific customer, vendor, or directly within a document.

## Specify the Tax Calculation Mode for Customers and Vendors {#section_yvd_13m_3fc .section}

We recommend that you specify the tax calculation mode for each customer or vendor to align with their specific tax regulations or pricing structures. The **Tax Calculation Mode** box is available in the following locations:

-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, on the **Shipping** tab
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) from, on the **Purchase Settings** tab

## Tax Calculation Mode in Documents {#section_ayx_mgj_2fc .section}

You can view and adjust the tax mode applied to each document. The **Tax Calculation Mode** box is available on the following forms:

-   [Appointments](FS_30_02_00.md) \(FS300200\)
-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
-   [Cash Sales](AR_30_40_00.md) \(AR304000\)
-   [Cash Transactions](CA_30_40_00.md) \(CA304000\)
-   [Invoices](SO_30_30_00.md) \(SO303000\)
-   [Invoices and Memos](AR_30_10_00.md) \(AR301000\)
-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)
-   [Sales Quotes](CR_30_45_00.md) \(CR304500\)
-   [Service Orders](FS_30_01_00.md) \(FS300100\)
-   [Opportunities](CR_30_40_00.md) \(CR304000\)

Note that the tax provider's tax zone—the tax zone with the **External Tax Provider** check box selected on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form—must be specified in the document.

If the project functionality is in use in your system, the **Tax Calculation Mode** box is not shown on the [Project Quotes](PM_30_45_00.md) \(PM304500\), [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\), and [Subcontracts](SC_30_10_00.md) \(SC301000\) forms. During tax calculation:

-   On the [Project Quotes](PM_30_45_00.md) and [Subcontracts](SC_30_10_00.md) forms, the system uses the tax calculation mode of the customer or vendor's location. If *Tax Settings* is selected in the **Tax Calculation Mode** box on the [Customer Locations](AR_30_30_20.md) \(AR303020\) or [Vendor Locations](AP_30_30_10.md) \(AP303010\) forms, the provider’s default tax mode is applied.
-   On the [Pro Forma Invoices](PM_30_70_00.md) form, the provider's tax mode is applied by default.

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

