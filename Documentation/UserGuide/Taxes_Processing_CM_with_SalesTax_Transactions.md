# Credit Memos with Sales Taxes: Generated Transactions {#_bd147668-31bf-4989-a770-d6de8fd04b72 .concept}

When releasing a credit memo with a sales tax, the system records tax amounts to the GL account specified for a particular tax on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, and creates a GL batch shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|Amount + tax amount|
|Sales account \(Income account\)|Amount|00.00|
|Tax Payable account|Tax amount|00.00|

**Parent topic:**[Processing Credit Memos with Sales Taxes](../UserGuide/Taxes_Processing_CM_with_SalesTax_Mapref.md)

