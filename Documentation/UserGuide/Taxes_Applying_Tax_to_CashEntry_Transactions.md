# Cash Entries with Taxes: Generated Transactions {#_4463c5a8-6641-4db0-a59a-7b6724d8644b .concept}

For cash transactions created in the cash management subledger, the system records tax amounts to the GL account specified for a particular tax on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, as shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Checking account|Amount + tax amount|00.00|
|Tax Payable account|00.00|Tax amount|
|Sales account|00.00|Amount|

If taxes are applied to a cash transaction of the *Receipt* or *Disbursement* type, the system generates the following GL transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount + tax amount|0.00|
|Offset account|0.00|Amount|
|Tax Payable account|0.00|Tax amount|

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount + tax amount|
|Offset account|Amount|0.00|
|Tax Claimable account|Tax amount|0.00|

**Parent topic:**[Processing Cash Entries with Taxes](../UserGuide/Taxes_Applying_SalesTax_to_CashEntry_Mapref.md)

