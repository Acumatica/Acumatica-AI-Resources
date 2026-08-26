# Purchases of Stock Items: Generated Transactions {#_ac5ef55a-9fc9-4a8b-ac25-6b22618a71ba .concept}

To process a purchase of items, you create a purchase order and process a purchase receipt and an AP bill. On release of purchase receipt, an inventory receipt transaction is generated and released. On release of the AP bill and inventory receipt, the system generates GL transactions described in the following sections.

## Transactions Generated on Inventory Receipt Release { .section}

When an inventory receipt generated from a purchase receipt is released, the system generates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Item|Amount|0.00|
|PO Accrual account|Item|0.00|Amount|

You can view the reference number of the GL batch generated for a particular inventory receipt in the **Batch Nbr.** box on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated on AP Bill Release { .section}

When an accounts payable bill prepared for a purchase order \(or for purchase receipt\) is released, the system creates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|0.00|Amount|
|PO Accrual account|Item|Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Purchases of Stock Items](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_Mapref.md)

