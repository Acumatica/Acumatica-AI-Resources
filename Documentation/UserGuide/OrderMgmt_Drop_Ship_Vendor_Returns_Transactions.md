# Drop-Ship Vendor Returns: Generated Transactions {#_43c6584b-be99-4486-9901-9c8efa241736 .concept}

When you process a drop-ship vendor return, you create and process a debit adjustment and credit memo. To update customer and vendor balances, the system generates the GL transactions described in the following sections.

## Transactions Generated for a Debit Adjustment { .section}

When you create and release a debit adjustment, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|Amount|0.00|
|Purchase Accrual account|Settings on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|0.00|Amount|

## Transactions Generated for a Credit Memo { .section}

When you create and release a credit memo, the system releases an inventory issue, which generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Purchase Accrual account|Settings on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|Amount|0.00|
|COGS account|Settings on the [Posting Classes](IN_20_60_00.md) form|0.00|Amount|

**Parent topic:**[Processing Drop-Ship Vendor Returns](../UserGuide/OrderMgmt_Drop_Ship_Vendor_Returns_Mapref.md)

