# External Processing Statuses in AvidXchange

The **Processing Status** box in the **External Processing** section on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form shows the status that Acumatica ERP has received from AvidXchange. This status can be one of the following.

|Status|Description|
|------|-----------|
|*ACH Credit Issued*|The payment has been included in bank transactions.|
|*Authorized*|The card payment has been authorized but not posted yet.|
|*Cleared*|The funds have cleared and have been deposited into the vendor's account.|
|*Cleared - With Exception\(s\)*|One of the child payments has been voided, and the other child payments have cleared.|
|*Debit Requested*|AvidXchange has requested a debit from your bank account.|
|*Declined*|The card issuer or the bank has declined the payment.|
|*Error*|An error has occurred with the payment.|
|*Funds Received*|Your account has been debited, and the payment is ready to be disbursed to the vendor.|
|*Issued to Supplier*|The check has been printed and mailed to the vendor.|
|*Multiple*|The payment has been disbursed by multiple disbursement methods.|
|*Partially Authorized*|The authorized amount is less than the total amount due.|
|*Partially Posted*|Part of the payment has been posted.|
|*Processing*|The payment is in the initial processing state after approval.|
|*Refund ACH Cleared*|The refund has cleared.|
|*Refund - Approved*|The refund has been approved by AvidXchange.|
|*Refund Issued*|The refund has been sent to the bank.|
|*Refund Processing*|The refund is being processed.|
|*Refund Requested*|A refund has been initiated.|
|*Sent to Check Printer*|The payment has been sent to AvidXchange's check printing partner.|
|*VCC Processing*|The payment has been delivered by the method that the vendor requested.|
|*Void*|The payment has been canceled before the vendor was paid.|
|*Void - After Issued*|The payment has been canceled after the check was issued.|
|*Void - Refund*|The payment has been voided after the debit, and a refund has been initiated.|
|*Void - Re-Issue*|The vendor has requested a new check.|

**Parent topic:**[Processing Payments Through AvidXchange](../UserGuide/AP__con_Create_Doc_AvidXchange.md)

