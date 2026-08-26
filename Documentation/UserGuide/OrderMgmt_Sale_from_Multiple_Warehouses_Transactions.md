# Sales from Multiple Warehouses: Generated Transactions {#_7c6ae715-1afd-4a5e-9efc-ceb82df3aafd .concept}

To be able to process a sales order with items from multiple warehouses, you create and process a transfer order. Processing a transfer order includes initially creating a shipment of the *Transfer* type and the related two-step inventory transfer transaction; it then involves creating a transfer receipt and the related inventory receipt transaction. To record the movements of items between warehouses in the general ledger, the system generates the GL transactions described in the following sections.

## Transactions Generated for the Inventory Transfer { .section}

When you create and release a two-step transfer, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Posting class settings on the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) \(IN206000\) form|0.00|COGS amount|
|In-Transit account|Inventory preferences on the [Inventory Preferences](../Shared/../UserGuide/IN_10_10_00.md) \(IN101000\) form|COGS amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Transfers](IN_30_40_00.md) \(IN304000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for the Inventory Receipt { .section}

After you have received the goods, you need to create an inventory receipt to record receiving items in the destination warehouse. When this inventory receipt is released, the system generates a batch of the following GL transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|In-Transit account|In-Transit layer \(that is, the account specified in the inventory transfer\)|0.00|COGS amount|
|Inventory account|Posting class settings on the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) \(IN206000\) form|COGS amount|0.00|

You can find the reference number of the GL batch on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Sales from Multiple Warehouses](../UserGuide/OrderMgmt_Sale_from_Multiple_Warehouses_Mapref.md)

