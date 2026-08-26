# To Apply Cash Discounts {#_07d870aa-3c49-4fa4-8009-55dbd403e330 .task}

Some vendors may offer you cash discounts if you pay bills promptly or ahead of schedule. In Acumatica ERP, the details of these discounts are specified in each vendor's credit terms, which are defined on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, and specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form \(where you also specify the lead time—the number of days needed for the payment to reach the vendor\). The system calculates due dates and available cash discounts automatically, based on the vendor's credit terms.

On the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form, you can select multiple bills with available discounts and approve them for payment.

## To Apply Cash Discounts {#section_y3h_njv_vxb .section}

1.  Open the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form.
2.  In the **Selection Date** box, select the date of approval, which will also be used as the pay date.
3.  In the Selection area, select the **Cash Discount Expires in Less Than** check box and specify a number of days, to view only the documents with discounts expiring within the specified number of days. When you specify this number, remember to add the lead time to make sure the bill will be paid on time.
4.  Make sure that the **Show Approved for Payment** check box is cleared.
5.  Select the **Show Not Approved for Payment** check box to include in the list the documents that are not yet approved for payment.
6.  Optional: In the **Currency** box, select a currency to view only documents denominated in this currency.
7.  Optional: If vendors are assigned to classes based on the payment lead time or vendor size, select the applicable vendor class to first pay major vendors and get the largest discounts.
8.  By using the check boxes in the unlabeled column, select the documents with a cash discount available, to approve these documents for payment.
9.  Click **Save**.

After you approve the bills with discounts for payments, you need to promptly pay those bills. For details, see [AP Bill Payments: Process Activity](Finance_PayingAPBills_Process_Activity.md).

**Parent topic:**[Approving Accounts Payable Documents](../UserGuide/AP__con_Approval_of_AP_Bills.md)

