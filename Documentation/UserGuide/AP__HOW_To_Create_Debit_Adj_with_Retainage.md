# To Enter a Debit Adjustment with Retainage {#_89d5b04f-8e49-47ea-90b4-29d77fa2c834 .task}

You create a debit adjustment with retainage by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Note:** You can enter a debit adjustment with retainage only if the *Retainage Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Enter a Debit Adjustment with Retainage {#section_mgm_njv_vxb .section}

To enter a debit adjustment with retainage, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Debit Adj*.
4.  In the **Date** box, change the current business date if needed.
5.  In the **Vendor** box, select the customer associated with the document.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Apply Retainage**, and **Pay by Line**.

6.  If the **Apply Retainage** check box is not already selected, select it.
7.  If you want to apply the debit adjustment on the line level, select the **Pay by Line** check box.
8.  Optional: In the **Description** box, add a brief description of the debit adjustment.
9.  On the **Details** tab, for each detail line of the debit adjustment, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has specified the correct branch. Specify another branch, if needed.
    2.  In the **Ext. Cost** column, enter the total amount \(including retainage and before the line discounts\) for the line.
    3.  Check the **Retainage Percent** and **Retainage Amount** columns, and change the value in one of the columns if necessary. \(The system will automatically change the value in the other column based on the value you specify.\)
    4.  In the **Account** column, ensure that the specified account is correct.
    5.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
10. If you want to save the document with the *On Hold* status, click **Hold** on the form toolbar.
11. If you want to save the document with the *Balanced* status, click **Remove Hold** on the form toolbar.
12. On the form toolbar, click **Save**.
13. To release the debit adjustment, click **Release** on the form toolbar.

## Notes About the Procedure {#section_pgm_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Vendor Ref.** value is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, the value is optional.
-   The **Location** box appears on the form and required only if the *Business Account Location* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.
-   The **Currency** box appears on the form only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   The **Amount** box appears on the form and is required only if the **Validate Document Totals on Entry**check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form.

By default, on the **Retainage** tab, in the **Default Retainage Percent** box, the system inserts the retainage percent specified for the vendor in the **Retainage Percent** box on the **General** tab of the [Vendors](AP_30_30_00.md) form.

Note the following about the **Details** tab:

-   The **Branch** column appears only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form.
-   In the **Account** column, the system enters the expense account associated with the vendor location if the **Inventory ID** column is empty. If you have specified an inventory item in the **Inventory ID** column, the system enters the expense account specified in the inventory item settings.
-   In the **Subaccount** column, the system enters the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) form. You can manually change the subaccount if necessary.
-   The **Project** column appears only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form. For a debit adjustment, the a non-project code must be specified \(*X* by default\).

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

