# AR Documents with VAT: Generated Transactions {#_9e8b64a1-9c69-4c47-b2c4-6b4e52936559 .concept}

As you process AR documents with VATs, you create and process an AR invoice and a credit memo. To update customer balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_jjl_fjv_vxb .section}

When you create and release an AR invoice, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount + tax amount|0.00|
|Asset/income account|The sales account specified for the non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or for the document line on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|0.00|Amount|
|Tax Payable account|The Tax Payable account of the VAT applied to the document, specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form.

## Transaction Generated for a Credit Memo {#section_mjl_fjv_vxb .section}

When you create and release a credit memo, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Asset/income account|The sales account specified for the non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or for the document line on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|Amount|0.00|
|Tax Payable account|The Tax Payable account of the VAT applied to the document, specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount|0.00|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Amount + tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form.

**Parent topic:**[Processing AR Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_ARDocs_with_VAT_Mapref.md)

