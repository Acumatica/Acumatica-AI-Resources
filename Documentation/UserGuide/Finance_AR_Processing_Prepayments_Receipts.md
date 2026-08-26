# Invoice Prepayments: Payment Receipts {#_87510f2e-760e-41a5-835d-96d86f5bded0 .concept}

After a prepayment for an invoice has been processed, you can provide your customer with proof of purchase by generating a payment receipt for the released transaction. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you can print the payment receipt or send an email with it.

You can generate payment receipts for documents with the *Payment*, *Prepayment*, *Refund*, *Voided Payment*, and *Voided Refund* types.

You can use this functionality if either of the following conditions is met:

-   The payment has been created with the *Credit Card*, *POS*, or *EFT* payment method, and has been captured and released.
-   The payment has been created with the *Cash*, *Check*, or *Direct Deposit* payment method, and has been released.

The PDF attachment in the generated email includes the payment details. You can also print this PDF report.

## Functionality Setup { .section}

To set up this functionality, do the following:

1.  On the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, select the **Send Payment Receipts Automatically** check box for each needed payment method.

    With this check box selected, payment receipts for the specified payment method will be sent automatically to customers from the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. Regardless of the state of this check box, users can also manually send payment receipts from this form.

2.  On the **Mailing &amp; Printing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, make sure that the *PAY RECEIPT* mailing ID is shown in the **Default Sources** table. The **Active** check box should be selected for this mailing ID.

    **Tip:** This row in the table defines the mapping between the mailing and the email template. If your organization needs to change or update this mapping, a system administrator can do it on the [Customer Classes](AR_20_10_00.md) \(AR201000\) or [Customers](AR_30_30_00.md) \(AR303000\) form.

3.  On the same tab, add mailing recipients to the **Default Recipients** table.

## Automatic Generation of Receipts { .section}

You use the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form to mass-process payment receipts and schedule the automatic sending of them. To generate emails with payment receipts for invoice prepayments, perform the following steps:

1.  On the [Print/Email AR Documents](AR_50_80_00.md) form, select *Email Payment Receipts* in the **Action** box.
2.  In the Selection area, specify the selection criteria for documents.

    The system displays documents of the following types: *Cash Sale*, *Cash Return*, *Payment*, *Prepayment*, *Voided Payment*, *Refund*, and *Voided Refund*. For payments, prepayments, and refunds displayed in the table, the **Emailed** check box is cleared on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

3.  Select the Included check box in the row or rows for the needed documents and then click **Process** on the form toolbar. Alternatively, click **Process All** to process all documents.

    The system generates an email message and attaches it to the document on the [Payments and Applications](AR_30_20_00.md) form. Once the email has been created and sent, the **Emailed** check box is selected for the document on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.


To schedule the automatic sending of payment receipts, an administrative user should perform the following instructions:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, select the **Send Payment Receipts Automatically** check box for the needed payment methods.
2.  On the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form, create a schedule. Once the schedule is created, payment receipts will be automatically sent to customers based on this schedule. For more information about schedules, see [Scheduling Automated Processing](SA_Scheduling_Automated_Processing_Mapref.md).

## Manual Generation of Receipts { .section}

On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you generate payment receipts by doing either of the following:

-   On the More menu of the form, clicking **Print Payment Receipt** to print the receipt in the PDF format.

    The system opens the printable document on the [Payment Receipt](AR_64_30_00.md) \(AR643000\) report. The **Payment Details** section at the bottom of the report shows the document type, transaction date, payment method, and the total amount paid.

    After printing the document, the system selects the **Printed** check box for it on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

-   On the More menu of the form, clicking **Email Payment Receipt**.

    The system generates an email message and attaches it to the form. Once the email has been created and sent, the **Emailed** check box is selected for the document on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.


**Parent topic:**[Processing Prepayments](../UserGuide/Finance_ARProcessing_Prepayments_Mapref.md)

