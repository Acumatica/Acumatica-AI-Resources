# Preparation of Dunning Letters: Generated Transactions {#_c4478a4b-22c2-4b2d-b9b1-4abb1090b38d .concept}

As you prepare dunning letters, depending on the system settings, the system can create and release dunning fee invoices. To update customer balances, when releasing a dunning fee invoice, the system generates the GL transactions described in the following sections.

## Transactions Generated for a Dunning Fee Invoice \(Without Tax\) {#section_w22_hjv_vxb .section}

When a dunning fee invoice is released, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Fee amount|0.00|
|Sales account|The Sales account of the dunning fee item specified on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|0.00|Fee amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transactions Generated for a Dunning Fee Invoice \(Tax Applied\) {#section_z22_hjv_vxb .section}

When a dunning fee invoice with a tax applied is released, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account of the customer specified on the [Customers](AR_30_30_00.md) \(AR303000\) form|Fee amount + tax amount|0.00|
|Sales account|The Sales account of the dunning fee item specified on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|0.00|Fee amount|
|Tax Payable account|The Tax Payable account of the applied tax of the customer's tax zone, which is specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

