# AP Bills in Foreign Currencies: Generated Transactions {#_90b9a7e5-a0b0-4fe0-99e3-9b48799e8b13 .concept}

To be able to process AP bills in a foreign currency, you create and process a bill and a payment. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill {#section_dzx_3jv_vxb .section}

When you create and release a one-line bill, the following transaction will be recorded to the general ledger when the bill is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|0.00|Amount|
|Expense account|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transactions Generated for a Bill Payment {#section_gzx_3jv_vxb .section}

When you create and release a payment in a foreign currency and the currency rate of the payment is greater than that of the bill, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount + realized gain amount|0.00|
|Realized Gain account|0.00|Realized gain amount|

When you create and release a payment in a foreign currency and the currency rate of the payment is less than that of the bill, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount + realized loss amount|
|Accounts Payable account|Amount|0.00|
|Realized Loss account|Realized loss amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Processing Bills in Foreign Currencies](../UserGuide/Multicurrency_APBillsFC_Mapref.md)

