# Creating Documents for External Payment Processing {#_6121ca53-812b-445e-994f-7612e7ca35ef .concept}

If your Acumatica ERP is integrated with an external payment processor, such as BILL, you can take advantage of the following benefits:

-   You won't need to maintain vendor's bank account details if your vendors are also connected to BILL. This information will be stored in BILL's database.
-   You can save your time on processing payments because BILL will automatically process them when you pay a document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

For more information about the setup of BILL integration, see [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

**Important:** Currently, external payment processing can be used only by companies located in the United States. The payments and prepayments through integration with BILL must be in US dollars.

## Create a Document for External Processing { .section}

When you create a document on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you specify the BILL payment method in the **Payment Method** box on the **Financial** tab. The system will use this payment method when you pay the document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Important:** The BILL payment method with the *External Payment Processing* means of payment can be specified for payments and prepayments only.

If payment processing is needed for the document, on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, the system may prompt you to enter a verification code for BILL.

**Attention:** You will have to enter your phone number for the first time when a user is created. If multiple companies are onboarded, a new user will be created for each company.

The system will prompt you to enter a verification code if the session has expired.

For payments and prepayments you pay through BILL, the system shows the **External Processing** tab on the [Checks and Payments](AP_30_20_00.md) form.

When a payment or prepayment has been successfully processed in BILL, the document is released automatically in Acumatica ERP. For this document, the **Cleared** check box is selected in the **Payment Info** section of the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form and the **Clearing Date** box is filled in. The table on the **External Processing** tab is populated with the information related to processing, scheduling, disbursing, voiding, and other operations.

## External Processing Statuses { .section}

You can also view the external processing status of a document on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

The **Processing Status** box displays the document's status received from BILL. The processing status can be one of the following:

-   *Scheduled*: The payment is scheduled.
-   *Cancellation in Progress*: The payment cancellation is in progress.
-   *Canceled*: The payment has been canceled.
-   *Ready to Fund*: BILL is ready to start debiting the your funding account.
-   *Funding Started*: BILL has started debiting your funding account, but the process is not complete.
-   *Funding on Hold*: BILL has not attempted to debit your account. The risk verification of your organization is incomplete.
-   *Voided*: The payment is voided and is credited to you.
-   *Funding Failed, Voided*: The payment is voided and is not eligible for a credit to you.
-   *Processed*: BILL has debited your funding account.
-   *Disbursement on Hold*: The disbursement is manually held for BILL to complete risk verification. BILL may reach out to you about the payment.
-   *Disbursement on Hold, Payer in Review*: The disbursement is manually held for BILL to complete risk verification. BILL may reach out to you to complete verification.
-   *Sent*: The payment is issued or reissued but not delivered or settled.
-   *Disbursement Failed, Action Needed*: The disbursed payment is returned but not voided. You can either void and credit or void and reissue the payment.
-   *Disbursement Failed, Vendor Bank Rejected*: The disbursed payment is returned but not voided. You must notify the vendor to update their bank account in BILL.
-   *Delivered*: The payment is successfully sent but the vendor is yet to take action to settle the payment.
-   *Funding Failed, Action Needed*: BILL attempted but could not debit funds from your funding account. BILL disbursed the payment and you must wire the funds to BILL.
-   *Funds Escheated*: The disbursed payment funds haven't been claimed by the vendor.
-   *Partially Claimed*: A virtual card payment has been claimed by the vendor for less than the full amount.
-   *Cleared*: The disbursed payment is successfully settled by the vendor's bank account.
-   *Undefined*: None of the above actions has been taken.

**Attention:** For documents with the *External Payment Processing* means of payment, you can't override the remittance address. Thus, on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) form, the **Override Address** check box in the **Remittance Address** section is read-only.

## Void a Payment { .section}

On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the **Void** command appears and becomes available if the following conditions are met:

-   Voiding is allowed by BILL.

    **Attention:** Some processing statuses don't allow voiding payments. In this case, the **Void** command will be hidden. It will also become hidden when you click **Void** and while waiting for BILL to process this request.

-   The document has the *Pending Processing*, *Balanced*, *Closed*, or *Open* status.

If you void a payment in Acumatica ERP before the processing started, BILL will just cancel the payment. In Acumatica ERP, it will get the *Voided* status without being released. On the **External Processing** and **Remittance** tabs of the [Checks and Payments](AP_30_20_00.md) form, the processing status will be *Canceled* instead of *Voided*.

If you void a processed payment in Acumatica ERP, that is, when money was transferred from the bank account, BILL will void the payment and refund the money to the account. Acumatica ERP will process this payment in a standard way—release the payment, create a document with the *Voided Payment* type, and change the original payment's status to *Voided*. On the **External Processing** and **Remittance** tabs of the [Checks and Payments](AP_30_20_00.md) form, the processing status will also be *Voided*.

-   **[Distributing Debit Adjustments Among Bills](../UserGuide/AP__con_BILL_Distribute_Dr_Adjustments.md)**  

-   **[Processing International Payments](../UserGuide/AP__con_BILL_International_Payments_Processing.md)**  

-   **[To Schedule a Document for External Payment Processing](../UserGuide/AP__HOW_Schedule_Doc_for_External_Proc.md)**  


