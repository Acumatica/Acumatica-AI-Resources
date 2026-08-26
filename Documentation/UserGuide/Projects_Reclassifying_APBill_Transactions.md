# Project Expense Reclassification: Generated Transactions {#_2e157b7e-c2ad-450d-8a93-383bd7642c23 .concept}

When you reclassify project expenses, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you correct information in a bill with the *Under Reclassification* status and release this bill.

To update the general ledger, accounts payable, and the project cost budget, the system generates a reversing GL transaction, a new AP transaction, and the corresponding project transactions; the generated transactions are described in the following sections.

## GL Transactions Generated on Release of the Reclassified Bill {#section_j5x_by4_xnb .section}

On release of a bill created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form with the *Under Reclassification* status and at least one corrected value in a bill line, the system generates the following batches:

-   A GL transaction batch of the *Normal* type that reverses the AP transaction batch that had been generated on release of the original accounts payable bill.

    The following table shows the journal entries of the reversing batch.

    |Source of Values|Account|Debit|Credit|
    |----------------|-------|-----|------|
    |Original AP batch|Accounts Payable|Amount|0.00|
    |Original AP batch|Expense|0.00|Amount|

    The reversing batch is numbered in accordance with the numbering sequence selected in the **Batch Numbering Sequence** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

-   The AP transaction batch that posts the updated amounts to the general ledger; the journal entries of this batch are shown in the following table.

    |Source of Values|Account|Debit|Credit|
    |----------------|-------|-----|------|
    |Reclassified AP bill|Accounts Payable|0.00|Amount|
    |Reclassified AP bill|Expense|Amount|0.00|

    **Note:** Depending on which information you have corrected in the bill line, the transaction will include updated values in the following columns on the the [Journal Transactions](GL_30_10_00.md) form: **Account**, **Subaccount**, **Project**, **Project Task**, **Cost Code**.

    The batch is numbered in accordance with the numbering sequence selected in the **Batch Numbering Sequence** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The batch number is specified in the reclassified bill on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.


## The Reversing Project Transaction {#section_y1l_bdd_4qb .section}

On release of the reversing GL batch, the system generates a project transaction with *GL* selected in the **Module** box of the Summary area of the [Project Transactions](PM_30_40_00.md) \(PM304000\) form; the project transaction line is shown in the following table.

**Tip:** If the non-project code has been changed to the identifier of a particular project in the bill line during reclassification, the system does not generate a reversing project transaction.

|Source of the Project Budget Key|Account Group|Debit Account|Amount|
|--------------------------------|-------------|-------------|------|
|The line of the reversing GL transaction|Account group mapped to the Expense account|Expense account in the original project transaction|–\(Amount\)|

You can review the generated project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project. In the table, you can find the project transaction with *GL* selected in the **Module** column, *Bill* in the **Orig. Doc. Type** column, and the reference number of the bill in the **Orig. Doc. Nbr.** column.

## Project Transaction with Reclassified Values {#section_ntp_kgd_4qb .section}

On release of the AP transaction batch that was generated on release of the reclassified bill, the system generates a project transaction with *AP* selected in the **Module** box of the Summary area of the [Project Transactions](PM_30_40_00.md) \(PM304000\) form; the project transaction line is shown in the following table.

**Tip:** If a particular project identifier has been changed to the non-project code in the bill line during reclassification, the system does not generate a new project transaction.

|Source of the Project Budget Key|Account Group|Debit Account|Amount|
|--------------------------------|-------------|-------------|------|
|The line of the new AP batch|Account group mapped to the Expense account|Expense account in the line of the new AP batch|Amount|

**Note:** Depending on which information you have corrected in the bill line, the project transaction will include updated values in the following columns on the **Details** tab of the [Project Transactions](PM_30_40_00.md) form: **Account**, **Subaccount**, **Project**, **Project Task**, **Cost Code**.

You can review the generated project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project. In the table, you can find the project transaction with *AP* selected in the **Module** column, *Bill* in the **Orig. Doc. Type** column, and the reference number of the bill in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Reclassifying Project Expenses](../UserGuide/Projects_Reclassifying_APBill_Mapref.md)

