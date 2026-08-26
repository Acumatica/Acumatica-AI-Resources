# Debit and Credit Adjustments: Generated Transactions {#_bbf4186f-4802-4622-aebe-724144f6deaf .concept}

When you release a debit or credit adjustment, the system generates a batch of transactions to record a decrease or increase of liability.

A batch created upon release of the debit or credit adjustment is numbered in accordance with the numbering sequence assigned in the **Batch Numbering Sequence** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The batch number is specified on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transaction Generated for a Debit Adjustment {#section_yk3_njv_vxb .section}

On release of a debit adjustment, a batch of the following transactions is generated for a one-line adjustment.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The AP account specified for the vendor on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount|0.00|
|Expense account|The expense account specified for the document line in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|0.00|Amount|

The same transaction is generated for a debit adjustment for which credit terms are specified.

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for a Credit Adjustment {#section_bl3_njv_vxb .section}

When a one-line credit adjustment is released, a batch of the following transactions is generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The AP account specified for the vendor on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Expense account|The expense account specified for the document line in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|

A cash discount can be applied to a credit adjustment in accordance with the credit terms. As the credit adjustment is released and posted, the system adjusts the vendor Accounts Payable account and the specified expense account.

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for Refund Applied to a Debit Adjustment with a Cash Discount { .section}

On release of a refund that has been applied to a debit adjustment with a cash discount, a batch of the following transactions is generated for a one-line adjustment.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|The GL account linked to the cash account of the specified branch|Amount|0.00|
|Cash Discount account|The account specified for the vendor in the **Cash Discount Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|Cash discount amount|0.00|
|Accounts Payable account|The AP account specified for the vendor on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form|0.00|Amount + cash discount amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

