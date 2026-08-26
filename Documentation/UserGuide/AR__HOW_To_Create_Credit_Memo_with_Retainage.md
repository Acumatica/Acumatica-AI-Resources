# To Enter a Credit Memo with Retainage {#_1704da83-3af2-4090-a488-b43623740b89 .task}

You create a credit memo with retainage by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Note:** You can enter a credit memo with retainage only if the *Retainage Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Enter a Credit Memo with Retainage {#section_gpq_4jv_vxb .section}

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  On the form toolbar, click **Add New Record** to initiate a database entry for a new document.
3.  In the **Type** box of the Summary area, select *Credit Memo*.
4.  In the **Date** box, change the current business date if needed.
5.  In the **Customer** box, select the customer associated with the document.

    The system fills in the following boxes automatically with the default settings of the selected customer: **Location**, **Apply Retainage**, and **Pay by Line**.

6.  If the **Apply Retainage** check box is not already selected, select it.
7.  If you want to apply the credit memo on the line level, select the **Pay by Line** check box.
8.  If required, in the **Project/Contract** box, specify the project or contract with which this document is associated or the code indicating that this document is not associated with any project.
9.  Optional: In the **Description** box, add a brief description of the credit memo.
10. On the **Details** tab, for each detail line of the credit memo, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has specified the correct branch. Specify another branch, if needed.
    2.  In the **Ext. Price** column, enter the total amount \(including retainage and before the line discounts\) for the line.
    3.  Check the **Retainage Percent** and **Retainage Amount** columns, and change the value in one of the columns if necessary. \(The system will automatically change the value in the other column based on the value you specify.\)
    4.  In the **Account** column, ensure that specified account is correct.
    5.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
11. If you want to save the document with the *On Hold* status, click **Hold** on the form toolbar.
12. If you want to save the document with the *Balanced* status, click **Remove Hold** on the form toolbar.
13. On the form toolbar, click **Save**.
14. To release the credit memo, click **Release** on the form toolbar.

## Notes About the Procedure {#section_ipq_4jv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Location** box appears on the form and is required only if the *Business Account Location* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.
-   The **Project** box appears on the form only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.

Note the following about the **Details** tab:

-   The **Branch** column appears only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   In the **Account** column, the system specifies the sales account associated with the customer location if the **Inventory ID** column is empty.
-   In the **Subaccount** column, the system inserts the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. You can manually change the subaccount if necessary.
-   The **Project Task** column appears only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.

**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

