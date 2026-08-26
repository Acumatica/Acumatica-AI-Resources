# Direct Returns: Generated Transactions {#_43f8ff6e-98e2-4adf-af73-33044b45df79 .concept}

To be able to process a direct return of stock items, you create and process a credit memo, which is an invoice of the *Credit Memo* type on the [Invoices](SO_30_30_00.md) \(SO303000\) form. The following sections describe the GL transactions generated during the complete processing of a credit memo with a return line.

## Transactions Generated for a Credit Memo { .section}

When you create and release a credit memo with one return line \(that is, a line with a positive amount\), the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|0.00|Amount|
|Sales account|Item|Amount|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for an Inventory Issue { .section}

On release of the credit memo, the system generates an inventory issue transaction with return lines of the *Credit Memo* transaction type. When an inventory issue with one line of the *Credit Memo* type is released, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Item|Amount|0.00|
|COGS account|Item|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Direct Returns](../UserGuide/OrderMgmt_Direct_Returns_Mapref.md)

