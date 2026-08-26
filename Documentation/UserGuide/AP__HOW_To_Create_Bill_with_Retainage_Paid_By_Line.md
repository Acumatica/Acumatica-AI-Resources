# To Enter a Bill with Retainage Paid by Line {#_d2b3aa6a-c411-46ec-9c4b-ade6acba0555 .task}

You enter a vendor bill with retainage on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You use this procedure if you want to be able to pay multiple lines of this bill separately and to track the retainage by line.

You can enter a bill with retainage, which can be paid by line only if the *Retainage Support* and *Payment Application by Line* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Before You Proceed {#section_w2m_njv_vxb .section}

Make sure that the vendor for whom you are creating a bill has the **Pay by Line** check box selected in the **Default Payment Settings** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

## To Enter a Bill with Retainage To Be Paid by Line {#section_y2m_njv_vxb .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Bill*.
4.  In the **Date** box, enter the date of the vendor document the bill is based on.
5.  If required, in the **Vendor Ref.** box, enter the reference number of the vendor document.
6.  In the **Vendor** box, select the vendor the document is from.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Terms**, **Due Date**, **Cash Discount Date**, **Apply Retainage**, and **Default Retainage Percent** on the **Retainage** tab. Review these settings, and make any needed changes.

7.  In the **Currency** box, make sure the base currency is selected correctly.
8.  If the **Apply Retainage** check box is not already selected, select it.
9.  Optional: In the **Description** box, add a brief description of the bill.
10. On the **Financial Details** tab, make sure that the **Pay by Line** check box is selected.
11. On the **Details** tab, for each detail line of the bill, click **Add Row** on the table toolbar, and do the following:
    1.  In the **Branch** column \(if it appears\), ensure that the system has specified the correct branch. Specify another branch, if needed.
    2.  If an item is involved, in the **Inventory ID** column, select the required item.
    3.  In the **Quantity** column, enter the quantity of the line item purchased from the vendor.
    4.  In the **Unit Cost** column, enter the cost of each specified unit.
    5.  Check the **Retainage Percent** and **Retainage Amount** columns, and change the value in one of the columns if necessary. \(The system will automatically change the value in the other column based on the value you specify.\)
    6.  In the **Account** column, ensure that the specified account is correct.
    7.  In the **Subaccount** column \(if it appears\), ensure that the specified subaccount is correct.
    8.  In the **Project** column, select a project ID for the bill line.
    9.  In the **Project Task** column, select a project task of the project assigned to the bill line.
    10. In the **Cost Code** column, select a cost code related to the bill line.
    11. Check the **Amount** column for each bill line, and change the value in it if necessary.
12. If you want to save the document with the *Balanced* status, perform one of the steps below, and click **Remove Hold** on the form toolbar:
    -   If the **Amount** box of the Summary area is available on the form, enter the total amount of the invoice reduced by the retained amount in this box.
    -   If the **Amount** box is not available on the form, make sure the total amount of the document is displayed correctly in the **Balance** box.
13. On the form toolbar, click **Save**.

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

