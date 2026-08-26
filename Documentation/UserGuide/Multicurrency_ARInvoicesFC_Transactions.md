# AR Invoices in Foreign Currencies: Generated Transactions {#_e895386a-de97-453a-9efd-48b731a481f0 .concept}

To be able to process an AR invoice in a foreign currency, you create and process an invoice and a payment. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_utw_3jv_vxb .section}

When you create and release a one-line AR invoice, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|0.00|
|Sales Revenue account|0.00|Amount|
|Rounding Gain/Loss account|Rounding loss amount|Rounding gain amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transactions Generated for an Invoice Payment {#section_xtw_3jv_vxb .section}

When you create and release a payment in a foreign currency and the currency rate of the payment is greater than that of the invoice, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount + realized gain amount|0.00|
|Accounts Receivable account|0.00|Amount|
|Realized Gain account|0.00|Realized gain amount|

When you create and release a payment in a foreign currency and the currency rate of the payment is less than that of the invoice, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount – realized loss amount|0.00|
|Accounts Receivable account|0.00|Amount|
|Realized Loss account|Realized loss amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Processing Invoices in Foreign Currencies](../UserGuide/Multicurrency_ARInvoicesFC_Mapref.md)

