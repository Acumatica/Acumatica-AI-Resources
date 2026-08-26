# Debit Adjustments in Foreign Currencies: Generated Transactions {#_aa796893-a48f-42ab-b96b-0e84fa7c2041 .concept}

To be able to decrease vendor balances in foreign currencies, you create and process debit adjustments. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for a Debit Adjustment {#section_ojy_3jv_vxb .section}

When you create and release a debit adjustment, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|Amount|0.00|
|Expense account|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transactions Generated for a Debit Adjustment Application Producing RGOL {#section_rjy_3jv_vxb .section}

When you release a debit adjustment application to a bill in a foreign currency, the difference in currency rates can produce realized gain or loss \(RGOL\).

The following GL transaction is generated if the application produced a realized gain.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|Gain amount|0.00|
|Realized Gain \(currency\) account|0.00|Gain amount|

The following GL transaction is generated if the application produced a realized loss.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|0.00|Loss amount|
|Realized Loss \(currency\) account|Loss amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Applying Debit Adjustments in Foreign Currencies to Bills](../UserGuide/Multicurrency_DebitAdjustment_Mapref.md)

