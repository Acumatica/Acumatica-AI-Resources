# Pro Forma Invoices: Generated Transactions {#_ac5ef55a-4321-4a8b-ac25-6b22618a71ba .concept}

The release of a pro forma invoice does not generate general ledger transactions or project transactions directly. When you release the pro forma invoice, the system creates a corresponding accounts receivable invoice with all the information copied from the pro forma invoice. On release of the accounts receivable invoice, the system generates the general ledger transactions and project transactions described in the following sections.

## GL Transactions Generated on Release of an AR Invoice { .section}

When an accounts receivable invoice that has been created based on a pro forma invoice is released, the system generates a batch of the general ledger transactions shown in the table below.

The system uses the following accounts as the source accounts in the GL batch it creates:

-   The asset account, which is specified in the **AR Account** box on the **Financial** tab \(**Link to GL** section\) of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   The income account, which is specified for each line in the **Account** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) form. The system populates the income account from the corresponding pro forma invoice; the income account was determined by billing rules during the creation of the pro forma invoice.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts receivable account|The asset account|Amount|0.00|
|Sales account|The income account|0.00|Amount|

You can view the details of the batch associated with the release of an invoice by clicking the link in the **Batch Nbr.** box on the **Financial** tab \(**Link to GL** section\) of the [Invoices and Memos](AR_30_10_00.md) form. The system opens the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transactions Generated on Release of the GL Batch { .section}

On release of the batch of general ledger transactions, the system generates a corresponding batch of the project transactions shown in the following table.

|Project and Project Task|Debit Account|Account Group|Amount|
|------------------------|-------------|-------------|------|
|Project and project task in the GL batch line|Sales account in the GL batch line|Account group mapped to Sales account|–\(Amount\)|

You can review the created transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transactions created on release of the accounts receivable invoice by the reference number of the AR invoice in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Processing Pro Forma Invoices](../UserGuide/Projects_Pro_Forma_Invoices_Mapref.md)

