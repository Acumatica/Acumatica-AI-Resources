# To Enter a Bill Based on Purchase Receipts {#_b9ce9f6e-bae2-4737-b1f0-22c01ebe3f89 .task}

In Acumatica ERP, you can enter a bill based on purchase receipts or particular lines of purchase orders. To manually enter a bill based on purchase receipts, you use the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## I. To Enter a Bill Based on Purchase Receipts {#section_hwh_njv_vxb .section}

1.  Open the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the bill.
5.  If needed, in the **Vendor Ref.** box, enter the reference number of the document this bill is based on.
6.  In the **Vendor** box, select the applicable vendor.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, and **Cash Discount Date**. Review these settings, and make any needed changes.

7.  In the **Currency** box, make sure that the document currency is correct. If it is not, select another currency.
8.  If needed, click **Exchange Rate** box \(right of the **Currency** box\) to open the **Rate Selection** dialog box and view the effective exchange rate for the currency. Override the default exchange rate type.
9.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add PO Receipt**.

        The system opens the **Add PO Receipt** dialog box, which displays the list of the released receipts of the selected vendor that have not been fully billed.

    2.  Select the unlabeled check boxes of the purchase receipts you want to add to the bill.
    3.  Click **Add &amp; Close** to close the dialog box.
    4.  In the table on the **Details** tab \(where the lines have been filled with the lines of the selected purchase receipts\), check the items' quantities and costs.
10. On the form toolbar, click **Save**.

## II. To Add Particular Purchase Receipt Lines to the Bill {#section_iwh_njv_vxb .section}

1.  Perform steps 1–3 of the previous procedure.
2.  On the **Details** tab, do the following:
    1.  On the toolbar, click **Add PO Receipt Line**. The system opens the **Add Receipt Line** dialog box.
    2.  Select check boxes next to the receipt lines to be added to the bill.
    3.  Click **Add &amp; Close**.

        The detail lines of the bill have been filled in automatically. Check the items' quantity and cost, and correct them, if needed.

3.  On the form toolbar, click **Save**.

## Notes About the Procedure {#section_kwh_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   In the **Date** box, the current date is selected by default. You can override this date, if needed.
-   The system fills in the **Post Period** box automatically, based on the date that you specified.
-   The **Vendor Ref.** parameter is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, it is optional.
-   In the **Currency** box, you can override the currency only if the **Allow Currency Override** check box is selected for the selected vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

Note the following about the **Details** tab:

-   In the **Inventory ID** column, you can select only a non-stock item or service.
-   The system automatically calculates and inserts the value in the **Ext. Cost** column based on the values specified in the **Quantity** and **Unit Cost** columns.
-   In the **Account** column, the system enters the expense account associated with the vendor location if the **Inventory ID** column is empty. If an inventory item is specified in the **Inventory ID** column, the system enters the expense account specified in the inventory ID settings.
-   In the **Subaccount** column, the system inserts the subaccount generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. You can manually change the subaccount if necessary.
-   The **Project** column appears only if the *Projects* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   In the **Add PO Receipt** dialog box \(which is brought up when you click **Add PO Receipt** on the table toolbar\), you can enter an identifier of a purchase order in the **Order Nbr.** box to narrow the selection of receipts associated with this order.
-   If the unit cost specified in the bill differs from the unit cost in the receipt, the system posts the discrepancy to the Purchase Price Variance Account associated with the item on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

