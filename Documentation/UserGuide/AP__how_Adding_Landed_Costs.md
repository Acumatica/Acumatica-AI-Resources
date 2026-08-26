# To Enter a Bill with Landed Costs {#_01d1d5ff-1500-4804-95bd-80534eb1a7ba .task}

An accounts payable bill to a landed cost vendor is usually created automatically on release of a landed cost document. If you have specified the appropriate settings to not create a bill automatically \(for example, because you haven't received an invoice from the landed cost vendor yet\), you need to create this bill manually on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form and add the line or lines of the landed cost document to this bill.

## Before You Proceed {#section_azh_njv_vxb .section}

In accordance with your company's policies, in a particular landed cost code on the [Landed Cost Codes](PO_20_20_00.md) \(PO202000\) form, you must specify how the landed cost amounts should be allocated among the items in a purchase receipt.

## To Create a Bill with Landed Costs {#section_czh_njv_vxb .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  Click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill.*
4.  In the **Date** box, enter the date from the vendor invoice.
5.  Select the landed cost vendor in the **Vendor** box.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, and **Cash Discount Date**. Review these settings, and make any needed changes.

6.  If required, in the **Vendor Ref.** box, enter the reference number of the vendor document.
7.  In the **Currency** box, make sure the base currency is shown correctly.
8.  Specify a brief description for the bill.
9.  On the table toolbar of the **Details** tab, click **Add LC**. In the **Add LC** dialog box, which opens, add landed costs to the bill as follows:
    1.  Optional: Filter the lines in the table by selecting the identifier of the particular landed cost document in the **LC Nbr.** box, the particular landed cost code in the **LC Code** box, or the particular receipt in the **Receipt Nbr.** box.
    2.  In the table, select the unlabeled check boxes in the line or lines with the landed costs to be added to the bill.
    3.  Click **Add &amp; Close** to close the dialog box and add the selected lines.
10. Review the information in the added lines, and correct the landed cost amounts, if needed.
11. On the form toolbar, click **Remove Hold**.
12. On the form toolbar, click **Save**.

## Notes About the Procedure {#section_fzh_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The system fills in the **Post Period** box automatically, based on the specified document date.
-   The **Vendor Ref.** parameter is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, it is optional.
-   Only vendors with the **Landed Cost Vendor** check box selected on the [Vendors](AP_30_30_00.md) \(AP303000\) form can be associated with a landed cost code; make sure the vendor you plan to specify has this setting.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

