# Purchases to the Project Site with a Receipt: Generated Transactions {#_ded8a1e3-3152-427b-b00a-381fc54a0e92 .concept}

When you purchase items for a project that are drop-shipped to the project site and purchase receipts are processed, you create and process a purchase order of the *Project Drop-Ship* type. To update the vendor balance and record the incurred expenses to the cost budget of the project, the system generates the GL transactions and project transactions described in the following sections. These sections describe the transactions that are generated for a project in which project expenses are captured on release of the purchase receipt.

## GL Transactions Generated on Release of the Inventory Receipt {#_94fcb4eb-9383-4a92-897e-7a46f6f66fed .section}

An inventory receipt is created on release of a purchase receipt prepared for a purchase order. When this inventory receipt is released, the system creates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|PO Accrual account|Posting class of the item|*X* \(Non-project code\)|0.00|Amount|
|Expense account|Determined by the **Use Expense Account From** setting of the project|Project, project task, and cost code in the purchase order line|Amount|0.00|

On the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on Inventory Receipt {#_7f9dc79b-95dc-460d-b73a-31c065929f39 .section}

When the batch of general ledger transactions created on release of the inventory receipt is released, the system generates the project transaction shown in the following table.

|Project Budget Key|Account Group|Debit Account|Amount|
|------------------|-------------|-------------|------|
|Project, project task, inventory item, and cost code in the GL transaction|Account group mapped to the Expense account|Expense account in the GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box.

## GL Transactions Generated on Release of the AP Bill {#section_jrh_yvb_qqb .section}

When an accounts payable bill prepared for a purchase order is released, the system creates a batch of the general ledger transactions shown in the following table.

The system uses the following accounts as the source accounts in the GL batch it creates.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|Accounts Payable account|Vendor or vendor location|*X* \(Non-project code\)|0.00|Amount|
|PO Accrual account|Posting class of the item|*X* \(Non-project code\)|Amount|0.00|

On the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Purchasing Materials to Project Site with Receipt](../UserGuide/Projects_Purchase_with_Receipt_Mapref.md)

