# AP Bills: Generated Transactions {#_6cc123c9-d1a7-4b6b-8f03-1c16e1e301d5 .concept}

When you release an AP bill, the system generates a batch of transactions to record the liability to the general ledger. The AP bill includes all the information the system needs to generate the batch.

The following accounts are usually involved:

-   The liability account specified in the **AP Account** box on the **Details** tab
-   The expense account specified for each line in the **Account** column on the **Details** tab

You can view the details of the batch associated with the bill by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

For a one-line bill, the following transactions will be recorded to the general ledger when the bill is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|0.00|Amount|
|Expense account|Amount|0.00|

**Attention:** If the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the batch may contain an entry that records to the gain or loss rounding account the difference between the sum of the details and the document total.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

