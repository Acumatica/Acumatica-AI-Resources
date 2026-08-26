# To Enter a Bill Based on Purchase Orders {#_74dacec4-4a12-4a9d-b575-32bd5fadd1fd .task}

In Acumatica ERP, you can enter a bill for non-stock items or services based on purchase orders. Also, you can add stock item lines from the purchase orders for which billing before receipt is allowed. To manually enter a bill based on purchase order, you use the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Enter a Bill Based on Purchase Orders {#section_cxh_njv_vxb .section}

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
    1.  On the table toolbar, click **Add PO**.

        The system opens the **Add PO Order** dialog box, which displays the list of the purchase orders of the selected vendor.

    2.  Select the unlabeled check boxes for the purchase orders to be added.
    3.  Click **Add &amp; Close** to close the dialog box.
    4.  In the table on the **Details** tab \(where the lines have been filled with the lines of the selected purchase receipts\), check the items' quantities and costs.
10. On the form toolbar, click **Save**.

## Notes About the Procedure {#section_dxh_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the date that you specified.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

