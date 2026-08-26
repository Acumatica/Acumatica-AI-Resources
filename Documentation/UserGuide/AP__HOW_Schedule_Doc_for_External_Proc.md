# To Schedule a Document for External Payment Processing {#_65b67ad4-aa25-4b93-bfe7-0dc95e5f39a4 .task}

You schedule a payment for external processing by BILL on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

## Before You Proceed { .section}

Make sure that integration with BILL has been set up as described in [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

Make sure that a bill with the BILL payment method has been created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Schedule a Document for External Processing { .section}

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

        **Important:** Only payments in U.S. dollars can be processed through BILL.

7.  Optional: Click **Verify Funding Account** on the form toolbar to verify the funding account in BILL for the current user.

    The system opens the **Payment Method** widget where you can add or change the payment method for BILL. After you select or update the payment method, the system opens the **Bank Details** widget where you can verify the bank details.

8.  Select the unlabeled check box in the table and on the form toolbar, click **Process** to process the payment.

    The system may prompt you to enter a 6-digit verification code if the session has already expired.

9.  Enter the code and click **Verify**.

    **Attention:** The code will be sent to the phone number that you entered for the user when onboarding the company, as described in [To Configure a Connection to BILL](AP__HOW_Configure_Connection_to_BillCom.md).


When the processing is completed, the payment's processing status in the **External Processing** section of the **Remittance** tab on the [Checks and Payments](AP_30_20_00.md) form changes to *Scheduled*.

**Parent topic:**[Creating Documents for External Payment Processing](../UserGuide/AP__con_Create_Doc_External_Processing.md)

