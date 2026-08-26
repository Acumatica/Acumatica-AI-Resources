# Setup and Calculation of Cash Discounts {#_0c0ecd1e-e200-49cb-afd1-d5484fd8a964 .concept}

**Attention:** In different businesses, a cash discount can be named a *prompt payment discount*, an *early payment discount*, or an *early settlement discount*.

You can configure a cash discount for only single-installment credit terms. The cash discount is available for a time interval \(that is, the cash discount period\) that starts on the document date and ends in the number of days specified in the **Cash Discount Settings** section of the [Credit Terms](CS_20_65_00.md) \(CS206500\) form. The cash discount period falls within the credit period. If custom due dates are set, discount settings are applied to both intervals.

The length of the cash discount period is defined by the following settings specified in the **Cash Discount Settings** section on the [Credit Terms](CS_20_65_00.md) form:

-   **Discount Type**: This setting defines the method of calculating the end date of the discount period \(which is similar to the method of calculating the due date\). The option you select in the **Due Date Type** box determines the options available for selection in the **Discount Type** box. If the *End of Month* option is selected in the **Due Date Type** box, configuration of a cash discount is not available.
-   **Discount Day**: This setting determines the number of days or the particular day of the month, depending on the method selected in the **Discount Type** box.

For examples of the ways a cash discount period is calculated, see [Examples of Credit and Cash Discount Periods](AR__CON_CreditTerms_Examples.md).

Cash discounts are calculated automatically on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Bills and Adjustments](AP_30_10_00.md) \(AP301000\), [Cash Sales](AR_30_40_00.md) \(AR304000\), [Cash Purchases](AP_30_40_00.md) \(AP304000\), [Invoices](SO_30_30_00.md) \(SO303000\), and [Journal Vouchers](GL_30_40_00.md) \(GL304000\) forms. The system calculates cash discounts as follows:

-   If the document's originating branch belongs to a company with *Document Amount* specified in the **Cash Discount Base** box on the [Companies](CS_10_15_00.md) \(CS101500\) form, the cash discount is calculated as `Cash Discount = Document Amount * cash discount %`.
-   If the document's originating branch belongs to a company with *Document Amount Less Taxes* specified in the **Cash Discount Base** box , the cash discount is calculated as `Cash Discount = (Document Amount – Tax Total) * cash discount %`.

**Attention:** Use taxes are not included in the tax total.

If a cash discount is applied to a document, it may or may not affect how the system calculates the taxable amount of a document. You may indicate to the system how to calculate the taxable amount for a tax application on the [Taxes](TX_20_50_00.md) \(TX205000\) form. For details about how the system calculates a taxable amount of a document if a cash discount should be applied to the document, see [VAT for Early Payments: General Information](Taxes_Adjusting_VAT_Early_Payments_GeneralInfo.md).

**Parent topic:**[Credit Terms](../UserGuide/AP__con_Credit_Terms.md)

