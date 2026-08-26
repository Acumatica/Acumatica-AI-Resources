# To Enter a Bill with Retainage \(with Line Totals\) {#_9412a8bb-f4fd-4516-9140-50545e0f912c .task}

You enter a vendor bill with retainage on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You use this procedure if you are specifying line totals in the detail lines of the bill. If you are instead specifying the items' quantities and unit costs in the detail lines, you should use [To Enter a Bill with Retainage \(with Items' Quantities and Unit Costs\)](AP__HOW_To_Create_Bill_with_Retainage.md).

You can enter a bill with retainage only if the *Retainage Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Enter a Bill with Retainage \(with Line Totals\) {#section_mdm_njv_vxb .section}

1.  Open the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the vendor document the bill is based on.
5.  If required, in the **Vendor Ref.** box, enter the reference number of the vendor document.
6.  In the **Vendor** box, select the vendor the document is from.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, **Cash Discount Date**, **Apply Retainage**, and **Default Retainage Percent** on the **Retainage** tab. Review these settings, and make any needed changes.

7.  In the **Currency** box, make sure the base currency is shown correctly.
8.  If needed, in the **Project** box, select the project with which the bill is associated.
9.  If the **Apply Retainage** check box is not already selected, select it.
10. On the **Details** tab, for each detail line of the bill, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has specified the correct branch.
    2.  In the **Ext. Cost** column, enter the total amount for the line \(including retainage, before the line discounts\).
    3.  Check the **Retainage Percent** and **Retainage Amount** columns, if needed, change the value in one of the columns. \(The system will automatically change the value in the other column based on the value you specify.\)
    4.  In the **Account** column, make sure that specified account is correct.
    5.  In the **Subaccount** column \(if it appears\), make sure that the specified subaccount is correct.
11. If you want to save the document with the *Balanced* status, perform one of the steps below, and click **Remove Hold** on the form toolbar:
    -   If the **Amount** box of the Summary area is available on the form, enter the total amount of the invoice in this box.
    -   If the **Amount** box is not available on the form, make sure the total amount of the document is displayed correctly in the **Balance** box.
12. On the form toolbar, click **Save**.

## Notes About the Procedure {#section_ndm_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Vendor Ref.** value is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, the value is optional.
-   The **Location** box appears on the form and required only if the *Business Account Location* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.
-   The **Currency** box appears on the form only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   The **Project** box appears on the form only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The **Amount** box appears on the form and is required only if the **Validate Document Totals on Entry**check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form.

By default, on the **Retainage** tab, in the **Default Retainage Percent** box, the system inserts the retainage percent specified for the vendor in the **Retainage Percent** box on the **General** tab of the [Vendors](AP_30_30_00.md) form.

Note the following about the **Details** tab:

-   The **Branch** column appears only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   In the **Account** column, the system enters the expense account associated with the vendor location if the **Inventory ID** column is empty. If you have specified an inventory item in the **Inventory ID** column, the system enters the expense account specified in the inventory item settings.
-   In the **Subaccount** column, the system enters the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) form. You can manually change the subaccount if necessary.
-   The **Project** column appears only if the *Project* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

