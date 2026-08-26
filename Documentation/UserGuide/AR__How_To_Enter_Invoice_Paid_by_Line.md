# To Enter an Invoice with Retainage that Can Be Paid by Line {#_ae630c03-9143-4e63-9800-e8f70a5bc705 .task}

You enter an AR invoice with retainage that can be paid by line on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. You use this procedure if you are specifying items' quantities and unit costs \(as opposed to only line totals\) in the detail lines of the invoice. To correct the amount of an original invoice with retainage, which has been released, you add a line with a negative extended price to an invoice.

You can enter an invoice with retainage to be paid by line only if the *Payment Application by Line* and *Retainage Support* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Enter an Invoice with Retainage that Can Be Paid by Line {#section_owq_4jv_vxb .section}

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Invoice*.
4.  In the **Date** box, change the current business date, if needed.
5.  In the **Customer** box, select the customer associated with the document.

    The system fills in the following boxes automatically with the default settings of the selected customer: **Location**, **Terms**, **Due Date**, **Cash Discount Date**, and **Apply Retainage**. Review these settings, and make any needed changes.

6.  If required, in the **Project/Contract** box, specify the identifier of the project or contract with which this document is associated or the code indicating that this document is not associated with any project.
7.  If the **Apply Retainage** check box is not already selected, select it.
8.  If the **Pay by Line** check box is not already selected, select it.
9.  Optional: In the **Description** box, add a brief description of the invoice.
10. On the **Details** tab, for each detail line of the invoice, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has inserted the correct branch. Specify another branch, if needed.
    2.  In the **Inventory ID** column, select the required item.
    3.  In the **Quantity** column, enter the quantity of the item sold to the customer.
    4.  In the **Unit Price** column, enter the price of each specified unit of the item.
    5.  Check the **Retainage Percent** and **Retainage Amount** columns, and change the value in one of the columns if necessary. \(The system will automatically change the value in the other column based on the value you specify.\)
    6.  In the **Account** column, ensure that the specified account is correct.
    7.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
11. \(Optional\): If you want to enter a line with a negative extended price, on the **Details** tab, do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has specified the correct branch. Specify another branch, if needed.
    2.  In the **Ext. Price** column, enter the total amount for the line, which is a negative value.
    3.  In the **Account** column, ensure that specified account is correct.
    4.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
12. If you want to save the document with the *On Hold* status, on the form toolbar, click **Hold**.
13. If you want to save the document with the *Balanced* status, if the **Amount** box of the Summary area is available on the form, enter the total amount minus the retained amount of the invoice in this box. On the form toolbar, click **Remove Hold**.
14. On the form toolbar, click **Save**.

## Notes About the Procedure {#section_qwq_4jv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Location** box appears on the form and is required only if the *Business Account Location* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.
-   The **Project/Contract** box appears on the form only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   The **Amount** box appears on the form and is required only if the **Validate Document Totals on Entry** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

Note the following about the **Details** tab:

-   The **Branch** column appears only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   The system automatically calculates and inserts the value in the **Ext. Price** column based on the values that you have specified in the **Quantity** and **Unit Price** columns.
-   In the **Account** column, the system specifies the sales account specified in the settings for the inventory item.
-   In the **Subaccount** column, the system inserts the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Receivable Preferences](AR_10_10_00.md) form. You can manually change the subaccount if necessary.
-   The **Project Task** column appears only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.

**Parent topic:**[Applying Payments to Particular Lines of AR Documents](../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md)

