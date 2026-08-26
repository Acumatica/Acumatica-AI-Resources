# To Enter a Debit Adjustment That Can Be Applied by Line {#_0e87c483-e9dc-47be-9a53-0274db3aa2ef .task}

You enter a debit adjustment that can be applied by line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You use this procedure if you are specifying line totals in the detail lines of the debit adjustment.

You can enter a debit adjustment to be applied by line only if the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Enter a Debit Adjustment that Can Be Applied by Line {#section_eql_njv_vxb .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Debit Adj.*.
4.  In the **Date** box, enter the date of the vendor document the debit adjustment is based on.
5.  In the **Vendor** box, select the vendor from which the document originated.

    The system fills in the following boxes of the Summary area automatically with the default settings of the selected vendor: **Location**, **Apply Retainage**, and **Pay by Line**.

6.  Make sure that the **Pay by Line** check box is selected. By default, this check box is selected if it has been selected for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

    **Tip:** You can change the state of the **Pay by Line** check box if no lines have been added on the **Details** tab; otherwise, the check box is unavailable.

7.  Optional: In the **Description** box, add a brief description of the debit adjustment.
8.  On the **Details** tab, for each detail line of the debit adjustment, click **Add Row** on the table toolbar and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has inserted the correct branch. Specify another branch, if needed.
    2.  In the **Ext. Cost** column, enter the amount of the line.
    3.  In the **Account** column, ensure that the specified account is correct.
    4.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
    5.  In the **Project** column, make sure that the non-project code is selected.
    6.  Check the **Amount** column for each line and change the value in it if necessary.
9.  If you want to save the document with the *Balanced* status, click **Remove Hold** on the form toolbar.
10. On the form toolbar, click **Save**.

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

