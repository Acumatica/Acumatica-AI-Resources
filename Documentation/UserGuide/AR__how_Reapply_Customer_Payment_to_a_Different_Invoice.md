# To Reapply a Customer Payment to a Different Invoice {#_aed75ff0-4290-4ccb-be6c-ebf6835878bf .task}

You can reapply a customer payment or prepayment to one or more different invoices by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## To Reapply Customer Payment to a Different Invoice {#section_u1p_4jv_vxb .section}

1.  Open the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form.
2.  In the **Type** box of the Summary area, select *Payment* or *Prepayment*.
3.  In the **Reference Nbr.** box, select the reference number of the payment or prepayment you want to reapply.
4.  On the **Application History** tab, select the invoice you want to unapply from the payment or prepayment application, by clicking the appropriate row.
5.  On the table toolbar of the **Application History** tab, click **Reverse Application**.

    This action gives the payment application the *Open* status, and its unapplied balance and application amount change in accordance with the amount of the application reversed. The application you reversed will appear on the **Documents to Apply** tab.

6.  Review the information on the **Documents to Apply** tab and in the Summary area.
7.  Click **Release** on the form toolbar.

    The payment or prepayment you selected in the Summary area will be unapplied from the invoice you selected on the **Application History** tab.

8.  On the table toolbar, click **Add Row**
9.  In the **Doc. Type** column, select *Invoice*.
10. In the **Reference Nbr.** column, select an invoice, to which you want to apply the payment or prepayment.
11. On the Summary area in the **Payment Ref.** box, enter the payment reference.
12. In the **Payment Amount** box, enter the total amount of the invoice to which the payment or prepayment should be applied.
13. On the form toolbar, click **Save**.
14. On the form toolbar, click **Release**.

**Attention:** Upon release of a customer payment, the status of the payment changes to *Closed* if the application amount is equal to the payment amount. If the application amount is less than the payment amount, the status of the released customer payment changes to *Open*.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

