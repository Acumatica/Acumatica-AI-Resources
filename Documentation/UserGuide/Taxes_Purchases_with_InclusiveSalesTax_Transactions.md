# Purchases with Inclusive Sales Taxes: Generated Transaction {#_6c818312-dc24-4f2b-8b37-b9d7fe5ecf76 .concept}

To be able to process inclusive document-level sales taxes, you create and process purchase orders and AP bills. When an AP bill is released, to update the vendor balance, the system generates a GL transaction described in the following sections.

## Transaction Generated for an AP Bill {#section_rjk_fjv_vxb .section}

When you create and release an AP bill with a rounding difference, the system generates the following GL transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable|Vendor|0.00|Total amount|
|Expense of Line 1|Item \(if specified\) or vendor|Line amount excluding taxes|0.00|
|Expense of Line 2|Item \(if specified\) or vendor|Line amount excluding taxes|0.00|
|Expense of Line 3|Item \(if specified\) or vendor|Line amount excluding taxes|0.00|
|Tax expense|Tax settings|Document tax amount|0.00|
|Tax Rounding Gain/Loss|Tax preferences on the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form|Tax rounding loss|Tax rounding gain|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Parent topic:**[Processing Purchases with Inclusive Sales Taxes](../UserGuide/Taxes_Purchases_with_InclusiveSalesTax_Mapref.md)

