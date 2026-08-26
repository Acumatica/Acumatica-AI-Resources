# Sales of Non-Stock Items with Shipping: Generated Transactions {#_73331894-5af6-4014-b171-c775d556d793 .concept}

To be able to process a sale of non-stock items, you create and process a sales order. The following sections describe the GL transactions generated during the processing of the documents for a sale of non-stock items.

**Tip:** Sales orders of the *SO* type and shipment documents do not produce any GL transactions.

## Transactions Generated for a Sales Invoice { .section}

When you create and release a sales invoice with one line with a non-stock item, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Depends on the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

If your company sells non-stock items, you may want to recognize the expenses for these items when they are sold to accurately calculate revenue or for other accounting purposes. To do this, you need to select *Sales* in the **Post Cost to Expenses On** box on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for the non-stock item. When the item is sold, on release of the sales invoice, additional transactions are added to the batch and the following transactions are generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales Revenue account|Depends on the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form|0.00|Amount|
|Expense Accrual account|Depends on the settings specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form for the posting class of the item|0.00|Amount|
|COGS account|Depends on the settings specified on the [Posting Classes](IN_20_60_00.md) form for the posting class of the item|Amount|0.00|

**Parent topic:**[Processing Sales of Non-Stock Items with Shipping](../UserGuide/OrderMgmt_Sales_of_Non_Stock_Items_with_Shipping_Mapref.md)

