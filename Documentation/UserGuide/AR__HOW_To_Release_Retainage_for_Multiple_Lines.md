# To Release Retainage by the Same Percent for Multiple Lines {#_00a05d54-bf99-4d52-bbb7-72ef461f633c .task}

On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you can reduce the unreleased retainage for a whole document \(this might be the case if you select a document in the **Ref. Nbr.** box\), multiple documents, or a project by a certain percent without specifying this percent manually for each line. For example, you can use this procedure in the following cases:

-   You have created multiple AR documents \(invoices and credit memos\) for multiple projects and want to find all lines with retainage related to a specific project—and optionally related to a particular project task, account group, or cost code within the project—and release retainage for them.
-   You want to reduce the unreleased retainage for a whole document or project by a certain percent and you do not want to specify this percent manually for each line.

You can  sort all the lines that the system displays in the table on this form by project, project task, account group, cost code, and inventory ID to release retainage for all lines with retainage related to a specific project or to any combination of project, project task, account group, cost code, and inventory ID.

**Note:** If a document has the **Pay by Line** check box cleared on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, and at least one of its lines meets the selection criteria, the whole document is shown in the table.

To specify the retainage percent to be released, you enter it in the **Retainage Percent** box in the Selection area and the system copies this value to the **Percent to Release** column for all lines or documents. The total amount is displayed in the **Retainage to Release** box in the Selection area.

As a result of this procedure, the system creates one retainage document per original document.

## Before You Proceed {#section_ntq_4jv_vxb .section}

Make sure that the *Payment Application by Line* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

## To Release Retainage with the Same Percent for Multiple Lines {#section_ptq_4jv_vxb .section}

1.  Open the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form.
2.  In the Selection area, in the **Date** box, select the date for which you want to create the retainage documents.

    The system fills in the **Post Period** box with the period of the selected date. You can change it, if necessary.

3.  In the **Branch** box, ensure that the system has specified the branch for which you want document lines or documents to be listed. By default, the system fills in the current branch. Specify another branch, or clear the box to view documents with retainage for all branches, if needed.

    **Note:** This box appears on the form only if the *Multiple Branch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

4.  In the **Customer** box, select the customer whose document lines and documents you want to view.
5.  To further sort the lines shown in the table, use the following boxes in the Selection area:
    -   **Project**: The project whose document lines you want to view.
    -   **Project Task**: If a project has been specified, the project task for which you want to release retainage.
    -   **Account Group**: The account group of the account specified for the document lines you want to view.
    -   **Cost Code**: The cost code associated with the document lines you want to view.

        This box appears on the form if the *Cost Codes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

    -   **Inventory ID**: The inventory ID of the item associated with the document lines you want to view.
6.  In the **Retainage Percent** box in the Selection area, specify the retainage percent to be released for each line or document included in the processing.

    Notice that the system automatically inserts the total amount to be released in the **Retainage to Release** box in the Selection area.

7.  Do one of the following:

    1.  To release retainage for all lines in the table by using the specified retainage percent, click **Process All** on the form toolbar.
    2.  To release retainage for only particular lines or documents in the table by using the specified retainage percent, click the Included check box for each line or document for which you want to release retainage. Click **Process** on the form toolbar.
    The system has generated retainage invoices or credit memos with the specified retainage percent for each original invoice or credit memo with lines included in processing.


**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

