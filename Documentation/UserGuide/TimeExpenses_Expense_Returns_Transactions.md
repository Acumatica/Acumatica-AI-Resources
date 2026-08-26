# Expense Returns to Corporate Cards: Generated Transactions {#_cc074d58-de45-422f-9552-1ee1e4b10408 .concept}

To process a return to a corporate card, you create a negative expense receipt and then process an expense claim for it. The release of a negative expense claim does not generate general ledger transactions or project transactions directly. When you release the negative expense claim, the system creates the corresponding accounts payable document: a cash return. On release of the cash return, the system generates the general ledger transactions. For the project-related lines of the cash return, the system also generates project transactions.

## GL Transactions Generated on Release of a Cash Return { .section}

When a cash return related to an expense claim is released, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|The expense account|The inventory item|0.00|Return amount|
|The liability account|The cash account of the corporate card|Return amount|0.00|

You can view the details of the batch associated with the release of a cash return by clicking the link in the **Batch Nbr.** box on the **Financial** tab \(**GL Link** section\) of the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form. The system opens the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

If a cash return line is related to a project, on release of the cash return, the system generates a batch of the general ledger transactions shown in the table below.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|The expense account|The inventory item|The project, project task, and cost code in the cash return line|0.00|Return amount|
|The liability account|The cash account of the corporate card|*X* \(non-project code\)|Return amount|0.00|

## Project Transactions Generated on Release of the GL Batch { .section}

As described above, when you release the cash return that was created on release of a negative expense claim, the system generates a batch of GL transactions. If the cash return has any line associated with a project, the system also generates a batch of the project transactions shown in the following table.

|Project Budget Key|Account Group|Debit Account|Credit Account|Amount|
|------------------|-------------|-------------|--------------|------|
|The project, project task, inventory item, and cost code in the GL transaction|The account group mapped to the expense account|The expense account in the GL transaction|Empty|– Refund Amount|

You can review the created transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transactions created on release of the cash return by the reference number of the document in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Processing Expense Returns to Corporate Cards](../UserGuide/TimeExpenses_Expense_Returns_Mapref.md)

