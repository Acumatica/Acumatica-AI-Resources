# To Manually Create an Accounts Payable Bill for a Purchase Order {#_88a38369-bcf8-4b68-b805-79124a22787c .task}

In Acumatica ERP, you can create an AP bill and add to this bill a particular purchase order or multiple purchase orders of the same vendor specified in the bill. To create a bill for a purchase order, you use the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Manually Create an Accounts Payable Bill for a Purchase Order { .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the bill.
5.  In the **Vendor Ref.** box, enter the reference number of the vendor's purchase document that this bill is based on. \(This value may be required, based on your organization's settings.\)
6.  In the **Vendor** box, select the applicable vendor.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, and **Cash Discount Date**. Review these settings, and make any needed changes.

7.  In the **Currency** box, ensure that the document currency is correct. If it is not, select another currency.
8.  On the **Document Details** tab, click **Add PO**.

    The system opens the **Add PO Order** dialog box, which displays the list of the purchase orders of the selected vendor.

9.  In the table of the dialog box, select the unlabeled check boxes for the purchase orders to be added.
10. Click **Add &amp; Close** to close the dialog box.
11. In the table on the **Document Details** tab \(where the lines of the selected purchase orders have been added\), check the items' quantities and costs, and correct them, if needed.
12. On the form toolbar, click **Save**.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about adding purchase orders to AP bills:

-   You can consolidate the lines of multiple purchase orders of one vendor into one bill.
-   The system adds lines of a purchase order to the bill depending on the **Allows AP Bill Before Receipt** setting specified for the purchase order on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. If the check box is cleared, only unbilled lines with the *Service* line type are added to the bill. If the check box is selected, all unbilled lines are added to the bill.
-   Information about the related documents appears for each linked line of the bill on the **Document Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form \(in the **PO Type**, **PO Number**, **PO Receipt Nbr.**, and **PO Receipt Line** columns\). Until the bill is released, you can cancel the established links and link the bill lines to other documents if needed.

**Parent topic:**[Processing Purchases of Stock Items](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_Mapref.md)

