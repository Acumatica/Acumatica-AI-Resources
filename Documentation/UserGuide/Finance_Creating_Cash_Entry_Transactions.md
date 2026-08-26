# Cash Entries: Generated Transactions {#_7aa99d3e-014a-422a-84e8-512aec50b54d .concept}

When a cash entry is released, its status changes to *Released* and the system generates a batch to be posted to the general ledger.

The system updates the accounts involved with the transactions as shown in the following tables, based on whether the cash transaction is of the *Receipt* or *Disbursement* type.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount|0.00|
|Offset account|0.00|Amount|

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Offset account|Amount|0.00|

**Parent topic:**[Processing Cash Entries](../UserGuide/Finance_Creating_Cash_Entry_Mapref.md)

