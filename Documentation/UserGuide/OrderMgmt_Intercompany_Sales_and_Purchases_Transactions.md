# Intercompany Purchases and Returns: Generated Transactions {#_48845810-4bec-4a27-8d0c-cfa9be195e20 .concept}

As you perform intercompany purchases and returns, you create and process a purchase order, a sales order, a shipment, a purchase receipt, an AR invoice, and an AP bill. When you release the AR and AP documents, the system updates the customer's and vendor's balances. Inventory documents are used to track item movements. To update the account balances, the system generates and posts the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice { .section}

When you create and release an AR invoice, the system generates the following general ledger transaction.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*19010 - Accounts Receivable - Related Company*|Amount|00.00|
|*SWEETEQUIP* \(Selling branch\)| |00.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form and on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for an Issue { .section}

When the goods are issued from the warehouse of the selling branch, the system generates the following general ledger transaction.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*12100 - Inventory Asset*|0.00|Amount|
|*SWEETEQUIP* \(Selling branch\)|*50000 - COGS Inventory*|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form.

## Transaction Generated on Release of PO Receipt {#section_oxc_hg3_wvb .section}

When you process a purchase receipt, the system generates the following general ledger transaction on release of the inventory receipt.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*12700 - Inventory Asset for MHEAD warehouse*|Amount|00.00|
|*MHEAD* \(Purchasing branch\)|*20100 - Inventory Purchase Accrual*|00.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form.

## Transaction Generated for an AP Bill { .section}

When the system creates an AP bill based on the AR invoice you created, the system generates the following general ledger transaction after release of this bill.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*26010 - Accounts Payable - Related Company*|00.00|Amount|
|*MHEAD* \(Purchasing branch\)|*20100 - Inventory Purchase Accrual*|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transaction Generated on Release of PO Return { .section}

When you process a purchase return, the system generates the following general ledger transaction on release of the return.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*12700 - Inventory Asset for MHEAD warehouse*|00.00|Return amount|
|*MHEAD* \(Purchasing branch\)|*20100 - Inventory Purchase Accrual*|Return amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form.

## Transaction Generated for an SO Credit Memo { .section}

When you process a return of items, you create an SO credit memo. The system generates the following general ledger transaction after the release of the credit memo.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*19010 - Accounts Receivable - Related Company*|00.00|Return amount|
|*SWEETEQUIP* \(Selling branch\)|*43000 - Related Company Sales*|Return amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for a Sales Return { .section}

When you process the return of items to the warehouse of the selling branch, the system generates the following general ledger transaction.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*SWEETEQUIP* \(Selling branch\)|*12100 - Inventory Asset*|Return amount|00.00|
|*SWEETEQUIP* \(Selling branch\)|*50000 - COGS - Inventory*|00.00|Return amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form.

## Transaction Generated for a Debit Adjustment { .section}

When you process a return of items, after the creation of an AR credit memo to adjust the customer's balance, you create a debit adjustment to adjust the vendor's balance. The system generates the following general ledger transaction after the release of the debit adjustment.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD* \(Purchasing branch\)|*26010 - Accounts Payable - Related Company*|Return amount|00.00|
|*MHEAD* \(Purchasing branch\)|*20100 - Inventory Purchase Accrual*|00.00|Return amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Parent topic:**[Processing Intercompany Purchases and Returns](../UserGuide/OrderMgmt_Intercompany_Sales_and_Purchases_Mapref.md)

