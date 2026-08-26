# Drop Shipments of Non-Stock Items: Generated Transactions {#_0395fdfb-0e19-4be5-8566-90dd93e3d4dd .concept}

To be able to process a sale of non-stock items intended for drop shipment, you create and process a sales order and a purchase order. The following sections describe the GL transactions generated during the processing of the documents for a sale of non-stock items for drop shipment.

**Tip:** Sales orders of the *SO* type do not produce any GL transactions.

## Transactions Generated for a Sales Invoice {#section_o5m_b2p_llb .section}

When you create and release a sales invoice with a line with a non-stock item, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Amount|0.00|
|Sales account|Depends on the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated on AP Bill Release {#section_q5n_cks_hlb .section}

When an accounts payable bill prepared for a purchase order \(or for purchase receipt\) is released, the system creates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|0.00|Amount|
|PO Accrual account|Item|Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Drop Shipments of Non-Stock Items](../UserGuide/OrderMgmt_Drop_Shipping_of_Non_Stock_Items_Mapref.md)

