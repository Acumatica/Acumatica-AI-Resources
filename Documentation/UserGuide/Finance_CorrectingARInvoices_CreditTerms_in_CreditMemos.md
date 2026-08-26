# AR Invoice Correction: Support for Credit Terms in Credit Memos {#_f72a5fbd-d241-4d64-b6ab-c9bb70bf13f7 .concept}

Credit memos created in Acumatica ERP can have credit terms specified for them; thus, they can have cash discounts. If you reverse an original invoice with a cash discount, the created credit memo will also have this cash discount. Credit memos with discounts can also be used in cash flow forecasting.

To turn on the support for credit terms for credit memos, you select the **Use Credit Terms in Credit Memos** check box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

## Insertion of Credit Memo Settings { .section}

When you create a credit memo on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form by copying an existing credit memo, the system inserts the settings as follows, depending on whether the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

-   If this check box is selected, the **Terms** value on the [Invoices and Memos](AR_30_10_00.md) form is copied from the original document, if terms have been specified; otherwise, the **Terms** value is copied from the customer's settings. The values in the **Cash Discount Date**, **Due Date**, and **Cash Discount** boxes are calculated based on these terms. All these boxes are available.
-   If the check box is cleared, the system leaves the **Terms**, **Cash Discount Date**, and **Due Date** boxes empty on the [Invoices and Memos](AR_30_10_00.md) form, and inserts *0.00* in the **Cash Discount** box. All these boxes are unavailable.

When you create a credit memo by reversing an invoice or debit memo, the system inserts the settings as follows, depending on whether the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) form:

-   If the check box is selected, the **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** settings of the [Invoices and Memos](AR_30_10_00.md) form are copied from the original document, and these boxes are available.
-   If the check box is cleared, the system leaves the **Terms**, **Cash Discount Date**, and **Due Date** boxes of the [Invoices and Memos](AR_30_10_00.md) form empty, and inserts *0.00* in the **Cash Discount** box. All these boxes are unavailable.

**Note:** If the AR document has credit terms with the *Multiple* installment type, the **Cash Discount** box contains *0* and is unavailable. If you change the setting in the **Terms** box, the system recalculates the **Cash Discount** amount.

**Parent topic:**[Correcting AR Invoices](../UserGuide/Finance_CorrectingARInvoices_Mapref.md)

