# AR Invoices: Mass Processing of Documents {#_ba2e9d5b-9698-4c44-b4d6-070b097d743c .concept}

This topic explains how to release, print, and email multiple AR invoices and what rules the system uses to group the prepared documents.

## Mass Release of AR Invoices {#section_l3n_4jv_vxb .section}

Multiple invoices can be released at the same time on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form. On this form, you select the unlabeled check boxes in the rows of the documents to be processed and click **Release** on the form toolbar to release the selected invoices; alternatively, you can click **Release All** to release all the invoices shown in the table.

**Tip:** The system creates a consolidated GL batch for all the released invoices if the **Generate Consolidated Batches** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Mass Printing of Invoices {#section_o3n_4jv_vxb .section}

You can print selected invoices by selecting *Print Invoice/Memo* in the **Action** box on the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form and clicking **Process** on the form toolbar

## Mass Emailing of Invoices { .section}

You can send multiple invoices to each customer in a single email. To do this, select *Email Invoices* in the **Action** box on the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form, along with any selection criteria to narrow the list of invoices.

Then select the **Send Documents in One Email** check box. If you also select the **Combine into One File** check box, the system will combine each customer’s processed invoices into a single PDF file and attach it to the email.

**Attention:**

-   You can include up to 100 documents in a single email or combine up to 100 documents into one file.
-   If you select more than 100 documents, the system creates multiple emails, each within this limitation.

To send emails with invoices, do one of the following:

-   To email only particular invoices, select the unlabeled check boxes in the rows of the invoices you want to email. Then click **Process** on the form toolbar.
-   To email all the listed invoices, click **Process All**.

**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

