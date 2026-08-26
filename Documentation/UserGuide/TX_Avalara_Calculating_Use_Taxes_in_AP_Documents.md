# Use Tax Calculation {#_f72efa9e-a0c5-439f-93e8-bda2288bff28 .concept}

In Acumatica ERP, use tax calculations can be performed by the Avalara AvaTax service in accounts payable bills and purchase orders. This topic provides an overview of the supported document types, along with key setup steps and important details about the process.

## Overview of the Use Tax Calculation Setup {#section_uk3_xpn_rcc .section}

In Acumatica ERP, the calculation of use taxes is performed in the following documents:

-   Documents of the *Bill* type created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form
-   Purchase orders of the *Normal*, *Drop-Ship*, and *Project Drop-Ship* types created on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form

**Attention:** The taxes calculated in purchase orders on the [Purchase Orders](PO_30_10_00.md) form are used for informational purposes. Only taxes calculated in AP bills are actually reported.

To initiate the use tax calculation in a document in Acumatica ERP, the following configuration tasks must be completed:

1.  An external tax provider must be configured on the [Tax Providers](TX_10_20_00.md) \(TX102000\) form.
2.  A dedicated tax zone must be created on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form. In addition to other tax zone settings, the following must be specified:
    -   The **External Tax Provider** check box is selected.
    -   *Use Taxes* is specified in the **Calculate in AP** box.
3.  The tax zone must be specified either directly in the **Vendor Tax Zone** box on a document entry form or in the vendor's settings on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

When you save a document, Acumatica ERP sends an API request to the Avalara AvaTax service. The service returns the applicable use taxes, which are added to the **Taxes** tab of the [Bills and Adjustments](AP_30_10_00.md) or [Purchase Orders](PO_30_10_00.md) form. The system also adds the applied taxes to the [Taxes](TX_20_50_00.md) \(TX205000\) form.

As a result of use taxes being processed, a GL transaction is posted to the general ledger that debits the tax expense account and credits the accounts payable account with the amount specified in the **Tax Amount** column of the **Taxes** tab on the [Bills and Adjustments](AP_30_10_00.md) form.

**Important:** The bill reclassification process does not send updated information about the general ledger accounts to the external tax provider. For more information, see [Project Expense Reclassification: Limitations](Projects_Reclassifying_APBill_Limitations.md).

The following table lists the settings of the use taxes that are returned by the Avalara AvaTax service and added to the [Taxes](TX_20_50_00.md) form of Acumatica ERP.

|UI Element|Value|
|----------|-----|
|**Tax ID**|The value from the `taxName` parameter in the API response + the *USE* suffix|
|**Calculation Rule**|*Exclusive Document-Level* \(read-only\)|
|**Description**|*External Tax Provider State tax for* followed by the `jurisName` value from the API response|
|**Cash Discount**|*Reduces Taxable Amount* \(read-only\)|
|**Tax Type**|*Use* \(read-only\)|
|**Exclude from Tax-on-Tax Calculation**|Selected \(read-only\)|
|**Tax Agency**|The value of the **Tax Agency ID** box specified on the [Tax Zones](TX_20_60_00.md) form|
|**Not Valid After**|Empty \(read-only\)|
|**Partially Deductible VAT**|Cleared \(read-only\)|
|**Reverse VAT**|Cleared \(read-only\)|
|**Statistical VAT**|Cleared \(read-only\)|
|**Include in VAT Exempt Total**|Cleared \(read-only\)|
|**Include in VAT Taxable Total**|Cleared \(read-only\)|
|**Pending VAT**|Cleared \(read-only\)|
|**Direct-Entry Tax**|Cleared \(read-only\)|
|**GL Accounts** tab|
|**Tax Payable Account**|The value specified in the **Tax Payable Account** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|
|**Tax Payable Subaccount** \(if applicable\)|The value specified in the **Tax Payable Subaccount** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) form|
|**Use Tax Expense Account**|Selected|
|**Tax Expense Account**|The value specified in the **Tax Expense Account** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) form|
|**Tax Expense Subaccount** \(if applicable\)|The value specified in the **Tax Expense Subaccount** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) form|

## Line-Level Tax Calculation in AP Bills {#section_arv_jtr_rcc .section}

An accounts payable bill is paid by line when the **Pay by Line** check box is selected in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. In this case, the taxes calculated by the Avalara AvaTax service are distributed across the line items on release of the bill and shown in the **Tax Amount** column on the **Details** tab of the form. The tax amounts are included in the balance of each line item and shown in the **Balance** column on the **Details** tab.

This functionality is available only if the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

