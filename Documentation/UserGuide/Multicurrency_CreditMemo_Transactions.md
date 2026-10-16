# Credit Memos in Foreign Currencies: Generated Transactions

To be able to decrease customer balances in foreign currencies, you create and process credit memos. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for a Credit Memo

When you create and release a credit memo, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|0.00|Amount|
|Sales account|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transactions Generated for a Credit Memo Application Producing RGOL

When you release a credit memo application to an invoice in a foreign currency, the difference in currency rates can produce a realized gain or loss \(RGOL\).

The following GL transaction is generated if the application produced a realized gain.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Gain amount|0.00|
|Realized Gain/Loss account|0.00|Gain amount|

The following GL transaction is generated if the application produced a realized loss.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|0.00|Loss amount|
|Realized Gain/Loss account|Loss amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Applying Credit Memos in Foreign Currencies to Invoices](../UserGuide/Multicurrency_CreditMemo_Mapref.md)

