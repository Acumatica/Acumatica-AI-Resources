# Invoices with Sales Taxes: Generated Transactions {#_ca2d7cca-6665-4717-9108-71ec9704b1b9 .concept}

For documents created in the AR subledger, the system records tax amounts to the GL account specified for a particular tax on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, as shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount + Tax amount|00.00|
|Sales account \(Income account\)|00.00|Amount|
|Tax Payable account|00.00|Tax amount|

You can review the generated transaction by clicking a link in the **Batch Nbr.** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

When you release a payment for an AR invoice with a cash discount, and the payment is within the cash discount period, the system generates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Company checking account|Payment amount \(invoice amount – cash discount amount\)|00.00|
|Accounts Receivable account|00.00|Invoice amount + tax amount|
|Cash Discount account|Cash discount amount|0.00|

You can review the generated transaction by clicking a link in the **Batch Nbr.** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Processing Invoices with Sales Taxes](../UserGuide/Taxes_Processing_Invoice_with_SalesTax_Mapref.md)

