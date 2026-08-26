# Bill Prepayments: Generated Transactions {#_ff8188a3-3523-41b4-a99a-9defaf030f01 .concept}

When the prepayment is released, the system generates the following transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Vendor AP account or Prepayment account|Amount|0.00|

If you do not specify a separate account for prepayments, the vendor prepayments will be debited to the vendor AP account.

When a prepayment application is released, the system generates the following transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Prepayment account|0.00|Amount|
|Accounts Payable account|Amount|0.00|

When a refund for a prepayment is released, the system generates the following transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount|0.00|
|Vendor AP account or Prepayment account|0.00|Amount|

**Parent topic:**[Processing Prepayments for a Bill](../UserGuide/Finance_ProcessingPrepayments_Mapref.md)

