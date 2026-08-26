# Multicurrency Payment of Invoices: Generated Transactions {#_5bd03b84-4c0d-44af-8771-ecbbff8b84ae .concept}

To be able to pay an AR invoice in a foreign currency by using the base currency or another foreign currency, you create and process an invoice and a payment. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_jnx_3jv_vxb .section}

When you create and release a one-line AR invoice, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|0.00|
|Sales Revenue account|0.00|Amount|
|Rounding Gain/Loss account|Rounding loss amount|Rounding gain amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transactions Generated for an Invoice Payment {#section_mnx_3jv_vxb .section}

When you create and release a payment in the base currency, which was converted at a currency rate greater than that of the invoice, the system produces a positive RGOL amount and generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts Receivable account|0.00|Invoice amount|
|Realized Gain account|0.00|Realized gain amount|

When you create and release a payment in the base currency, which was converted at a currency rate less than that of the invoice, the system produces a negative RGOL amount and generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts Receivable account|0.00|Invoice amount|
|Realized Loss account|Realized loss amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Paying Multicurrency Invoices](../UserGuide/Multicurrency_ARInvoiceByBaseCurrency_Mapref.md)

