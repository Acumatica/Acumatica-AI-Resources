# Intercompany Sales: Generated Transactions {#_2b09d4c9-c4a8-4e02-812e-99906a413ce6 .concept}

As you perform intercompany sales, you create and process an AR invoice. To update the account balances, the system generates and posts the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_a1s_4jv_vxb .section}

When you create and release an AR invoice, the system generates the following general ledger transaction:

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*19010 - Accounts Receivable - Related Company*|Amount|00.00|
|*SWEETEQUIP* \(Selling branch\)|*43000 - Related Company Sales*|00.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for an AP Bill {#section_d1s_4jv_vxb .section}

When the system creates an AP bill based on the AR invoice you created, the system generates the following general ledger transaction after release of this bill:

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*26010 - Accounts Payable - Related Company*|00.00|Amount|
|*MHEAD* \(Purchasing branch\)|*53100 - Intercompany Expenses*|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transaction Generated for an AP Payment {#section_g1s_4jv_vxb .section}

When you create and release an AP payment to pay the automatically generated AP bill, the system generates the following general ledger transaction:

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*10200 - Company Checking Account*|00.00|Amount|
|*MHEAD* \(Purchasing branch\)|*26010 - Accounts Payable - Related Company*|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

## Transaction Generated for an AR Payment {#section_j1s_4jv_vxb .section}

When you create and release an AR payment for an intercompany AR invoice, the system generates the following general ledger transaction:

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*10200 - Company Checking Account*|Amount|00.00|
|*SWEETEQUIP* \(Selling branch\)|*19010 - Accounts Receivable - Related Company*|00.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

**Parent topic:**[Processing Intercompany Sales](../UserGuide/Finance_Intercompany_Sales_Mapref.md)

