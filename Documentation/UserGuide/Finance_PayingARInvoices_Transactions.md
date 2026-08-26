# Invoice Payments: Generated Transactions {#_09e2cd88-64d5-4fe5-9d07-df6f805fc2f0 .concept}

When you release a payment and its application, the system generates a general ledger batch to update the involved asset accounts with the payment transactions. The payment includes all the information the system needs to generate the batch. The following two accounts are usually involved:

-   The asset account specified in the **AR Account** box on the **Financial** tab
-   The cash account specified in the **Cash Account** box in the Summary area

The following payment transactions will be recorded to the general ledger when the payment is released.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts Receivable account|0.00|Payment amount|

You can view the batch details by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

