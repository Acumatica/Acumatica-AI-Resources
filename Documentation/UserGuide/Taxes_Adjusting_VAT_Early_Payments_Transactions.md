# VAT for Early Payments: Generated Transactions {#_d141da93-5b6c-452a-90c4-6514a0c52eb6 .concept}

As you adjust VAT for early payments of AR invoices, you create and process a taxable AR invoice, a payment for this invoice with a cash discount, and a credit memo to adjust the VAT amount. To update the customer's balance and adjust the output taxes, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_fym_fjv_vxb .section}

When you create and release an AR invoice, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Total invoice amount|0.00|
|Sales account|The sales account of the non-stock item specified on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|0.00|Line amount|
|Tax Payable account|The tax payable account of the tax specified on the [Taxes](TX_20_50_00.md) \(TX205000\)|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for an AR Payment with a Cash Discount {#section_iym_fjv_vxb .section}

When you create and release a payment for the invoice within the cash discount period, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Checking account|The cash account specified for the payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form|Total payment amount|0.00|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Total payment amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

## Transaction Generated for a VAT Credit Memo {#section_lym_fjv_vxb .section}

When you create and release a credit memo to adjust the output VAT, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash Discount account|The Cash Discount account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Discount amount without the tax applied|0.00|
|Accounts Receivable account|AR account of the customer specified on the [Customers](AR_30_30_00.md) form|0.00|Amount of the given discount|
|Tax Payable account|The Tax Payable account of the tax specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Full tax amount–tax on discounted amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Adjusting VAT for Early Payments](../UserGuide/Taxes_Adjusting_VAT_Early_Payments_Mapref.md)

