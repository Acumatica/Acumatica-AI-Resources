# Direct Tax Payment: Generated Transactions {#_f2c84a86-c645-450e-a630-4b55e4665812 .concept}

As you process a taxable purchase and create a tax bill for the agency, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill {#section_phm_fjv_vxb .section}

When you create and release an AP bill that records a taxable purchase of imported goods, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The Expense account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form or of the document line|Amount|0.00|
|Accounts Payable account|The Accounts Payable account of the vendor specified on the [Vendors](AP_30_30_00.md) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

If you create an AP bill that records a taxable purchase and contains a line with a direct-entry tax, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The AP account of the vendor specified on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form|0.00|Line amount + total tax amount|
|Expense account|The Expense account of the vendor specified on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form or of the document line|Line amount|0.00|
|Tax claimable account|The Tax Claimable account of the VAT and the direct-entry tax specified on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form|Total tax amount|0.00|

## Transaction Generated for a Tax Bill {#section_thm_fjv_vxb .section}

When you create and release a tax bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax Claimable account|The Tax Claimable account of the VAT specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount|0.00|
|Accounts Payable account|The AP account of the tax agency specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\) form.

**Parent topic:**[Paying Taxes Directly to the Tax Agency](../UserGuide/Taxes_Paying_Tax_Directly_Mapref.md)

