# Invoices with Inclusive Sales Taxes: Generated Transactions {#_fec42f9b-fde2-431a-813e-596436d1f646 .concept}

To be able to process inclusive document-level sales taxes, you create and process AR invoices. When an AR invoice is released, to update the customer’s balance, the system generates the GL transaction described in the following sections.

## Transaction Generated for an AR Invoice {#section_es3_fjv_vxb .section}

When you create and release an AR invoice with a rounding difference, the system generates the following GL transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable|Customer|Total amount|0.00|
|Sales account of Line 1|Item \(if specified\) or customer|0.00|Line amount excluding taxes|
|Sales account of Line 2|Item \(if specified\) or customer|0.00|Line amount excluding taxes|
|Tax Payable|Tax settings|0.00|Document tax amount|
|Tax Rounding Gain/Loss|Tax preferences on the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form|Tax rounding loss or 0.00|Tax rounding gain or 0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Processing Invoices with Inclusive Sales Taxes](../UserGuide/Taxes_Invoices_with_InclusiveSalesTax_Mapref.md)

