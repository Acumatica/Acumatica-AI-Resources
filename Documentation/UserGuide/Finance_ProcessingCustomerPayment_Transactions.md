# Payments with Write-Offs: Generated Transactions {#_e0f0286b-1d36-4672-9cec-3301818de596 .concept}

When you release a payment, its application, and a write-off \(if applicable\), the system generates a GL transaction to update the involved asset accounts with the journal entries related to the payment.

The following payment-related transaction will be recorded to the general ledger when a payment with a credit write-off is released. If there is no credit write-off, the third journal entry is omitted.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts Receivable account|0.00|Invoice amount|
|Income account set up for credit write-offs|0.00|Write-off amount|

The following payment-related transaction will be recorded to the general ledger when a payment with a balance write-off is released. If there is no balance write-off, the third journal entry is omitted.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts Receivable account|0.00|Invoice amount|
|Expense account set up for balance write-offs|Write-off amount|0.00|

You can view the batch details by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which causes the system to open the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\).

**Parent topic:**[Processing Payments with Write-Offs](../UserGuide/Finance_ProcessingCustomerPayment_Mapref.md)

