# Funds Transfers: Generated Transactions {#_cf225191-f9ad-4b2b-b953-015387f1e082 .concept}

When you release a funds transfer, its status changes to *Released*, and the system generates the following batch of transactions to be posted to the general ledger.

|Account|Debit|Credit|
|-------|-----|------|
|Source account|0.00|Transfer amount|
|Destination account|Transfer amount|0.00|

The system can generate separate transfer-in and transfer-out general ledger batches for a funds transfer. This can be done, for example, if the post periods of the transfer-out and transfer-in are different, the funds are first moved to the cash-in-transit account, and the funds are then moved from this account to the destination account.

|Account|Debit|Credit|
|-------|-----|------|
|Source account|0.00|Transfer amount|
|Cash-in-Transit account|Transfer amount|0.00|

|Account|Debit|Credit|
|-------|-----|------|
|Cash-in-Transit account|0.00|Transfer amount|
|Destination account|Transfer amount|0.00|

If you have added expenses for the funds transfer, the system generates a separate cash transaction when the funds transfer is released, and the following transactions are recorded to the general ledger.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Expense amount|
|Bank charges account|Expense amount|0.00|

**Parent topic:**[Performing Funds Transfers](../UserGuide/Finance_Processing_Funds_Transfers_Mapref.md)

