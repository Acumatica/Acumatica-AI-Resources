# Voiding Payments: Generated Transactions {#_ad715a59-c6f1-46a5-b684-0895ac900741 .concept}

To update vendor balances and reverse the original transaction, the system generates the GL transaction described in the following section.

## Transaction Generated for a Voided Payment {#section_iyj_njv_vxb .section}

When you create and release a payment of the *Voided Payment* type, the system generates the following general ledger transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount|0.00|
|Accounts Payable|0.00|Amount|

You can view the reference number of the GL batch on the **Application History** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Voiding Payments](../UserGuide/Finance_VoidingChecks_Mapref.md)

