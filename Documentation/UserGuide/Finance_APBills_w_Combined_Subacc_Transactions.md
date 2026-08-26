# Bill with Combined Subaccounts: Generated Transactions {#_98013564-491a-4f61-b634-d8afafab959d .concept}

When you release an AP bill, the system generates a transaction to record the liability to the general ledger. The AP bill includes all the information the system needs to generate the transaction.

You can view the details of the transaction associated with the bill by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form.

The following accounts are usually involved:

-   The liability account specified in the **AP Account** box on the **Financial** tab
-   The expense account specified for each line in the **Account** column on the **Details** tab

The subaccounts, which are combined according to the mask specified in the **Combine Expense Sub. From** box on the [Accounts Payable Preferences](AP_10_10_00.md#) \(AP101000\) form, are specified for the lines with the expense account.

For a one-line bill, the following transactions are recorded to the general ledger when the bill is released.

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|Accounts Payable account|*000-000*|0.00|500.00|
|Expense account|*NSS-MKT*|500.00|0.00|

**Parent topic:**[Processing AP Bills with Combined Subaccounts](../UserGuide/Finance_APBills_w_Combined_Subacc_Mapref.md)

