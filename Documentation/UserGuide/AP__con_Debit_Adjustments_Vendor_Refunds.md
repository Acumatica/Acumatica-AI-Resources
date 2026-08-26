# Debit and Credit Adjustments: Refunds {#_93fefa07-d12c-410d-b03c-5269dff26f53 .concept}

In accounts payable, refunds often arise when credit adjustments exceed outstanding bills. A vendor refund can settle all related AP documents at once.

On the **Documents to Apply** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you can apply documents of the following types to a vendor refund: *Bill*, *Credit Adjustment*, *Debit Adjustment*, and *Prepayment*.

If you click **Load Documents** on the table toolbar, the system loads documents of all supported types.

The system calculates the application amount as follows.

``` {#codeblock_wcb_ng2_13c}
Application Amount = Amount Paid (Debit Adj.) + Amount Paid (Prepayment) - Amount Paid (Bill) - Amount Paid (Credit Adj.)
```

As a result, you can settle all related AP documents together—without creating separate refund or adjustment transactions.

Releasing a refund creates the following transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Amount|0.00|
|Accounts payable account|0.00|Amount|

If a refund is paid in a foreign currency, the realized gain or loss account may also be updated by the amount resulting from the differences in exchange rates for the original debit adjustment and the refund.

## Correction of a Refund {#section_z33_njv_vxb .section}

You can correct a released refund by voiding it and recording the correct refund. For step-by-step instructions, see [To Void a Refund](AP__HOW_To_Void_Vendor_Refund.md).

You void the refund on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form by selecting the needed document of the *Refund* type and then clicking **Void** on the form toolbar. The system creates a document of the *Voided Refund* type with the same reference number as the refund has, and reverses the original refund.

Before you release the voided refund, you can change the date of the voided refund in the **Application Date** box in the Summary area of the form. The date specified in this box should be the date when the voided refund is released \(**Payment Date**\) and when the related batch was created \(**Transaction Date**\). You can also enter a description of the voided refund in the **Description** box in the Summary area of the [Checks and Payments](AP_30_20_00.md) form.

On release of the voided refund, the system changes the status of the refund to *Voided* and the status of the voided refund to *Closed*. On the **Application History** tab, you can see the original document for which the refund has been applied with a negative amount. The following reversing transaction for the voided refund is recorded to the general ledger when the voided refund is released.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount|0.00|

If the original document for which the refund has been applied has the *Closed* status, when the refund is voided, the system changes the document’s status to *Open*. You can again apply documents to the original document.

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

