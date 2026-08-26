# Sales with Payments and Prepayments: Generated Transactions {#_2f86b024-3f5f-497e-b27d-b124f9ff3f87 .concept}

To be able to process a sale of items, you create and process a sales order. The following sections describe the GL transactions generated during the processing of the documents for a sale of an item.

**Note:** Sales orders and shipment documents do not produce any GL transactions.

## Transaction Generated for a Sales Invoice { .section}

When you create and release a sales invoice, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Specified in the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Note:** Sales orders and shipment documents do not produce any GL transactions.

## Transaction Generated on Release of Inventory Issue { .section}

When an inventory issue is created and released, the system generates the following general ledger transaction.

|Account|Source of Account|Quantity|Debit|Credit|
|-------|-----------------|--------|-----|------|
|Inventory asset account for line 1 of the sales order|Stock item|Quantity with the minus sign|0.00|0.00|
|COGS account for line 1 of the sales order|Stock item|Quantity|0.00|0.00|
|Inventory asset account for line 2 of the sales order|Stock item|Quantity with the minus sign|0.00|0.00|
|COGS account for line 2 of the sales order|Stock item|Quantity|0.00|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

