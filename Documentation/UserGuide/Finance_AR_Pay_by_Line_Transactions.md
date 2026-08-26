# Applying AR Payments to Particular Lines: Generated Transactions {#_32847cfa-be2a-4e66-a813-ade4e15d7b05 .concept}

As you apply payments to particular lines of AR documents, you create and process payments. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice { .section}

When you create and release an AR invoice paid by line, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The customer's setting specified in the **AR Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|Document amount|0.00|
|Sales Revenue account|The customer's setting specified in the **Sales Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form|0.00|Line 1 amount|
|Sales Revenue account|The customer's setting specified in the **Sales Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form|0.00|Line 2 amount|

On the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for an AR Payment { .section}

When you create and release a payment that pays a invoice partially or in full, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Checking account|The GL account related to the checking account specified for the payment method on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form|Amount|0.00|
|Accounts Receivable account|The customer's setting specified in the **AR Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Amount|

On the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Applying Payments to Particular Lines of AR Documents](../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md)

