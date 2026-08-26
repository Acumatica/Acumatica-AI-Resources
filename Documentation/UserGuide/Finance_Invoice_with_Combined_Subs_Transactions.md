# Invoice with Combined Subaccounts: Generated Transactions {#_13b8d884-5b07-4ce0-b6ed-b18eb8349c9d .concept}

When you release an invoice, the system generates a transaction to reflect the sale in the general ledger. The invoice includes all the information the system needs to generate the transaction.

You can view the details of the transaction associated with the release of an invoice by clicking the link in the **Batch Nbr.** box on the **Financial Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

The following accounts are usually involved:

-   The asset account, which is specified in the **AR Account** box on the **Financial Details** tab
-   The income account specified for each line in the **Account** column on the **Document Details** tab

The subaccounts, which are combined according to the mask specified in the **Combine Sales Sub. From** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, are specified for the lines with the income account.

For a one-line invoice, the following transactions will be recorded to the general ledger when the invoice is released.

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|Accounts Receivable account|*000-000*|230.00|0.00|
|Sales account|*NSS-SLS*|0.00|230.00|

**Parent topic:**[Processing an Invoice with Combined Subaccounts](../UserGuide/Finance_Invoice_with_Combined_Subs_Mapref.md)

