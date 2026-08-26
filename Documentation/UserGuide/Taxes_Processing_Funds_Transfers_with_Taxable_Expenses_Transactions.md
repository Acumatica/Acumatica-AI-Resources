# Funds Transfers with Taxable Fees: Generated Transactions {#_33b1e514-4462-4f80-a05c-88993bb16cae .concept}

To be able to perform funds transfers with taxable fees, you create and process the documents on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form. To track the movements of funds between cash accounts, the system generates GL transactions described in the following sections.

## Transaction Generated for a Funds Transfer with Taxable Expenses {#section_zkj_fjv_vxb .section}

When you create and release a funds transfer with a taxable service fee paid from the source account, the system generates the following GL transaction, if the applied tax is exclusive:

|Account|Debit|Credit|
|-------|-----|------|
|Source account|00.00|Transfer amount|
|Destination account|Transfer amount|00.00|
|Source account|00.00|Expense amount + tax amount|
|Expense account|Expense amount|00.00|
|Tax expense account|Tax amount|00.00|

**Attention:** The calculation rule specified for the tax applied in the above transaction on the [Taxes](TX_20_50_00.md) \(TX205000\) form is *Exclusive Document-Level*.

If the applied tax is inclusive, the system generates the following GL transaction:

|Account|Debit|Credit|
|-------|-----|------|
|Source account|00.00|Transfer amount|
|Destination account|Transfer amount|00.00|
|Source account|00.00|Expense amount|
|Expense account|Expense amount – tax amount|00.00|
|Tax expense account|Tax amount|00.00|

**Attention:** The calculation rule specified for the tax applied in the above transaction on the [Taxes](TX_20_50_00.md) form is *Inclusive Document-Level*.

You can view the reference number of the GL batch in the Summary area of the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form.

**Parent topic:**[Processing Funds Transfers with Taxable Fees](../UserGuide/Taxes_Processing_Funds_Transfers_with_Taxable_Expenses_Mapref.md)

