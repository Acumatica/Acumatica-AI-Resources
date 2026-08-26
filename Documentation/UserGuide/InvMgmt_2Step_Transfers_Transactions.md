# Two-Step Transfers: Generated Transactions {#_09c0b607-65bb-4e6e-887d-19def37c8d1e .concept}

To track a movement of stock items between warehouses, you create and release a two-step transfer on the [Transfers](IN_30_40_00.md) \(IN304000\) form and a related inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form. To track these movements in a general ledger the system generates GL transactions described in the following section.

## Transactions Generated for Two-Step Transfers { .section}

When you create and release a two-step transfer, the system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Posting class settings on the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) \(IN206000\) form|0.00|COGS amount|
|In-Transit account|Inventory preferences on the [Inventory Preferences](../Shared/../UserGuide/IN_10_10_00.md) \(IN101000\) form|COGS amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Transfers](IN_30_40_00.md) \(IN304000\) form.

**Tip:** If the transfer is performed between warehouses in different companies, the system generates intercompany transactions when you release the two-step transfer and links these transactions to the transfer.

As a result of a two-step transfer being released, the on-hand quantity of the items in the source warehouse has been decreased.

After you have released the two-step transfer, you need to create an inventory receipt to record receiving items in the destination warehouse. When an inventory receipt is released, the system generates a batch of the following GL transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|In-Transit account|In-Transit layer \(that is, the account specified in the inventory transfer\)|0.00|COGS amount|
|Inventory account|Posting class settings on the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) \(IN206000\) form|COGS amount|0.00|

You can find the reference number of the GL batch on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form.

As the result of the receipt being released, the on hand quantity of the items in the destination warehouse has been increased, as you can view on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.

**Parent topic:**[Processing Two-Step Inventory Transfers](../UserGuide/InvMgmt_2Step_Transfers_Mapref.md)

