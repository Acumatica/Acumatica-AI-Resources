# Applying Deductible VAT: Generated Transactions {#_bbf9afdb-52b5-4a7d-a421-0ef4ebdbab9f .concept}

As you apply a deductible VAT, you create and process an AP bill. To update the vendor balance and the amounts of taxes payable and taxes claimable, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Document \(Dedicated GL Account\) {#section_mbp_fjv_vxb .section}

If the non-deductible tax amounts are recorded to the dedicated GL account, when the taxable AP document is released, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax Claimable account|The Tax Claimable account of the partially deductible VAT specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Deductible tax amount|0.00|
|Tax Expense account|The Tax Expense account of the partially deductible VAT specified on the [Taxes](TX_20_50_00.md) form|Non-deductible tax amount|0.00|
|Accounts Payable account|The AP account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount + tax amount|
|Expense account|The expense account specified in the AP bill line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for an AP Document \(Expense Account\) {#section_pbp_fjv_vxb .section}

If the non-deductible tax amounts are recorded to the expense account specified for the AP document line, when the taxable AP document is released, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax Claimable account|The Tax Claimable account of the partially deductible VAT specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Deductible tax amount|0.00|
|Accounts Payable account|The AP account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount + tax amount|
|Expense account|The expense account specified in the AP bill line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|
|Expense account|The expense account specified in the AP bill line on the [Bills and Adjustments](AP_30_10_00.md) form|Non-deductible tax amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

**Parent topic:**[Applying a Deductible VAT](../UserGuide/Taxes_Applying_Deductible_VAT_Mapref.md)

