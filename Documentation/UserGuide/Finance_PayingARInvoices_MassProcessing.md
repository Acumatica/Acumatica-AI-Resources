# Invoice Payments: Mass Processing {#_c21b8879-5aab-48dc-925b-38244c5bb19a .concept}

This topic explains the way you can release multiple payment applications, the application of a payment to multiple AR documents, and the application of multiple payments to a single AR document.

## Mass Release of Payments and Payment Applications {#section_ay4_4jv_vxb .section}

Multiple payments can be released at the same time on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form. On this form, you select the unlabeled check boxes next to the payments to be processed and click **Release** on the form toolbar to release the selected payments and their applications to documents or click **Release All** to release all the payments and applications shown in the table.

**Attention:** The system creates a consolidated GL batch for all the released invoices and credit memos if the **Generate Consolidated Batches** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Application of a Payment to Multiple AR Documents {#section_dy4_4jv_vxb .section}

You can apply a single payment to multiple documents at once on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form by performing the following general steps:

1.  On the **Documents to Apply** tab, you add the AR documents to be paid.

    When you create a new payment of the *Payment* or *Prepayment* type on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, as soon as you select the customer in the Summary area, the system automatically loads to the **Documents to Apply** tab the AR documents to which this payment can be applied—that is, the customer's open AR documents of the *Invoice*, *Debit Memo*, *Credit Memo*, and *Overdue Charge* type that do not have unreleased applications.

    If more than 100 eligible documents exist for the selected customer, the system does not load any documents; it suggests that the user should load documents by clicking **Load Documents** on the table toolbar.

    You can add documents to the **Documents to Apply** tab manually in one of the following ways:

    -   On the table toolbar, you click **Add Row** to add a new row to the table, and in the row, you select the document.
    -   On the table toolbar, you click **Load Documents**. In the **Load Options** dialog box, which opens, you specify the criteria of the documents to be loaded \(and if needed, the maximum number of documents you want to load\), and you click the **Load** or **Reload** button. The **Load** button adds the documents that match the selected criteria to any documents that have already been added to the table, whereas the **Reload** button first removes any documents from the table and then loads only the documents that match the selected criteria.

        The criteria that you can select in the **Load Options** dialog box include the company and branch, the range of the document dates, and the range of the document numbers. You can also select the order in which the documents loaded to the table should be displayed by using the following option buttons in the **Sort Order** section:

        -   **Due Date, Reference Nbr.**: To display the documents in ascending order, sorted first by due date and then by reference number
        -   **Doc. Date, Reference Nbr.**: To display the documents in ascending order, sorted first by document date and then by reference number
        -   **Reference Nbr.**: To display the documents in ascending order, sorted by reference number
        You can also select or clear the **Automatically Apply Amount Paid** check box to indicate whether the payment should be immediately applied to the documents on loading. \(If it is selected, when loading the documents, the system fills the **Amount Paid \(Payment currency\)** column with the appropriate values. You can override these values, if needed.\) This check box is selected by default.

2.  You specify the payment amounts to be applied to particular listed AR documents.

    Now that the documents to which you want to apply the payment have been added to the table on the **Documents to Apply** tab, you specify the amounts to be applied to each of the documents in one of the following ways:

    -   In the row for each document, you specify the payment amount to be applied in the **Amount Paid \(Payment currency\)** column.
    -   On the table toolbar, you click **Auto-Apply**, and the system applies the payment amount to the added documents, starting from the first document displayed in the list \(even if the list has been sorted or filtered\) until the payment is applied to all documents or until the payment's available balance \(**Available Balance** in the Summary area for the payment\) becomes zero.
3.  You save or release the payment.

    Once you have specified the amount to be applied to each document that you want to pay, you can release or save the payment. When the payment is released or saved with the *On Hold* or *Balanced* status, the system removes from the table the documents that were added to the **Documents to Apply** tab but to which the payment has not been applied; only documents to which the payment has been applied are kept.


## Application of Multiple Payments to a Single AR Document {#section_my4_4jv_vxb .section}

When you are working with a particular AR document on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you can apply multiple payments to it on the **Applications** tab by performing the following general steps:

1.  You add the payments to be applied to the **Applications** tab.

    For an unreleased invoice that you have created or opened on the [Invoices and Memos](AR_30_10_00.md) form, you can form the list of payments that can be applied to the invoice by clicking **Load Documents** on the toolbar of the **Applications** tab. The system loads all open payments for the customer selected in the invoice except for the payments that have unreleased applications. If more than 100 payments can be applied to the document, the list of payment documents is split into pages, with 100 payment documents per page.

2.  You apply payment amounts to the AR document.

    On the **Applications** tab, you can specify the amount of each payment to be applied to the AR document in one of the following ways:

    -   You specify the amount to be applied in the **Amount Paid \(Payment currency\)** column for each listed payment that you want to apply.
    -   You click **Auto-Apply** on the table toolbar. The system then applies the loaded payments to the document starting with the first payment displayed in the table \(even if the rows have been sorted or filtered\) until the document balance is paid in full or until there is no more payment balance available.
3.  You save or release the invoice.

    Once you have applied payments to the invoice, you can save or release it. When the invoice is released or saved, the system removes from the table the payments that were loaded to the **Applications** tab but have not been applied to the invoice; only payments that were applied are kept.


**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

