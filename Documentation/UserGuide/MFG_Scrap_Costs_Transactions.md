# Scrap Cost Calculation: Generated Transactions {#_03732932-d80e-492e-b869-07a3d947cef2 .concept}

If the system is configured so that scrap costs are posted to a specific GL account or a scrapped quantity is moved to a specific warehouse, when you process production orders and the related transactions to record scrap costs, the system also updates GL balances. Details about the transactions are described in the following sections.

## Transactions Generated for Written-Off Scrap Costs { .section}

When a scrap action for an operation of a production order is *Write Off* and a shop-floor employee enters the scrap quantity in a labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form, the system creates a WIP adjustment transaction on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form to move the scrap cost from the Work in Process GL account to a Scrap Expense GL account. For this transaction, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Scrap Expense|The reason code dedicated for scrap specified in the transaction|Amount|*0.00*|
|Work in Process|Settings of the production order|*0.00*|Amount|

You can view the reference number of the GL batch in the **GL Batch Nbr** column \(which is hidden by default\) on the [WIP Adjustment](AM_30_80_00.md) form.

## Transactions Generated for Quarantined Scrap { .section}

When a scrap action for an operation of a production order is *Quarantine* and a shop-floor employee enters the scrap quantity in a labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form, the system creates the following transactions:

-   A WIP adjustment transaction on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form to move the scrap cost from the Work in Process GL account to a Scrap Expense GL account
-   An inventory receipt transaction on the [Receipts](IN_30_10_00.md) \(IN301000\) form to record the movement of the scrapped items from the shop floor to the warehouse and warehouse location specified in the labor or move transaction.

For the movement of the scrap cost, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Scrap Expense|The reason code dedicated for scrap specified in the transaction|Amount|*0.00*|
|Work in Process|Settings of the production order|*0.00*|Amount|

You can view the reference number of the GL batch in the **GL Batch Nbr** column \(which is hidden by default\) on the [WIP Adjustment](AM_30_80_00.md) form.

For the movement of the scrapped quantity to a warehouse, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory|Settings of the item being produced|Amount|*0.00*|
|Scrap Expense|The reason code dedicated for scrap specified in the transaction|*0.00*|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Receipts](IN_30_10_00.md) form.

If a cost of a production order is calculated by using the *Standard* costing method, the system generates a batch of the general ledger transactions for the movement of the scrapped quantity to a warehouse, as shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory|Settings of the item being produced|Scrap cost calculated by using the standard item cost|*0.00*|
|Standard Cost Variance|Settings of the item being produced|Variance between the scrap cost in the production order and the scrap cost calculated by using the standard item cost|*0.00*|
|Scrap Expense|The reason code dedicated for scrap specified in the transaction|*0.00*|Scrap cost applied to a production order|

You can view the reference number of the GL batch on the **Financial** tab of the [Receipts](IN_30_10_00.md) form.

**Parent topic:**[Calculating Costs of Scrapped Items](../UserGuide/MFG_Scrap_Costs_Mapref.md)

