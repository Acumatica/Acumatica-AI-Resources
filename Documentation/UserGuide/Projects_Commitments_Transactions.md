# Committed Costs: Generated Transactions {#_ac5ef55a-8481-4a8b-ac25-6b22618a71ba .concept}

When you process a purchase order from which commitments originate, you create purchase receipts \(for the stock items and non-stock items requiring receipt\) and accounts payable bills \(for all types of items\). On release of these documents, the system generates the GL and project transactions described in the following sections.

## GL Transactions Generated on Inventory Receipt Release { .section}

When an inventory receipt created on release of a purchase receipt prepared for a purchase order is released, the system creates a batch of the general ledger transactions shown in the table below.

The system uses the following accounts as the source of the debited account in the GL batch it creates:

-   The inventory account, which is specified for the posting class of a stock item in the **Inventory/Accrual Account** box on the **GL Accounts** tab of the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) \(IN206000\) form.
-   The expense account, which is specified for the posting class of a non-stock item that requires a purchase receipt in the **COGS/Expense Account** box on the **GL Accounts** tab of the [Posting Classes](../Shared/../UserGuide/IN_20_60_00.md) form.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO accrual account|Item|0.00|Amount|
|Inventory/expense account|Posting class of the item|Amount|0.00|

On the **Financial** tab of the [Receipts](../Shared/../UserGuide/IN_30_10_00.md) \(IN301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on Inventory Receipt Release { .section}

When a batch of general ledger transactions created on release of the inventory receipt is released, the system generates the project transaction shown in the following table.

|Debit Account|Credit Account|Source of Account|Amount|
|-------------|--------------|-----------------|------|
|Inventory/expense account|Empty|GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box.

## GL Transactions Generated on AP Bill Release { .section}

When an accounts payable bill prepared for a service line of a purchase order is released, the system creates a batch of the general ledger transactions shown in the following table.

The system uses the following accounts as the source accounts in the GL batch it creates:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts payable account|Vendor|0.00|Amount|
|Expense account|Item|Amount|0.00|

On the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on AP Bill Release { .section}

When a batch of general ledger transactions is created on release of an accounts payable bill, the system also generates the project transaction shown in the following table.

|Debit Account|Credit Account|Source of Account|Amount|
|-------------|--------------|-----------------|------|
|Expense account|Empty|GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transaction created on release of the accounts payable bill by the reference number of the AP bill in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Tracking Cost Commitments](../UserGuide/Projects_Commitments_Mapref.md)

