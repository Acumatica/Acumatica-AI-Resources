# Project Transactions: Generated Transactions

The release of project transactions can generate the corresponding general ledger transactions; the release of general ledger transactions can also generate the corresponding project transactions. The generated general ledger transactions and project transactions are described in the following sections.

## General Ledger Transactions Generated on Project Transaction Release

When a project transaction with the **Debit Account** and **Credit Account** specified on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form is released, if the **Amount** of the transaction is positive, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|Debit account|The project transaction|The project, project task, and cost code in the project transaction line|Amount|*0.00*|
|Credit account|The project transaction|The project, project task, and cost code in the project transaction line|*0.00*|Amount|

If the **Amount** of the project transaction is negative on the [Project Transactions](PM_30_40_00.md) form, on the release of this transaction, the system generates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|Debit account|The project transaction|The project, project task, and cost code in the project transaction line|*0.00*|Amount|
|Credit account|The project transaction|The project, project task, and cost code in the project transaction line|Amount|*0.00*|

You can view the details of the batch associated with the release of a project transaction by clicking the link in the **GL Batch Nbr.** column on the [Project Transactions](PM_30_40_00.md) form. The system displays the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transactions Generated on Release of the General Ledger Batch

When a batch of general ledger transactions is released, the system generates the project transactions shown in the following table.

<table id="table_bgj_h1f_gk"><thead><tr><th>

Project Budget Key

</th><th>

Account Group

</th><th>

Debit Account

</th><th>

Credit Account

</th><th>

Amount

</th></tr></thead><tbody><tr><td>

The project, project task, and cost code in the GL transaction line

</td><td>

The account group linked to the debit account

</td><td>

Account

</td><td>

Empty

</td><td>

Amount**Attention:** The sign of the amount of the created project transaction depends on the sign of this amount in the GL transaction line and on the operation in this line. For more information, see [Project Transactions: GL Transactions Related to Projects](Projects_Transactions_GL_Transactions.md).

</td></tr></tbody>
</table>

You can review the created transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transactions created on the release of the batch of GL transactions by the reference number of the batch in the **GL Batch Nbr.** column.

**Parent topic:**[Processing Project Transactions](../UserGuide/Projects_Transactions_Mapref.md)

