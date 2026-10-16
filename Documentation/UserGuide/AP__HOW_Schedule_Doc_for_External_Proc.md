# To Schedule a Document for External Payment Processing

You schedule a payment for external processing by BILL on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

## Before You Proceed

Make sure that integration with BILL has been set up as described in [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

Make sure that a bill with the BILL payment method has been created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Schedule a Document for External Processing

1.  Open the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Payment*
    -   **Application Date**: Tomorrow's date
    -   **Vendor**: The ID of the vendor set up for external processing
    -   **Payment Method**: The payment method set up for external payment processing \(inserted automatically\)
    -   **Cash Account**: The cash account number \(inserted automatically\)
    -   **Payment Amount**: The document's amount
3.  On the **Documents to Apply** tab, select a bill to which this payment will be applied.
4.  On the form toolbar, click **Remove Hold**.

    The payment status changes to *Pending Processing*.

5.  On the form toolbar, click **Print/Process**.
6.  On the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, which is opened, verify the following settings in the Selection area:
    -   **Payment Method**: The payment method set up for BILL
    -   **Cash Account**: The cash account specified in the payment
    -   **Currency**: *USD* \(inserted by default and unavailable\)
7.  Optional: Click **Verify Funding Account** on the form toolbar to verify the funding account in BILL for the current user.

    The system opens the **Payment Method** widget where you can add or change the payment method for BILL. After you select or update the payment method, the system opens the **Bank Details** widget where you can verify the bank details.

8.  Select the unlabeled check box in the table and on the form toolbar, click **Process** to process the payment.

    The system may prompt you to enter a six-digit verification code if the session has already expired.

9.  Enter the code and click **Verify**.

    **Attention:** The code will be sent to the phone number that you entered for the user when onboarding the company, as described in [To Configure a Connection to BILL](AP__HOW_Configure_Connection_to_BillCom.md).


When the processing is completed, the payment's processing status in the **External Processing** section of the **Remittance** tab on the [Checks and Payments](AP_30_20_00.md) form changes to *Scheduled*.

## To Schedule Documents with Expired Exchange Rates

1.  Open the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  In the Selection area, specify the following settings:
    -   **Payment Method**: A payment method set up for BILL
    -   **Cash Account**: A cash account specified in the documents you want to process
    -   **Currency**: *USD* \(inserted by default and unavailable\)
3.  Review the table.

    The documents for which the external exchange rate has expired have a warning message in the **Rate Expires On** column.

4.  Select the unlabeled check boxes for the documents that you want to process and click **Process** on the form toolbar.

    The system opens the **Process Payments with Expired Rates** dialog box.

5.  Select one of the following option buttons:

    -   **Apply Today's Rate and Schedule Payments**: The system will apply today's rate to the payments and schedule them.
    -   **Apply Today's Rate Without Scheduling**: The system will apply today's rate to the payments without scheduling. You can review these payments on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form and schedule them later.
    **Tip:** If you decide to skip the processing of payments with expired rates, you can select the **Skip Payments** option button.

6.  Click **Process** to close the dialog box and start the processing.

**Parent topic:**[Creating Documents for Processing in BILL](../UserGuide/AP__con_Create_Doc_External_Processing.md)

