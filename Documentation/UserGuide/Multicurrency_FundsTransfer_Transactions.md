# Multicurrency Funds Transfers: Generated Transactions {#_fd9faab5-65f0-4b6d-8c38-389711382617 .concept}

The system always generates separate GL transactions for a multicurrency transfer. The following tables show the transactions recorded to the general ledger for the source and destination accounts.

|Account|Debit|Credit|
|-------|-----|------|
|Source account|0.00|Transfer amount|
|Cash-in-Transit account|Transfer amount|0.00|

|Account|Debit|Credit|
|-------|-----|------|
|Destination account|Transfer amount|0.00|
|Cash-in-Transit account|0.00|Transfer amount|

If a gain or loss is produced by a multicurrency transfer, the transactions shown in the following tables are recorded to the general ledger for the destination account, depending on whether a gain or loss is produced by the transfer—that is, whether the realized gain or loss \(RGOL\) is positive or negative.

|Account|Debit|Credit|
|-------|-----|------|
|Destination account|Transfer amount|0.00|
|Cash-in-Transit account|0.00|Transfer amount|
|Realized Gain/Loss account|0.00|RGOL amount|
|Cash-in-Transit account|RGOL amount|0.00|

|Account|Debit|Credit|
|-------|-----|------|
|Destination account|Transfer amount|0.00|
|Cash-in-Transit account|0.00|Transfer amount|
|Realized Gain/Loss account|RGOL amount|0.00|
|Cash-in-Transit account|0.00|RGOL amount|

**Parent topic:**[Processing Funds Transfers in Foreign Currencies](../UserGuide/Multicurrency_FundsTransfer_Mapref.md)

