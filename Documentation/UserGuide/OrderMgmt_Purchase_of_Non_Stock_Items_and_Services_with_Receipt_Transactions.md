# Purchases of Non-Stock Items and Services with Receipts: Generated Transactions {#_1c5cfef0-cae0-41af-a304-33698b0f6da0 .concept}

To process a purchase of non-stock items and services for which a receipt is required, you create an AP bill and a receipt. On release of these documents, the system generates GL transactions described in the following sections.

## Transaction Generated on AP Bill Release {#section_q5n_cks_hlb .section}

When an AP bill prepared for a purchase order \(or for purchase receipt\) is released, the system creates a batch of the following entries.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|0.00|Amount|
|PO Accrual account|Item|Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated on Release of an Inventory Receipt { .section}

When the inventory receipt for the purchase receipt is released, the system creates a batch of the following entries.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|Vendor|Amount|0.00|
|Inventory Purchase Accrual account|Item|0.00|Amount|

You can view the reference number of the GL batch generated for a particular receipt in the **Batch Nbr.** box on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

Your company may want to recognize expenses when a non-stock item is sold—that is, to post the item’s cost to an expense account when it is sold. To do this, you need to select *Sales* in the **Post Cost to Expenses On** box on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for the non-stock item. With this setting, if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the item is purchased, the system creates a batch of the following transactions on release of the inventory receipt. The Expense Accrual account is used instead of the Expense account. The item’s cost is posted to the Expense account on release of a sales invoice.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO Accrual account|Posting class settings on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|0.00|Amount|
|Expense Accrual account|The posting class settings on the [Posting Classes](IN_20_60_00.md) form|Amount|0.00|

If the *Inventory* feature is disabled, on release of an AP bill, the system creates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|0.00|Amount|
|Expense Accrual account|Item|Amount|0.00|

**Parent topic:**[Processing Purchases of Non-Stock Items and Services with Receipts](../UserGuide/OrderMgmt_Purchase_of_Non_Stock_Items_and_Services_with_Receipt_Mapref.md)

