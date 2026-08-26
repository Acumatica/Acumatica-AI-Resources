# Bills with Withholding Tax: Generated Transactions {#_025f1d73-6b1f-4ee2-b0d5-68a1a15415f3 .concept}

As you process a bill with a withholding tax applied, you create an AP bill and a payment. To update the vendor's balance, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill {#section_nqm_fjv_vxb .section}

When you create and release an AP bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The Expense account specified for the document line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|
|Accounts Payable account|The Accounts Payable account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for a Payment {#section_qqm_fjv_vxb .section}

When you create and release a payment, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The Accounts Payable account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount|0.00|
|Cash account|The cash account specified for the document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form|0.00|Amount—Tax Amount|
|Tax Payable account|The Tax Payable account specified for the withholding tax on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

**Parent topic:**[Processing AP Bills with Withholding Taxes](../UserGuide/Taxes_Processing_Bills_with_Withholding_Taxes_Mapref.md)

