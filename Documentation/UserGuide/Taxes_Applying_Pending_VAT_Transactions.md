# Applying a Pending VAT: Generated Transactions {#_de2ac41a-f46f-4814-a6f5-b368f401d855 .concept}

As you process documents with pending VAT, you create and process an AR invoice and an AR payment. When recognizing pending VAT, the system automatically generates a GL transaction. To update the customer's balance and calculate the pending VAT, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_ssp_fjv_vxb .section}

When you create and release an AR invoice with pending VAT, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount + tax amount|0.00|
|Sales account|The Sales account specified for the non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form or for the document line|0.00|Amount|
|Pending Tax Payable account|The Pending Tax Payable amount of the pending VAT specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for an AR Payment {#section_vsp_fjv_vxb .section}

When you create and release an AR payment for the invoice with pending VAT, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|The cash account of the customer specified for the payment method of the customer on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form|Payment amount|0.00|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Payment amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Transactions Generated When Pending VAT is Recognized {#section_ysp_fjv_vxb .section}

When you recognize pending VAT, the system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Pending Tax Payable account|The Pending Tax Payable account of the pending output VAT specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount|0.00|
|Tax Payable account|The Tax Payable account of the pending output VAT specified on the [Taxes](TX_20_50_00.md) form|0.00|Tax amount|

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax Claimable account|The Tax Payable account of the pending input VAT specified on the [Taxes](TX_20_50_00.md) form|Tax amount|0.00|
|Pending Tax Claimable account|The Pending Tax Claimable account of the pending input VAT specified on the [Taxes](TX_20_50_00.md) form|0.00|Tax amount|

## Example of GL Transactions Generated When Pending Taxes Are Processed {#section_atp_fjv_vxb .section}

This section provides an example of the GL transactions that the system generates when it processes an AR invoice that is subject to pending VAT.

Suppose your company issues a $1,000 invoice dated 01/01/2026 for services. The services are subject to a 7% VAT. When this invoice is released in the system, the system creates the following entries in the general ledger.

|**Account**|Date|Debit|Credit|
|-----------|----|-----|------|
|Accounts Receivable account|01/01/2026|1,070.00|0.00|
|Sales account|01/01/2026|0.00|1,000.00|
|Pending Tax Payable account|01/01/2026|0.00|70.00|

On 01/31/2026, you run the VAT recognition process. The system generates the following GL transaction once the VAT recognition is completed.

|**Account**|Date|Debit|Credit|
|-----------|----|-----|------|
|Pending Tax Payable account|01/31/2026|70.00|0.00|
|Tax Payable account|01/31/2026|0.00|70.00|

You can view the generated GL transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form by using the **Batch Number** link available in the table.

The amounts posted to the Tax Payable or Tax Claimable account will be included in the tax report, which you create it on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.

## Example of GL Transactions Generated When Partial Payment Has Been Applied {#section_gtp_fjv_vxb .section}

This section provides an example of the GL transactions that the system generates when a partial payment has been applied and recognized.

Suppose your company issues a $1,000 invoice dated 01/01/2026 for services. The services are subject to a 7% VAT, which should be recognized after the payment is received. When this invoice is recorded in the system, the system creates the following entries in the general ledger.

|**Account**|Date|Debit|Credit|
|-----------|----|-----|------|
|Accounts Receivable account|01/01/2026|1,070.00|0.00|
|Pending Tax Payable account|01/01/2026|0.00|70.00|
|Services account|01/01/2026|0.00|1,000.00|

On 01/20/2026, the customer pays $535, which is half of the amount it must pay for the services plus the $35 VAT amount \(7% of $500\). This VAT amount must be recognized and posted to the general ledger once this payment is processed. As a result, the system creates the following entries in the general ledger.

|**Account**|Date|Debit|Credit|
|-----------|----|-----|------|
|Pending Tax Payable account|01/20/2026|35.00|0.00|
|Tax Payable account|01/20/2026|0.00|35.00|

The tax report that is generated at the end of the period, on 01/31/2026, will include $35 of output VAT and $535 of taxable sales.

**Attention:** If the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system generates recognition entries in the currency of the document being paid by using the document's exchange rate.

**Parent topic:**[Applying a Pending VAT](../UserGuide/Taxes_Applying_Pending_VAT_Mapref.md)

