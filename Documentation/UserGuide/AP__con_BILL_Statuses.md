# External Processing Statuses in BILL

The **Processing Status** box in the **External Processing** section on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form shows the status that Acumatica ERP has received from BILL. This status can be one of the following.

|Status|Description|
|------|-----------|
|*Canceled*|The payment has been canceled.|
|*Cancellation in Progress*|The payment cancellation is in progress.|
|*Cleared*|The payment has been settled in the vendor's bank account.|
|*Delivered*|The payment is successfully sent, but the vendor has not yet claimed it.|
|*Disbursement Failed, Action Needed*|The disbursed payment is returned but not voided. You can void the payment and receive a credit, or void the payment and reissue it.|
|*Disbursement Failed, Vendor Bank Rejected*|The disbursed payment is returned but not voided. You must ask the vendor to update the bank account details in BILL.|
|*Disbursement on Hold*|The disbursement is manually held for BILL to complete risk verification. BILL may contact you about the payment.|
|*Disbursement on Hold, Payer in Review*|The disbursement is manually held for BILL to complete risk verification. BILL may contact you to complete verification.|
|*Funding Failed, Action Needed*|BILL attempted but could not debit funds from your funding account. BILL disbursed the payment, and you must wire the funds to BILL.|
|*Funding Failed, Voided*|The payment is voided and is not eligible for a credit to you.|
|*Funding on Hold*|BILL has not attempted to debit your account because your organization's risk verification is incomplete.|
|*Funding Started*|BILL has started debiting your funding account, but the process is not complete.|
|*Funds Escheated*|The disbursed payment funds haven't been claimed by the vendor and the funds have been turned over to the state.|
|*Partially Claimed*|A virtual card payment has been claimed by the vendor for less than the full amount.|
|*Processed*|BILL has debited your funding account.|
|*Ready to Fund*|BILL is ready to start debiting your funding account.|
|*Scheduled*|The payment is scheduled.|
|*Sent*|The payment is issued or reissued but not delivered or settled.|
|*Undefined*|None of the listed actions has been taken.|
|*Voided*|The payment is voided and is credited to you.|

**Parent topic:**[Creating Documents for Processing in BILL](../UserGuide/AP__con_Create_Doc_External_Processing.md)

