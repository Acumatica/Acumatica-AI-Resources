# Expense Receipts with Corporate Cards: Generated Transactions {#_ac5ef55a-4321-4a8b-ac25-6b22618a71b1 .concept}

The release of an expense claim does not generate general ledger transactions or project transactions directly. When you release the expense claim, the system creates the corresponding accounts payable documents. On release of the accounts payable documents, the system generates the general ledger transactions. For the project-related lines of the AP documents, the system also generates project transactions.

## GL Transactions Generated on Release of a Cash Purchase { .section}

When a cash purchase related to an expense claim is released, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|The expense account|The inventory item|Amount|0.00|
|The liability account|The cash account of the corporate card|0.00|Amount|

You can view the details of the batch associated with the release of a cash purchase by clicking the link in the **Batch Nbr.** box on the **Financial** tab \(**GL Link** section\) of the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form. The system opens the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

If a cash purchase line is related to a project, on release of the cash purchase, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|The expense account|The inventory item|The project, project task, and cost code in the cash purchase line|Amount|0.00|
|The liability account|The cash account of the corporate card|*X* \(non-project code\)|0.00|Amount|

## GL Transactions Generated on Release of an AP Bill { .section}

When an accounts payable bill related to an expense claim is released, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|The expense account|The inventory item|Amount|0.00|
|The liability account|The AP bill|0.00|Amount|

If an accounts payable bill line is related to a project, on release of the bill, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|The expense account|The inventory item|The project, project task, and cost code in the bill line|Amount|0.00|
|The liability account|The AP bill|*X* \(non-project code\)|0.00|Amount|

You can view the details of the batch associated with the release of a bill by clicking the link in the **Batch Nbr.** box on the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The system opens the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## GL Transactions Generated on Release of an AP Debit Adjustment { .section}

When a debit adjustment related to an expense claim is released, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|The liability account|The AP account of the employee|Amount|0.00|
|The liability account|The cash account of the corporate card|0.00|Amount|

If a debit adjustment line is related to a project, on release of the debit adjustment, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|The liability account|The AP account of the employee|The project, project task, and cost code in the bill line|Amount|0.00|
|The liability account|The cash account of the corporate card|*X* \(non-project code\)|0.00|Amount|

You can view the details of the batch associated with the release of a debit adjustment by clicking the link in the **Batch Nbr.** box on the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The system opens the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transactions Generated on Release of the GL Batch { .section}

If a cash purchase line or bill line is related to a project, on release of this cash purchase or AP bill, in addition to the creation of a batch of general ledger transactions, the system also generates a batch of the project transactions shown in the following table.

|Project Budget Key|Account Group|Debit Account|Credit Account|Amount|
|------------------|-------------|-------------|--------------|------|
|The project, project task, inventory item, and cost code in the GL transaction|The account group mapped to the expense account|The expense account in the GL transaction|Empty|Amount|

You can review the created transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transactions created on release of the accounts payable bill or cash purchase by the reference number of the document in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Processing Expense Receipts with Corporate Cards](../UserGuide/TimeExpenses_Expense_Receipts_Mapref.md)

