# Creating Documents for Processing in BILL

If your Acumatica ERP is integrated with an external payment processor, such as BILL, you can take advantage of the following benefits:

-   You don't need to maintain vendors’ bank account details if your vendors are also connected to BILL. This information is stored in BILL's database.
-   You can save time on payment processing because BILL automatically processes payments when you pay a document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

For more information about the setup of BILL integration, see [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

## Creating a Document for External Processing

When you create a document on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you specify the BILL payment method in the **Payment Method** box on the **Financial** tab. The system uses this payment method when you pay the document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Important:** The BILL payment method with the *External Payment Processing* means of payment can be specified for payments and prepayments only.

If payment processing is needed for the document, on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, the system may prompt you to enter a verification code for BILL.

**Attention:** You have to enter your phone number for the first time when a user is created. If multiple companies are onboarded, a new user is created for each company.

The system prompts you to enter a verification code if the session has expired.

For payments and prepayments you pay through BILL, the system shows the **External Processing** tab on the [Checks and Payments](AP_30_20_00.md) form.

When a payment or prepayment has been successfully processed in BILL, the document is released automatically in Acumatica ERP. For this document, the **Cleared** check box is selected in the **Payment Info** section of the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form. The system also fills in the **Clearing Date** box. The table on the **External Processing** tab is populated with the information about processing, scheduling, disbursing, voiding, and other operations.

**Attention:** For documents with the *External Payment Processing* means of payment, you can't override the remittance address. Thus, on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) form, the **Override Address** check box in the **Remittance Address** section is read-only.

## Voiding a Payment

On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the **Void** command appears and becomes available if the following conditions are met:

-   Voiding is allowed by BILL.

    **Attention:** If the processing status doesn't allow the voiding of payments, the **Void** command is hidden. It also becomes hidden when you click **Void** and while you’re waiting for BILL to process this request.

-   The document has the *Pending Processing*, *Balanced*, *Closed*, or *Open* status.

If you void a payment in Acumatica ERP before the processing starts, BILL just cancels the payment. In Acumatica ERP, the payment gets the *Voided* status without being released. On the **External Processing** and **Remittance** tabs of the [Checks and Payments](AP_30_20_00.md) form, the processing status is *Canceled* instead of *Voided*.

If you void a processed payment in Acumatica ERP—that is, when money was transferred from the bank account—BILL voids the payment and refunds the money to the account. Acumatica ERP processes this payment in the standard way: It releases the payment, creates a document with the *Voided Payment* type, and changes the original payment's status to *Voided*. On the **External Processing** and **Remittance** tabs of the [Checks and Payments](AP_30_20_00.md) form, the processing status is also *Voided*.

-   **[External Processing Statuses in BILL](../UserGuide/AP__con_BILL_Statuses.md)**  

-   **[Distributing Debit Adjustments Among Bills](../UserGuide/AP__con_BILL_Distribute_Dr_Adjustments.md)**  

-   **[Processing International Payments](../UserGuide/AP__con_BILL_International_Payments_Processing.md)**  

-   **[Using the Pay Faster Service](../UserGuide/AP__con_Pay_Faster_Service_BILL.md)**  

-   **[To Create an International Payment](../UserGuide/AP__HOW_Create_BILL_International_Payment.md)**  

-   **[To Schedule a Document for External Payment Processing](../UserGuide/AP__HOW_Schedule_Doc_for_External_Proc.md)**  


