# Project Inventory Tracking: Generated Transactions {#_a02c589d-fcc5-4434-8149-06931572bb7e .concept}

The following sections describe the GL transactions and project transactions that are generated for sales and purchases of stock items and non-stock items requiring receipt for projects.

**Tip:** For the list of transactions that are generated for non-stock items not requiring receipt that are being purchased for projects, see [Purchasing Services for Projects: Generated Transactions](../Shared/../UserGuide/Projects_Project_Purchases_AP_Bill_Transactions.md).

## GL Transactions Generated on Release of an Inventory Receipt {#_94fcb4eb-9383-4a92-897e-7a46f6f66fed .section}

On release of a project-related purchase receipt with a stock item, the corresponding inventory receipt is created. When the inventory receipt is released, the system creates the following batch of general ledger transaction.

|Account|Source of Account|Project|Debit|Credit|
|-------|-----------------|-------|-----|------|
|Inventory account|Posting class of the item|*X* \(non-project code\)|Received amount \(quantity \* item price\)|0.00|
|PO accrual account|Posting class of the item|*X* \(non-project code\)|0.00|Received amount \(quantity \* item price\)|

On release of a project-related purchase receipt with a non-stock item requiring receipt, the corresponding inventory receipt is created. When the inventory receipt is released, the system creates the following batch of general ledger transaction.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|Expense account|Inventory item|Project, project task, and cost code in the inventory receipt line|Received amount \(quantity \* item price\)|0.00|
|Inventory account|Inventory item|*X* \(non-project code\)|0.00|Received amount \(quantity \* item price\)|

On the **Financial** tab of the [Receipts](../Shared/../UserGuide/IN_30_10_00.md) \(IN301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the general ledger transaction on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on Release of the Inventory Receipt { .section}

On release of the general ledger transaction which was created on release of the inventory receipt with a stock item, the system generates no project transaction.

On release of the general ledger transaction which was created on release of the inventory receipt with a non-stock item requiring receipt, the system generates the following project transaction.

|Project Budget Key|Account Group|Debit Account|Amount|
|------------------|-------------|-------------|------|
|Project, project task, inventory item, and cost code in inventory receipt line|Account group mapped to the Expense account of the item|Expense account of the item|Amount|

You can review the created project transaction on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box.

## GL Transactions Generated on Release of an Inventory Issue {#section_tvm_dbt_rqb .section}

On release of an inventory issue with a stock item issued for a project, the system generates a batch of general ledger transactions.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|PO Accrual account|Posting class of the item|*X* \(non-project code\)|0.00|Issued amount \(quantity \* item cost\)|
|Expense account|Reason code in the inventory issue line|Project, project task, and cost code in the inventory issue line|Issued amount \(quantity \* item cost\)|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](../Shared/../UserGuide/IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on Release of the Inventory Issue {#section_d51_s2t_rqb .section}

On release of the general ledger transaction created on release of the inventory issue with a stock item for project, the system generates the following project transaction that updates the project's actual amounts:

|Project Budget Key|Account Group|Debit Account|Amount|
|------------------|-------------|-------------|------|
|Project, project task, inventory item, and cost code in inventory issue line|Account group mapped to the GOGS account|COGS account of the item|Amount|

You can review the created project transaction on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

