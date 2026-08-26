# Taxable Sales with Freight Charges: Generated Transactions {#_27234ef0-cc3b-4b6c-9339-c7fbb1dfaa51 .concept}

As you process a taxable sale with freight charges, you create and process a sales order, a shipment, and an AR invoice. To track the movements of items and update the customer's balance, the system generates the GL transactions described in the following sections.

## Transaction Generated for an Inventory Document {#section_lzl_fjv_vxb .section}

When you create and release a shipment, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|COGS account|The COGS account of the stock item specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Amount|0.00|
|Inventory Asset account|The inventory account of the warehouse from which the stock item was shipped, specified on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form.

## Transaction Generated for an AR Invoice {#section_ozl_fjv_vxb .section}

When you prepare and release an AR invoice for a sales order, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer, specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount + freight charge amount + tax amount|0.00|
|Sales account|The Sales account of the stock item specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form|0.00|Amount|
|Freight account|The Freight Sales Account specified for the ship via code on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form|0.00|Freight charge amount|
|Tax Payable account|The Tax Payable account of the tax applied to the sales order, specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Processing Taxable Sales with Freight Charges](../UserGuide/Taxes_Processing_SO_Invoice_FreightCharges_Mapref.md)

