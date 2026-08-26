# To Create a Retainage Document \(Release Retainage\) {#_b1162724-2f08-4e6f-bfa6-7f36f0597bf3 .task}

You release retainage for a particular invoice or a credit memo from which a part of an amount has been retained on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. When the retainage is released, for a positive **Retainage to Release** amount, the system creates a retainage invoice with the specified amount and opens it on the same form. For a negative **Retainage to Release** amount, the system creates a retainage credit memo.

## To Create a Retainage Document \(Release Retainage\) {#section_ypq_4jv_vxb .section}

**Note:** The following procedure is applicable for AR documents for which the **Pay by Line** check box is cleared on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

To create a retainage document, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  In the **Type** box of the Summary area, select *Invoice* if you are releasing retainage for an invoice, or *Credit Memo* if you are releasing retainage for a credit memo.
3.  In the **Reference Nbr.** box, select the reference number of the document with retainage for which you want to release retainage.
4.  On the More menu \(under **Processing**\), click **Release Retainage**.
5.  On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, which opens, for the only row in the table, check the values in the **Retainage to Release** and **Percent to Release** columns. If necessary, change the value in one of the columns; the system automatically recalculates the value in the other one.
6.  Select the Included check box for the row and click **Process** on the form toolbar.

    The system creates a retainage invoice or a retainage credit memo on the [Invoices and Memos](AR_30_10_00.md) form and opens the document. Notice that for the created document, the **Transaction Descr.** column on the **Document Details** tab specifies that this is a retainage for a credit memo or for an invoice.


**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

