# AR Invoices: Generated Transactions {#_12b8d884-5b07-4ce0-b6ed-b18eb8349c9d .concept}

When you release an invoice, the system generates a batch of transactions to reflect the sale in the general ledger. The invoice includes all the information the system needs to generate the batch.

You can view the details of the batch associated with the release of an invoice by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

The following accounts are usually involved:

-   The asset account, which is specified in the **AR Account** box on the **Financial** tab
-   The income account specified for each line in the **Account** column on the **Details** tab

For a one-line invoice, the following transaction will be recorded to the general ledger when the invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|0.00|
|Sales account|0.00|Amount|

**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

