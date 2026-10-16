# AP Documents with VAT: Generated Transactions

As you process AP documents with VATs, you create and process an AP bill and a debit adjustment. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill

When you create and release an AP bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The Expense account specified for the non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or for the document line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|
|Tax Claimable account|The Tax Claimable account of the VAT applied to the document, specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount|0.00|
|Accounts Payable account|The AP account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount + tax amount|

You can view the reference number of the GL batch **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for a Debit Adjustment

When you create and release a debit adjustment, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The AP account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount + tax amount|0.00|
|Expense account|The Expense account specified for the non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or for the document line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|0.00|Amount|
|Tax Claimable account|The Tax Claimable account of the VAT applied to the document, specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

**Parent topic:**[Processing AP Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_APDocs_with_VAT_Mapref.md)

