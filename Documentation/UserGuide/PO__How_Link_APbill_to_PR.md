# To Link a Bill Line to a Purchase Receipt Line {#_ac1bee25-b425-4757-82ac-4b9f36405845 .task}

In Acumatica ERP, you can link the lines of an existing bill \(for example, one that has been imported from a third-party software product\) to the lines of the corresponding purchase receipt. To link the lines of a bill to the lines of a purchase receipt, you use the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Link a Line of an Accounts Payable Bill to a Line of a Purchase Receipt { .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  In the Summary area, select *Bill* in the **Type** box, and select the reference number of the needed bill in the **Reference Nbr.** box.
3.  On the **Document Details** tab, click the line to which a purchase receipt line is to be linked.
4.  On the table toolbar, click **Link Line**.

    The system opens the **Link Line** dialog box.

5.  In the dialog box, select the **Purchase Receipt** option button. The dialog box displays the purchase receipt lines with the same inventory ID used in the bill line that can be linked to the current line.
6.  Select the unlabeled check box for the purchase receipt line to be linked to the bill.
7.  Click **Save** to link the lines and close the dialog box.
8.  On the form toolbar, click **Save**.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about linking lines of Accounts Payable bills to purchase receipt lines:

-   To be able to link the lines of a bill to the lines of a corresponding purchase receipt, make sure that for the bill the *Tax Settings* option is selected in the **Tax Calculation Mode** box on the **Financial Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   You can link a bill line to only one line of a purchase receipt. If you have received only a partial quantity of an item, you can link the purchase receipt with the remaining quantity to another bill's line.
-   Information about the related documents appears for each linked line of the bill on the **Document Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form \(in the **PO Type**, **PO Number**, **PO Receipt Nbr.**, and **PO Receipt Line** columns\). While the bill is unreleased, you can cancel the established links and link the bill lines to other documents if needed.

**Parent topic:**[Processing Purchases of Stock Items](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_Mapref.md)

