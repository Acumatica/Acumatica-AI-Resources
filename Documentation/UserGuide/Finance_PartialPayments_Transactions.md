# Partial Payments: Generated Transactions

To be able to partially pay bills, you create and process payment documents. To update vendor balances, the system generates the GL transaction described in the following section.

## Transaction Generated for a Partial Payment

When you create and release a payment, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Processing Partial Payments](../UserGuide/Finance_PartialPayments_Mapref.md)

