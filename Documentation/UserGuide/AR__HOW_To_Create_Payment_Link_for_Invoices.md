# To Create Payment Links for AR Documents {#_db03b6ab-599b-4fc2-be00-31addc0cd733 .task}

You use the **Payment Links** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) and [Invoices](SO_30_30_00.md) \(SO303000\) forms to create a payment link for a released AR invoice, debit memo, overdue charge, prepayment invoice, or sales invoice.

Alternatively, you can create payment links for multiple AR documents and sales invoices on the [Process Payment Links](AR_51_35_00.md) \(AR513500\) form.

## Before You Proceed { .section}

Before you start creating payment links for AR documents and sales invoices, you need to make sure that the Acumatica payments are configured as described in [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

## To Create a Payment Link for an AR Document { .section}

To create a payment link for an AR document, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the needed document.
2.  Go to the **Payment Links** tab.
3.  Make sure that a processing center is selected in the **Processing Center** box.
4.  In the **Link Delivery Method** box, select one of the following settings:

    -   *Email* to automatically send the link to the customer and verify that a valid email address is specified in the **Bill-To Contact** section on the **Addresses** tab
    -   *None* if the link should not be automatically sent to the customer
    **Attention:** This box is available if on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the **Enable Delivery Method Override** check box is selected on the **General** tab for the class of the customer.

5.  Click **Create Payment Link**.

    The system creates a payment link and displays it in the **Payment Link** box. When the link is created, *Open* is inserted in the **Link Status** box, indicating that the document can be paid via the payment link.

6.  Optional: If *None* is selected in the **Link Delivery Method** box, print the AR document by clicking **Print** on the More menu.

    The system opens the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) report with a print-friendly version of the document that contains a QR code for the payment link and the *Pay now* link. You can send this document to the customer or copy the payment link from the **Payment Link** box and send it in some other way.


## To Create a Payment Link for a Sales Invoice { .section}

To create a payment link for a sales invoice, do the following:

1.  On the [Invoices](SO_30_30_00.md) \(SO303000\) form, open the needed sales invoice.
2.  Go to the **Payment Links** tab.
3.  Make sure that a processing center is selected in the **Processing Center** box.
4.  In the **Link Delivery Method** box, select *Email* to automatically send the link to the customer or *None* if the link should not be automatically sent to the customer.

    **Attention:** This box is available if on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the **Enable Delivery Method Override** check box is selected on the **General** tab for the class of the customer.

5.  Click **Create Payment Link**.

    The system creates a payment link and displays it in the **Payment Link** box. When the link is created, *Open* is inserted in the **Link Status** box, indicating that the invoice can be paid via the payment link.

6.  Optional: If *None* is selected in the **Link Delivery Method** box, print the sales invoice by clicking **Print Invoice** on the More menu.

    The system opens the [Invoice &amp; Memo](SO_64_30_00.md) \(SO643000\) report with a print-friendly version of the document that contains a QR code for the payment link and the *Pay now* link. You can send this document to the customer.


## To Create Payment Links on the Process Payment Links Form { .section}

To create a payment link for an AR document or sales invoice on the [Process Payment Links](AR_51_35_00.md) \(AR513000\) form, do the following:

1.  Open the [Process Payment Links](AR_51_35_00.md) \(AR513500\) form.
2.  In the Selection area, specify the following settings:

    -   **Action**: *Create Payment Link*
    -   **Customer** \(optional\): The customer for whose documents you want to create payment links
    The system displays the documents that are ready for payment link creation. Each of these documents has:

    -   The *Open* or *Pending Processing* status if it’s a prepayment invoice
    -   No open payment links
    -   A processing center specified on the **Payment Links** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or [Invoices](SO_30_30_00.md) \(SO303000\) form
3.  In the table, select the unlabeled check box for each document that you want to include in processing, and click **Process** on the form toolbar; alternatively, click **Process All** to process all the displayed documents.

**Parent topic:**[Processing of Payment Links](../UserGuide/AR__con_Processing_Payment_Links.md)

