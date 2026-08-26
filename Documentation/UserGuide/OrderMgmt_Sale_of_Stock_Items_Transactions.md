# Sales of Stock Items: Generated Transactions {#_2440487a-1584-4445-bb02-cecb77a2a1d4 .concept}

To be able to process a sale of stock items, you create and process a sales order. The following sections describe the GL transactions generated during processing the documents for a sale of stock items.

**Tip:** Sales orders of the *SO* and *SA* type and shipment documents do not produce any GL transactions.

## Transactions Generated for a Sales Invoice { .section}

When you create and release a sales invoice with one line with a stock item, the system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Depends on the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for Inventory Issue { .section}

On release of the sales invoice, the system generates an inventory issue transaction with the line that has the *Invoice* transaction type. When an inventory issue with one line of the *Invoice* type is released, the system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|0.00|Amount|
|GOGS account|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|Amount|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

