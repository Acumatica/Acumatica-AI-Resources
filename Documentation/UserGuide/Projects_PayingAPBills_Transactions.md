# Vendor Payments for a Project: Generated Transactions

When an AP payment is released, a batch of general ledger transactions is created; the generated transactions reduce the balances of the cash account used for the payment and the vendor's accounts payable account.

|Account|Source of Account|Project|Debit|Credit|
|-------|-----------------|-------|-----|------|
|Cash account|Vendor|X \(non-project code\)|*0.00*|Payment amount|
|Accounts Payable|Vendor|X \(non-project code\)|Payment amount|*0.00*|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Paying AP Bills by Project](../UserGuide/Projects_PayingAPBills_Mapref.md)

