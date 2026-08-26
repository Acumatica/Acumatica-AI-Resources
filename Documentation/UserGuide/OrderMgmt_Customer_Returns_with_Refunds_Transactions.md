# Customer Returns with Refunds: Generated Transactions {#_c166ce94-72de-4f27-8e94-0977a02b09ae .concept}

As you process a customer return with a refund, you create and process a refund and a credit memo. To update customer balances and track the movements of items, the system generates the GL transactions described in the following sections.

## Transactions Generated for a Refund { .section}

When you create and release a refund, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|The default cash account for the payment method|0.00|Amount|
|Accounts Receivable account|Settings on the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Transactions Generated for a Credit Memo { .section}

When you create and release a credit memo, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable|Settings on the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Amount|
|Sales Account|Settings on the [Customers](AR_30_30_00.md) form|Amount|0.00|

The system also releases an inventory issue, which generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory/Accrual account|Settings on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|Amount|0.00|
|COGS/Expense account|Settings on the [Posting Classes](IN_20_60_00.md) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form.

**Parent topic:**[Processing Customer Returns with Refunds](../UserGuide/OrderMgmt_Customer_Returns_with_Refunds_Mapref.md)

