# Multiple Bill Payments: Generated Transactions

When a payment is released, a batch is created with transactions reducing the balances of the cash account and the vendor's accounts payable account.

**Attention:** If the payment is released at the proper time, before the cash discount date, a cash discount can be applied \(and deducted from the payment amount\). This business process does not cover cash discounts.

Releasing an AP payment creates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount|0.00|

**Parent topic:**[Paying Multiple AP Bills](../UserGuide/Finance_PayingMultipleBills_Mapref.md)

