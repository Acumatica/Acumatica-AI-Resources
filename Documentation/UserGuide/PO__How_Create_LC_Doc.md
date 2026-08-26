# To Create a Landed Cost Document {#_a2d06105-5af2-45cd-9b7a-e73496500e2b .task}

To allocate landed costs among items of either purchase receipts or transfer receipts, you create a landed cost document on the [Landed Costs](PO_30_30_00.md) \(PO303000\) form.

## To Create a Purchase Order { .section}

1.  Open the [Landed Costs](PO_30_30_00.md) \(PO303000\) form.
2.  Select the landed cost vendor in the **Vendor** box.
3.  Check the location of the vendor, and change it if needed.
4.  Optional: In the **Currency** box, check the currency and the currency exchange rate; change these, if needed.
5.  Check the date of the purchase order, and change it if needed.
6.  Optional: In the **Vendor Ref.** box, specify the reference number of the vendor's original document. \(This value may be required, based on your organization's settings.\)
7.  Optional: Select the **Create Bill** box, if you want the system to generate the Accounts Payable bill automatically on release of the landed cost document.
8.  Specify a short description of the landed cost document.
9.  To add all lines of documents to which the landed costs should be allocated, on the table toolbar of the **Details** tab, click **Add PO Receipt**, and do the following in the **Add Receipt** dialog box, which opens:
    1.  In the **Type** box, select *Receipt* to display purchase receipts in the table, or *Transfer Receipt* to display transfer receipts.
    2.  Select the unlabeled check boxes in the rows with the receipts whose lines should be added.
    3.  Click **Add &amp; Close** to add the lines of the receipts and close the dialog box.
10. To add the particular lines of either purchase receipts or transfer receipts to which the landed costs should be allocated, on the table toolbar of the **Details** tab, click **Add PO Receipt Line**, and do the following in the **Add Receipt Line** dialog box, which opens:
    1.  In the **Type** box, if it is available, select *Receipt* to display purchase receipts in the table, or *Transfer Receipt* to display transfer receipts.
    2.  Select the unlabeled check boxes in the rows with the receipt lines to be added.
    3.  Click **Add &amp; Close** to add the selected receipt lines and close the dialog box.
11. On the **Details** tab, review the information in the added lines, and make changes to weight and volume in lines, if needed.
12. On the **Landed Costs** tab, for each landed cost amount that you want to allocate to the added receipt lines, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column, ensure that the system has specified the correct branch.
    2.  In the **Landed Cost Code** column, select the landed cost code.
    3.  In the **Amount** column, specify the landed cost amount to be allocated.
    4.  Optional: In the **Tax Category** box, change the appropriate tax category if the landed cost amounts are subject to taxes.
    5.  Optional: In the **Inventory ID** box, select a particular item if the landed cost amount should be allocated to only lines with this particular item ID.
    6.  Click **Save** on the form toolbar.
13. On the form toolbar, click **Remove Hold**.
14. On the form toolbar, click **Save**.

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

