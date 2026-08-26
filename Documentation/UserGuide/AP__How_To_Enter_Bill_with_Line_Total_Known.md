# To Enter a Bill in the Base Currency \(with Line Totals\) {#_7ec5c547-76e5-4702-8209-ecc39c536dd8 .task}

You enter a vendor bill by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You use this procedure if line totals are specified in the detail lines of your document. If the items' quantity and unit costs are instead specified in detail lines, use [To Enter a Bill in the Base Currency \(with the Items' Quantity and Unit Cost\)](AP__how_Entering_a_Bill.md).

## To Enter a Bill in the Base Currency \(with Line Totals\) {#section_kvh_njv_vxb .section}

1.  Open the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the vendor document the bill is based on.
5.  If needed, in the **Vendor Ref.** box, enter the reference number of the vendor document.
6.  In the **Vendor** box, select the vendor the document is from.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, and **Cash Discount Date**. Review these settings and make any needed changes.

7.  In the **Currency** box, make sure the base currency is selected.
8.  On the **Details** tab, for each detail line of the bill, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), make sure that the system has specified the correct branch.
    2.  In the **Ext. Cost** column, enter the total amount for the line.
    3.  In the **Account** column, make sure that specified account is correct.
    4.  If needed, in the **Subaccount** column, specify the subaccount.
9.  On the form toolbar, click **Save** to save the bill.

## Notes About the Procedure {#section_lvh_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Vendor Ref.** parameter is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, it is optional.

Note the following about the **Details** tab:

-   In the **Inventory ID** column, you can select only a non-stock item or service.
-   The system automatically calculates and inserts the value in the **Ext. Cost** column based on the values that you have specified in the **Quantity** and **Unit Cost** columns.
-   In the **Account** column, the system enters the expense account associated with the vendor location if the **Inventory ID** column is empty. If you have specified an inventory item in the **Inventory ID** column, the system enters the expense account specified in the inventory item settings.
-   In the **Subaccount** column, the system enters the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. You can manually change the subaccount if necessary.
-   The **Project** column appears only if the *Projects* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

