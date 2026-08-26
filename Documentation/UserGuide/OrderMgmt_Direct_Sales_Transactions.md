# Direct Sales: Generated Transactions {#_fea4be16-0479-47f5-a555-0a7945e330e0 .concept}

To be able to process a direct sale of stock items, you create and process a sales invoice. The following sections describe the GL transactions generated during the complete processing of a sales invoice with a sale line.

## Transaction Generated for a Sales Invoice { .section}

When you create and release a sales invoice with one sale line \(that is, a line with a positive amount\), the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Item|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for an Inventory Issue { .section}

On release of the sales invoice, the system generates an inventory issue transaction with sales lines of the *Invoice* transaction type. When an inventory issue with one line of the *Invoice* type is released, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Item|0.00|Amount|
|GOGS account|Item|Amount|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Direct Sales](../UserGuide/OrderMgmt_Direct_Sales_Mapref.md)

