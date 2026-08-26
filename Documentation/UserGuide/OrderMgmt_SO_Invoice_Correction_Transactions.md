# Sales Invoice Correction: Generated Transactions {#_4fdef491-1881-4061-a7dd-b8ba55ca4078 .concept}

To be able to correct an sales invoice created for a sales order, you create and process a correction document \(which in this case is a sales invoice of the *Credit Memo* type\). Similarly, to be able to cancel a sales invoice created for a sales order, the correction document you create and process is a cancellation credit memo. On release of these correction documents, the system generates the GL transactions described in the following sections.

## Transactions Generated for a Correction Sales Invoice {#section_hql_ydr_4mb .section}

When you release a correction sales invoice, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Corrected amount|0.00|
|Sales account|Order type|0.00|Corrected amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form while you are viewing the correction invoice. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for Credit Memo {#section_iql_ydr_4mb .section}

When you release a correction of a sales invoice or cancel an sales invoice, a credit memo is generated \(which is a sales invoice of the *Credit Memo* type\). On release of this credit memo, the system generates the following general ledger transactions, which are the opposite of the transactions generated for original sales invoice.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|0.00|Original invoice amount|
|Sales account|Order type|Original invoice amount|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form while you are viewing the credit memo. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Correcting Sales Invoices](../UserGuide/OrderMgmt_SO_Invoice_Correction_Mapref.md)

