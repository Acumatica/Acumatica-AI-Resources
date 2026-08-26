# AR Invoice Correction: Mass Processing {#_942b39dc-97f9-4f1f-82d6-6a06c0cbd0d4 .concept}

This chapter explains how to release multiple credit and debit memos and the rules that the system uses to group the prepared documents.

## Mass Release of Credit and Debit Memos {#section_bc4_4jv_vxb .section}

Multiple credit and debit memos can be released at the same time on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form. On this form, you select the unlabeled check boxes next to the documents to be processed and click **Release** on the form toolbar to release the selected credit or debit memos or click **Release All** to release all the documents shown in the table.

**Note:** The system creates a consolidated GL batch for all the released invoices, credit memos, and debit memos if the **Generate Consolidated Batches** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Printing of Credit and Debit Memos {#section_ec4_4jv_vxb .section}

You can print selected credit and debit memos by using the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form. You should print credit and debit memos to send them to the customer before release if the **Require Invoice/Memo Printing Before Release** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form and the settings of the customer require the printing of these documents— that is, the **Print Invoices** check box is selected on the [Customers](AR_30_30_00.md) \(AR303000\) form. For customers with this check box selected, each credit and debit memo that is created and is not on hold is assigned the *Pending Print* status. After you have printed the document, its status changes to *Balanced*, and you can release it.

**Parent topic:**[Correcting AR Invoices](../UserGuide/Finance_CorrectingARInvoices_Mapref.md)

