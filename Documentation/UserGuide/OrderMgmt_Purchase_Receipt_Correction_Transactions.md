# Purchase Receipt Correction: Generated Transactions {#_72c57925-02a5-4965-9581-f38676420dca .concept}

To correct a purchase receipt, you create and process a correction purchase receipt. To track the movements of items, the system generates the GL transactions described in the following sections.

## Transactions Generated for a Correction Purchase Receipt { .section}

On release of the correction receipt, the system generates a correction inventory issue transaction with lines that have the *Issue* and *Receipt* transaction type. Additionally, the system may include a line with the *Adjustment* type. When an inventory issue with lines of the *Issue*, *Receipt*, and *Adjustment* transaction types is released, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Depends on the option selected in the **Use Inventory/Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form for the item's posting class|Amount|0.00|
|PO accrual account|The account in the **Accrual Account** box on the **Details** tab of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) in the line of the correction purchase receipt|0.00|Amount|
|Inventory account|Depends on the option selected in the **Use Inventory/Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) form for the item's posting class|Amount|0.00|
|Adjustment account|Depends on the account specified in the **Purchase Receipt Correction Reason Code** box on the [Posting Classes](IN_20_60_00.md) form for the item's posting class|0.00|Amount|
|Inventory account|Inventory account used in the original inventory receipt for the item|0.00|Amount|
|PO accrual account|PO accrual account used in the original inventory receipt for the item|Amount|0.00|

On the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Correcting Purchase Receipts](../UserGuide/OrderMgmt_Correcting_Purchase_Receipt_Mapref.md)

