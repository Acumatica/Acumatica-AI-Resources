# AR Invoices: Invoice Releasing {#_81f30233-f04e-44ce-b839-760bd0ae8467 .concept}

In Acumatica ERP, invoices that can be released manually have the following document types on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form: *Invoice*, *Debit Memo*, and *Overdue Charge*. The information in this topic applies to documents of these types.

When you release an invoice, the system does the following:

-   Changes the status of the invoice to *Open*, so it appears in the list of the customer's outstanding documents. In the open invoice, you can edit the cash discount date and the due date until the document is settled
-   Increases the customer's balance
-   Generates a GL batch of transactions to update the asset and income accounts

**Attention:** An invoice with the *Credit Memo* type can be also released manually on the [Invoices and Memos](AR_30_10_00.md) form, but the release of a credit memo affects the balances of General Ledger accounts and customers differently.

This topic describes the forms you may use to release an invoice and the generation of the General Ledger batch.

## Releasing an Invoice {#section_q1n_4jv_vxb .section}

You can release an invoice only if it has the *Balanced* status. In Acumatica ERP, you can release an invoice by using one of the following forms:

-   [Invoices and Memos](AR_30_10_00.md): You release an invoice by clicking the **Release** button on the form toolbar. For details, see [AR Invoices: To Create an AR Invoice](Finance_ARInvoices_Process_Activity.md).
-   [Release AR Documents](AR_50_10_00.md) \(AR501000\): You use this mass-processing form to release a particular invoice or multiple invoices at once.

## Generating a GL Batch {#section_kms_xbm_4v .section}

When you release an invoice, the system generates a batch of transactions to record the sale to the general ledger. The invoice includes all the information the system needs to generate the batch.

The following two accounts are usually involved:

-   The asset account specified in the **AR Account** box on the **Financial** tab
-   The income account specified for each line in the **Account** column on the **Details** tab

You can view the details of the batch associated with an invoice by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form.

For a one-line invoice, the following transactions will be recorded to the general ledger when the invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Account|Amount|0.00|
|Sales Account|0.00|Amount|

If the calculation of taxes is configured in your system, the system calculates the applicable taxes for each invoice. The system records the tax amount to the liability account specified for each involved tax in the **Tax Payable Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form. Thus, for a one-line invoice with a tax, the following transactions will be recorded to the general ledger when the invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Account|Amount + Tax Amount|0.00|
|Sales Account|0.00|Amount|
|Tax Payable Account|0.00|Tax Amount|

If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and you have configured manual or automatic discounts with the *Group-level* or *Document-level* type, the system adds separate transactions for applied discounts to the batch. The amount of the discount applied is recorded to the expense account specified in the **Discount Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. Thus, for a one-line invoice with a tax and a document-level discount applied, the following transactions will be recorded to the general ledger when the invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Account|Amount + Tax Amount|0.00|
|Sales Account|0.00|Amount|
|Discount Account|Discount Total|0.00|
|Tax Payable Account|0.00|Tax Amount|

If the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, one more account may be involved: the rounding account, which is updated by the amounts resulting from rounding the document total. The small amount resulting from rounding may be posted as a debit or a credit, depending on its sign. If an invoice is in the base currency, the system uses the rounding gain and loss accounts specified in the **Rounding Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. If an invoice is in a foreign currency, the system uses the accounts specified for this currency on the [Currencies](CM_20_20_00.md) form. For details, see [Rounding of AR Document Amounts: General Information](Finance_AR_Doc_Amount_Rounding_GeneralInfo.md). Thus, for a one-line invoice with a tax and the rounding is set to increase the invoice total, the following transactions will be recorded to the general ledger when the invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Account|Rounded Amount + Tax Amount|0.00|
|Sales Account|0.00|Amount|
|Tax Payable Account|0.00|Tax Amount|
|Rounding Gain / Loss Account|0.00|Rounding Difference Amount|

If the invoice is in a foreign currency, its details must be recalculated in the base currency of your system. To record the difference resulting from rounding during currency conversion, the system uses the rounding gain and loss accounts specified for the document currency on the [Currencies](CM_20_20_00.md) form. The small amount resulting from the currency rounding may be posted as a debit or a credit, depending on its sign. For details, see [AR Invoices in Foreign Currencies: Process Activity](Multicurrency_ARInvoicesFC_Process_Activity.md).

Commission amounts are visible for the invoice, but commission-related transactions are not included in the batch. To calculate commissions and generate appropriate transactions, use the [Calculate Commissions](AR_50_55_00.md) \(AR505500\) form.

**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

