# Applying Payments to Particular Lines: Generated Transactions {#_594daaa4-765e-4331-bab7-e686c2de2af5 .concept}

As you apply payments to particular lines of AP documents, you create and process payments. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill { .section}

When you create and release an AP bill paid by line, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The vendor's setting specified in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Expense account|The vendor's setting specified in the **Expense Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form|Amount|0.00|

On the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for a Payment { .section}

When you create and release a payment that pays a bill partially or in full, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Checking account|The GL account related to the checking account specified for the payment method on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form|0.00|Amount|
|Accounts Payable account|The vendor's setting specified in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount|0.00|

On the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

