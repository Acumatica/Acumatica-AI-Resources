# To Enter a Bill in the Base Currency \(with the Items' Quantity and Unit Cost\) {#_4dbf22a2-328d-40b8-bdf5-bf40a19c9198 .task}

You enter a vendor bill by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You use this procedure if the items' quantity and unit costs are specified in the detail lines of your document. If the line total amounts are instead specified in the detail lines, use [To Enter a Bill in the Base Currency \(with Line Totals\)](AP__How_To_Enter_Bill_with_Line_Total_Known.md).

## To Enter a Bill in the Base Currency \(with the Item Quantity and Unit Cost in Detail Lines\) {#section_j5h_njv_vxb .section}

1.  Open the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the vendor document the bill is based on.
5.  If needed, in the **Vendor Ref.** box, enter the reference number of the vendor document.
6.  In the **Vendor** box, select the vendor the document is from.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, and **Cash Discount Date**. Review these settings, and make any needed changes.

7.  In the **Currency** box, make sure the base currency is shown correctly.
8.  On the **Details** tab, for each detail line of the bill, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), make sure that the system has specified the correct branch.
    2.  In the **Inventory ID** column, select the required item.
    3.  In the **Quantity** column, enter the quantity of the line item purchased from the vendor.
    4.  In the **Unit Cost** column, enter the cost of each specified unit.
    5.  In the **Account** column, make sure that the specified account is correct.
    6.  If needed, in the **Subaccount** column, specify the subaccount.
9.  On the form toolbar, click **Save** to save the bill.

## Notes About the Procedure {#section_k5h_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Vendor Ref.** setting is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, the setting is optional.

Note the following about the **Details** tab:

-   In the **Inventory ID** column, you can select only a non-stock item or service.
-   The system automatically calculates and inserts the value in the **Ext. Cost** column based on the values that you have specified in the **Quantity** and **Unit Cost** columns.
-   In the **Ext. Cost** column, the system has automatically calculated and entered the total amount for the line.
-   In the **Account** column, the system specifies the expense account associated with the vendor location if the **Inventory ID** column is empty. If you have specified an inventory item in the **Inventory ID** column, the system enters the expense account specified in the settings for the inventory item.
-   In the **Subaccount** column, the system inserts the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. You can manually change the subaccount if necessary.
-   The **Project** column appears only if the projects subledger has been enabled in your system and integrated with the accounts payable subledger.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

