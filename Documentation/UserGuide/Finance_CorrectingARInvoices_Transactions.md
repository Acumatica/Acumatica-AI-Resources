# AR Invoice Correction: Generated Transactions {#_1bfc1f51-a22c-400c-a646-b06b9de92dff .concept}

When you release a credit memo, the system generates a batch of GL transactions that update the asset and income accounts. For details on the general ledger accounts involved, see [AR Invoices: Invoice Releasing](AR__CON_InvoiceReleasing.md).

The following transactions will be posted to the general ledger when a one-line credit memo with a tax is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|0.00|Amount + Tax amount|
|Sales account|Amount|0.00|
|Tax Payable account|Tax amount|0.00|

The following transaction will be posted to the general ledger when a one-line credit memo without a tax is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|0.00|Amount|
|Sales account|Amount|0.00|

The following transaction will be posted to the general ledger when a one-line debit memo with a tax is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount + Tax amount|0.00|
|Sales account|0.00|Amount|
|Tax Payable account|0.00|Tax amount|

The following transactions will be posted to the general ledger when a one-line debit memo without a tax is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|0.00|
|Sales account|0.00|Amount|

**Attention:** Tax accounting is outside the scope of the current business process, so the transactions generated later will involve only the Accounts Receivable and Sales accounts.

When you release an application of a credit memo to an invoice, the system does not generate a batch. A batch is generated in only the following cases:

-   You have written off some balance along with the application. In this case, the system generates a batch to update the asset account specified for the outstanding document in the **AR Account** box on the **Financial** tab of [Invoices and Memos](AR_30_10_00.md) and the expense account specified in the **Account** box on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form for the reason code you have used to write off the balance.
-   The credit memo or the outstanding document to which you want to apply the credit memo is in a foreign currency. The system generates a batch to update the balance of the realized gain or loss \(RGOL\) account by the amount resulting from the difference in the exchange rate on the outstanding document date and the credit memo date. The RGOL account is specified for each currency on the [Currencies](CM_20_20_00.md) \(CM202000\) form.

    **Attention:** Currency management is outside the scope of the current business process.


**Parent topic:**[Correcting AR Invoices](../UserGuide/Finance_CorrectingARInvoices_Mapref.md)

