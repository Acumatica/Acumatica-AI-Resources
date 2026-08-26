# To Void a Payment {#_d4c3352a-65c4-43b0-a1b8-2aa944d9738e .task}

Incoming payments can be voided if errors were made or the payments are otherwise invalid. Voiding a payment reverses the original payment transactions. You can use the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form to void a customer payment or prepayment that has been applied to invoices.

## To Void a Customer Payment or Prepayment {#section_obp_4jv_vxb .section}

1.  Open the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form.
2.  In the **Type** box, select the *Payment* or *Prepayment* document type.
3.  In the **Reference Nbr.** box, select the document you want to void.
4.  On the form toolbar, click **Void**. The system does the following:
    -   Reverses the payment application in full.
    -   Changes the status of the payment document to *Voided*.
    -   Creates a document with the *Voided Payment* type with the same reference number as the payment or prepayment. You use this document in the remaining steps of this procedure.
5.  If needed, in the **Application Date** box, change the date of the voided payment. The date specified in this box should be the date when the voided payment is released and when the related batch was created.
6.  On the form toolbar, click **Save** to save the voided payment.
7.  On the form toolbar, click **Release** to release the document.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

