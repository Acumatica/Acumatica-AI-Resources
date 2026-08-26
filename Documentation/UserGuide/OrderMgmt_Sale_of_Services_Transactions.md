# Sales of Services: Generated Transactions {#_84fae999-6f65-4de4-b896-50b1877516f9 .concept}

To be able to process a sale of non-stock items, you create and process a sales order. The following sections describe the GL transactions generated during the processing of the documents for a sale of non-stock items.

**Tip:** Sales orders of the *SO* type do not produce any GL transactions.

## Transactions Generated for a Sales Invoice { .section}

When you create and release a sales invoice with one line with a non-stock item that does not require shipping, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Depends on the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Sales of Services](../UserGuide/OrderMgmt_Sale_of_Services_Mapref.md)

