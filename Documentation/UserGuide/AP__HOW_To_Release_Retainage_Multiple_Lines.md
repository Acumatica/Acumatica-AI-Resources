# To Create Multiple Retainage Documents \(Release Retainage for Multiple Documents\) {#_d3d08f8b-d95a-4ba2-aee4-e14e09be3492 .task}

On the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you release retainage for multiple documents \(bills or debit adjustments\) from which a part of the amount has been retained. When the retainage is released, for each bill with retainage, the system creates a retainage bill with the specified amount for each bill with retainage selected for processing during this procedure. For each debit adjustment with retainage, the system creates a retainage debit adjustment.

**Note:** The following procedure is applicable for AP documents for which the **Pay by Line** check box is cleared on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Create Multiple Retainage Documents {#section_xjm_njv_vxb .section}

1.  Open the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form.
2.  In the Selection area, in the **Date** box, select the date for which you want to create the retainage documents.

    The system fills in the **Post Period** box with the period of the selected date. You can change it, if necessary.

3.  In the **Branch** box, ensure that the system has specified the correct branch. By default, the system fills in the current branch. Specify another branch, or clear the box to view documents with retainage for all branches, if needed.

    **Note:** This box appears on the form only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

4.  In the table, for each document for which you want to release retainage, check the **Percent to Release** or **Retainage to Release** column, and change the value in one of the columns, if necessary. The system recalculates the value in the other column.
5.  Do one of the following:
    -   To release retainage for all listed documents, click **Process All** on the form toolbar.
    -   To release retainage for particular documents, select the unlabeled check boxes in the rows of the required documents in the list, and click **Process** on the form toolbar.

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

