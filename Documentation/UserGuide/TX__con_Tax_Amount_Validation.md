# Purchases with Sales Taxes: Tax Amount Validation {#_b945e47c-7c21-4a69-99f2-c3022c28b1fe .concept}

According to legal rules and requirements, all amounts—such as total amount, tax amount, and taxable amount—of a document that you enter into the system must exactly match the corresponding amounts specified in the source \(original\) document received from the vendor. To help you ensure that correct tax amount is specified in the document that you enter in the system manually, Acumatica ERP provides you with a validation function. With this function, you can enter the control tax amount into a document, which the system validates.

**Note:** The system validates the tax amount that you have specified in a document only if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To make the **Tax Amount** box available in the summary area of the document entry form, you need to select the **Validate Tax Totals on Entry** check box on the preferences form of the corresponding module:

-   [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form: To make the tax amount validation box available on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) and [Cash Purchases](AP_30_40_00.md) \(AP304000\) forms
-   [Cash Management Preferences](CA_10_10_00.md) \(CA101000\): To make the tax amount validation box available on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form

With this check box selected, after you have added all the required detail lines in a document, the system will compute the tax amount according to the tax settings applicable to a document and validate this amount against the tax amount specified in the validation box.

If there is a discrepancy between the tax amount that you have entered in the **Tax Amount** box and the tax amount computed by the system \(that is shown in the **Tax Amount** column on the **Tax Details** tab\), the system does not allow you to process the document until you correct the tax amount. In that case, you correct the tax amount manually on the **Tax Details** tab.

## Tax Amount Discrepancies {#section_pxj_fjv_vxb .section}

Some discrepancies can appear between the tax amount computed by the system on the document entry form and the tax amount specified in the original vendor document. These discrepancies may be caused due to rounding differences—for example, when the tax amount of the original document was calculated in another system in which the rounding rules are set up differently. The discrepancies can be minor differences in decimals, but nevertheless they should be corrected.

If any discrepancy arises and the system shows the corresponding error, you manually correct the tax amount in the **Tax Amount** column of the **Tax Details** tab so that it matches the tax amount of the vendor document. In that case, if the *Net* tax calculation method has been applied, all the amounts in the document will be exactly the same as in the source document \(after you correct the tax amount manually\) and the document will be balanced. If the *Gross* tax calculation method has been applied, the taxable amounts used by the system for tax amount calculation can differ slightly from the taxable amounts used for the original document. In that case, the discrepancy \(the amount of the difference\) that has occurred will be accounted and posted to the corresponding GL account. Thus, as a result, the document will contain exactly the same amounts as the source document, but the amount that has appeared due to rounding differences, will be accounted on the respective GL account:

In that case, the GL transaction will look as shown in the following example.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|0.00|Total Amount|
|Expense account \(Line 1\)|Amount1|0.00|
|Expense account \(Line 2\)|Amount2|0.00|
|Tax Payable account|Tax Amount|0.00|
|Rounding Gain/Loss account|Discrepancy Amount \(the difference due to the rounding amount\)|0.00|

To account for the discrepancy amount, you need to specify the maximum amount of the difference that can appear due to rounding in the **Rounding Limit** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL101000\) form. The system will validate this amount against the discrepancy amount, and if the discrepancy amount does not exceed the limit, the discrepancy amount will be posted to the GL accounts specified in the **Rounding Gain Account/Subaccount** box or the **Rounding Loss Account/Subaccount** box on the [General Ledger Preferences](GL_10_20_00.md) form.

## Tax-Exclusive and Tax-Inclusive Amounts in Document Detail Lines {#section_uxj_fjv_vxb .section}

Before entering amounts in the detail lines of a document that you enter into the system, you must consider the type of amounts specified in the original vendor document. Depending on the business requirements of the applicable vendor, a document can contain in its detail lines amounts that are either tax-inclusive \(net\) or tax-exclusive \(gross\). In Acumatica ERP, you need to specify the tax calculation mode that the system should use during the validation process. The selected mode defines how the system will compute the tax and taxable amounts for the document.

You select the required mode in the **Tax Calculation Mode** box \(which can be found on several forms, as described below\), in which the following options are available:

-   *Gross*: Select this option if the amounts in the document detail lines include applicable taxes.
-   *Net*: Select this option if the amounts in the document detail lines do not include taxes.
-   *Tax Settings*: Select this option if the standard tax settings should be applied to the document. This option is used if a tax with one of the following tax calculation methods selected in the **Calculation Rule** box on the [Taxes](TX_20_50_00.md) \(TX205000\) form is applied to the document: *Compound Line-Level*, *Exclusive Document-Level*, and *Compound Document-Level*. For details about these methods, see [Tax Calculation Methods: General Information](Taxes_Selecting_Tax_Calc_Methods_GeneralInfo.md).

**Note:** You can specify the *Gross* or *Net* tax calculation mode only if line-level taxes are applicable to the document—those that have the *Exclusive Line-Level* option or the *Inclusive Line-Level* option selected in the **Calculation Rule** box on the [Taxes](TX_20_50_00.md) form.

The **Tax Calculation Mode** box is specified on the following levels by using the appropriate forms:

-   Document: You select the appropriate option on the **Details** tab of the document entry form. This option will be applied for computing tax and taxable amounts in this document. By default, the system fills in this box with the option specified for the vendor location \(if applicable\) or vendor that you specify for the document, but you can override the default option.
-   Vendor Location \(if applicable\): You select the appropriate option on the **General** tab of the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. \(By default, the system fills in this box with the option specified for the vendor, but you can override this option.\) This setting will be applied by default to all documents in which you select this vendor location, but it can be changed for each document.
-   Vendor: You select the appropriate option on the **Purchase Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. \(By default, the system fills in this box with the option specified for the vendor class, but you can override this option.\) This setting will be applied by default to all documents created for this vendor \(if the option is not changed at the vendor location or document level\).
-   Vendor Class: You select the appropriate option on the **General** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. This setting will be applied by default to all documents created for vendors of this vendor class \(if the option is not changed at the vendor, vendor location, or document level\).

For details on how default values work in the system, see [Vendors: Vendor Locations](AP__CON_Vendor_Locations.md) and [Vendors: Vendor Defaults and Overrides](AP__CON_VendorClasses.md).

**Note:** If the tax zone of a vendor contains a withholding tax \([Withholding Taxes: General Information](../ImplementationGuide/Taxes_Configuring_WithholdingTax_GeneralInfo.md)\), the system automatically sets the tax calculation mode to *Gross* and makes the **Tax Calculation Mode** box unavailable for editing. If the tax zone of a vendor contains a use tax, the system automatically sets the tax calculation mode to *Net* in documents, and makes the **Tax Calculation Mode** box unavailable for editing.

## One-Line Document and Multiline Document {#section_byj_fjv_vxb .section}

To speed the process of entering data on a document entry form, the system suggests a possible amount in each line that you add. For example, when you add the first line, the system automatically inserts in the **Ext. Cost** column of the line the amount that you have entered in the amount validation box in the summary area of the document entry form.

**Note:** The amount validation feature can be enabled in the document \(such as a bill\) by selecting the corresponding check box on the module preferences form \(for example, the **Validate Document Totals on Entry** on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form\). This functionality allows the system to validate the amount that you enter in the amount validation box of the document entry form \(for example, in the **Amount** box on the [Bills and Adjustments](AP_30_10_00.md) form\). The name of the check box that activates this functionality and the name of the validation box on the document entry form can differ depending on the document and the module.

The suggested amount is exactly the same as the control amount you have entered \(if the *Gross* tax calculation mode is specified for a document\), or this amount is recalculated according to the rate of the applied tax or taxes—that is, the amount minus the applicable tax amounts \(if the *Net* tax calculation mode is specified\). You leave the **Ext. Cost** amount as it is if the document has only one line.

If the document has multiple lines, you manually correct the first **Ext. Cost** amount on the document entry form based on the amount specified in the first line of your source document. When you add the second detail line, the system suggests the residual amount \(the difference between the total document amount and the amount that you have specified in the first line\) in the **Ext. Cost** column of the second line; correct this amount if needed. The process proceeds similarly for any additional lines that you need to add. You can leave the suggested amount or correct it.

**Note:** If you do not want the system to suggest residual amounts while you add the detail lines, do not fill in the amount validation box until you have added all required detail lines to the document.

After you have added all required detail lines to the document entry form, the system compares the tax amount \(or amounts\) computed on the **Taxes** tab to the control value you have entered in the **Tax Amount** validation box of the form. The document is balanced if the tax amounts are the same; the system generates an error if there is any discrepancy.

**Parent topic:**[Processing Purchases with Sales Taxes](../UserGuide/Taxes_Processing_Purchase_withSalesTax_Mapref.md)

