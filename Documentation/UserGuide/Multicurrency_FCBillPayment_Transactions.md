# Multicurrency Payment of Bills: Generated Transactions {#_c021b61c-86e7-4588-9cb8-b05d187194f8 .concept}

To be able to pay an AP bill in a foreign currency by using the base currency or another foreign currency, you create and process a bill and a payment. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill {#section_cpy_3jv_vxb .section}

When you create and release a one-line AP bill, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|0.00|Amount|
|Expense account|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transactions Generated for a Bill Payment {#section_fpy_3jv_vxb .section}

When you create and release a payment in a foreign currency for a bill in the base currency, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount|0.00|
|Realized Gain/Loss \(bill currency\) account|Realized loss amount|Realized gain amount|

When you create and release a payment in a foreign currency for a bill in another foreign currency, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount|0.00|
|Realized Gain/Loss \(payment currency\) account|Realized loss amount|Realized gain amount|

**Parent topic:**[Paying Multicurrency Bills](../UserGuide/Multicurrency_FCBillPayment_Mapref.md)

