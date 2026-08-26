# Direct Write-Offs: Generated Transactions {#_821c7064-9b35-4858-b621-d726b4344e7f .concept}

As you process direct write-offs, the system creates and releases the *Credit WO* and *Balance WO* documents. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for a Credit Write-Off { .section}

When you process a credit write-off, the system creates and releases a *Credit WO* document and generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer, specified on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount|0.00|
|Income account|The account specified for the *Credit Write-Off* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for a Balance Write-Off { .section}

When you create and release a balance write-off, the system creates and releases a *Balance WO* document and generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Balance Write-Off account|The account specified for the *Balance Write-Off* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form|Amount|0.00|
|Accounts Receivable account|The AR account of the customer, specified on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Processing Direct Write-Offs](../UserGuide/Finance_Direct_Write-Offs_Mapref.md)

