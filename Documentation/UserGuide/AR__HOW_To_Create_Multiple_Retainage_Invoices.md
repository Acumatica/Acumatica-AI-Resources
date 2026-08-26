# To Create Multiple Retainage Documents \(Release Retainage for Multiple Documents\) {#_61003638-5108-4bd3-b0aa-6f79a669dc19 .task}

You release retainage for multiple documents \(invoices and credit memos\) from which a part of an amount has been retained on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form. When the retainage is released, for each invoice with retainage, the system creates a retainage invoice with the specified amount for each invoice with retainage selected for processing during this procedure. For each credit memo with retainage, the system creates a retainage credit memo.

## To Create Multiple Retainage Documents \(Release Retainage for Multiple Documents\) {#section_sqq_4jv_vxb .section}

**Note:** The following procedure is applicable for AR documents for which the **Pay by Line** check box is cleared on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

To create multiple retainage documents, do the following:

1.  Open the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form.
2.  In the Selection area, in the **Date** box, select the date for which you want to create the retainage documents.

    The system fills in the **Post Period** box with the period of the selected date. You can change it, if necessary.

3.  In the **Company/Branch** box, ensure that the system has specified the correct branch. By default, the system fills in the current branch. Specify another branch, company, company group, or clear the box to view documents with retainage for all companies, if needed.

    **Note:** This box appears on the form only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

4.  In the table, for each document for which you want to release retainage, check the **Percent to Release** or **Retainage to Release** column, and change the value in one of the columns, if necessary. The system recalculates the value in the other column.
5.  Do one of the following:
    -   To release retainage for all listed documents, click **Process All** on the form toolbar.
    -   To release retainage for particular documents, select the unlabeled check boxes in the rows of the required documents in the list, and click **Process** on the form toolbar.

## To Create a Consolidated Retainage Document {#section_xqq_4jv_vxb .section}

The system creates a consolidated retainage document automatically for multiple original documents that have the same customer and project. For details, see [Consolidated Retainage Documents](AR__CON_Consolidated_Retainage_Docs.md).

**Note:** The following procedure is applicable for AR documents for which the **Pay by Line** check box is selected on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

To create a consolidated retainage document, do the following:

1.  Open the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form.
2.  In the Selection area, in the **Date** box, select the date for which you want to create a consolidated retainage document.

    The system fills in the **Post Period** box with the period of the selected date. You can change it, if necessary.

3.  In the **Company/Branch** box, ensure that the system has specified the correct branch. By default, the system fills in the current branch. Specify another branch, company, company group, or clear the box to view documents with retainage for all companies, if needed.

    **Note:** This box appears on the form only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

4.  In the table, for each original document or document line, check the **Percent to Release** or **Retainage to Release** column, and change the value in one of the columns, if necessary. The system recalculates the value in the other column.
5.  Select the unlabeled check boxes for each document or document line that you want to include in the consolidated retainage document.
6.  On the form toolbar, click **Process**. The system creates a consolidated retainage invoice, which you can review on the [Invoices and Memos](AR_30_10_00.md) form.

    On the **Details** tab, the table shows multiple lines for each line of the original document selected for processing on the [Release AR Retainage](AR_51_00_00.md) form. The **Orig. Ref. Nbr.** column shows the reference numbers of the original documents.


**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

