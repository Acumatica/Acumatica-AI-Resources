# Production Processing: Generated Transactions {#_465cf617-4e3b-4272-98df-80ece66d3a7a .concept}

As you perform item production, you create and process a production order and the related transactions to track the movement of produced items and used components between a work center and a warehouse, to record item costs \(such as labor, tools, and overhead\), and to update the GL balances; details about the transactions are described in the following sections.

For information about the unified processing of inventory transactions, see [Production Processing: Processing of Inventory Transactions](MFG_Production_Order_Processing_Inventory_Transactions.md).

## A Material Transaction and Related Transactions { .section}

You create a material transaction on the [Materials](AM_30_00_00.md) \(AM300000\) form when you need to issue materials to produce items for a production order. When you release the material transaction, the system creates an inventory issue transaction on the [Issues](IN_30_20_00.md) \(IN302000\) form and releases it; you can view the reference number of the issue in the **IN Ref. Nbr.** column of the [Materials](AM_30_00_00.md) form. For the inventory issue transaction, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|Amount|0.00|
|Inventory|Depends on the settings of the posting class of the material|0.00|Amount|

## A Labor Transaction and Related Transactions { .section}

You create a labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form when you need to record direct labor costs \(such as working hours spent for item production\) and, optionally, the produced quantity of items or indirect labor costs. When you release the labor transaction that records direct or indirect labor costs, the system creates a cost transaction on the [Cost Transactions](AM_30_90_00.md) \(AM309000\) form and releases it. For the cost transaction, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|Amount|0.00|
|Direct Labor \(if direct labor is recorded\)|Labor code settings on the [Labor Codes](AM_20_65_00.md) \(AM206500\) form|0.00|Amount|
|Indirect Labor \(if indirect labor is recorded\)|Labor code settings on the [Labor Codes](AM_20_65_00.md) form|0.00|Amount|

When you record both labor and the produced item quantity in the labor transaction, the system includes in the cost direct labor costs, indirect labor costs \(if recorded\), and other costs involved in item production, such as machine, tool, and overhead costs, which are specified on the [Work Centers](AM_20_70_00.md) \(AM207000\) form. The batch of the general ledger transactions generated for the cost transaction may include the transactions listed in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|Amount|0.00|
|Direct Labor|Labor code settings on the [Labor Codes](AM_20_65_00.md) form|0.00|Amount|
|Indirect Labor|Labor code settings on the [Labor Codes](AM_20_65_00.md) form|0.00|Amount|
|Tool Costs|Tool settings on the [Tools](AM_20_55_00.md) \(AM205500\) form|0.00|Amount|
|Machine Costs|Machine settings on the [Machines](AM_20_45_00.md) \(AM204500\) form|0.00|Amount|
|Fixed Overhead Costs|Overhead settings on the [Overhead](AM_20_25_00.md) \(AM202500\) form|0.00|Amount|
|Variable Overhead Costs|Overhead settings on the [Overhead](AM_20_25_00.md) form|0.00|Amount|

To track the movement of the produced items to a warehouse, the system creates an inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form, releases the receipt, and creates and releases another batch of general ledger transactions, which are displayed in the following table. You can view the reference number of the inventory issue in the **IN Ref. Nbr.** column on the [Labor](AM_30_10_00.md) form.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|0.00|Amount|
|Inventory|Depends on the settings of the posting class of the produced item|Amount|0.00|

## A Move Transaction and Related Transactions { .section}

You create a move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form when you need to record the movement of produced items to a warehouse. When you release the move transaction, the system creates an inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form and releases it; you can view the reference number of the receipt in the **IN Ref. Nbr.** column on the [Move](AM_30_20_00.md) form. For the inventory receipt, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|0.00|Amount|
|Inventory|Depends on the settings of the posting class of the produced item|Amount|0.00|

If tools or machines are involved in the production of the item, the system also creates a cost transaction on the [Cost Transactions](AM_30_90_00.md) \(AM309000\) form and releases it. For the cost transaction, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order|Amount|0.00|
|Tool Costs|Tool settings on the [Tools](AM_20_55_00.md) \(AM205500\) form|0.00|Amount|
|Machine Costs|Machine settings on the [Machines](AM_20_45_00.md) \(AM204500\) form|0.00|Amount|

## Transactions Generated for a WIP Adjustment { .section}

You can manually adjust costs for a production order by using the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form. When you release a WIP adjustment, the system creates a batch of the general ledger transactions listed in the following table. You can find the reference number of the GL batch in the **GL Batch Nbr.** column.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process|Settings of the production order specified in the WIP adjustment line|Amount|0.00|
|Account|The user-specified account, which is one of the following:-   The WIP Variance account specified for the production order \(inserted by default\)
-   The account associated with the reason code specified in the WIP adjustment line
-   Any other account specified in the **Account** column in the WIP adjustment line

|0.00|Amount|

## Transactions Generated on the Close of a Production Order { .section}

You close a production order on the [Close Production Orders](AM_50_60_00.md) \(AM506000\) form when the quantity of the item in the order is produced in full. \(Any number of production orders can be closed on this form.\) If the balance of the Work in Process account is nonzero, the system creates an adjustment on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form and the related general ledger batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Reversal of Production-Related Transactions { .section}

You can reverse all production transactions that you add manually \(such as labor and move\) by entering a negative quantity or hours on the form that you have used to create the transactions. The easiest way to accomplish this with a minimum of typing is to find the original transaction and create a new transaction by copying its settings. You change the appropriate transaction line quantities or hours to a negative value, and you delete any other lines that you do not need to correct. If batch control totals are used, they must be negative. Then you release the new batch.

For information about reversing production receipts, see [Reversal of Production Receipts](MFG_PM_NegativeMove.md).

**Attention:** You cannot manually reverse cost transactions because they are created automatically when you release other production transactions.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

