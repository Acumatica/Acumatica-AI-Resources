# Rounding of AP Document Amounts: Generated Transactions {#_dc0f9dfb-3b32-41aa-b36d-4b0a715956da .concept}

As you create and release AP documents with rounded amounts, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AP Bill and Credit Adjustment { .section}

When you create and release an AP bill or credit adjustment, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The account specified for the vendor in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Document amount \(rounded\)|
|Expense account|The account specified for the document in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|The sum of the document line amounts \(unrounded\)|0.00|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding loss amount|Rounding gain amount|

On the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for a Debit Adjustment { .section}

When you create and release a debit adjustment, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The account specified for the vendor in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|Document amount \(rounded\)|0.00|
|Expense account|The account specified for the document in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|0.00|The sum of the document line amounts \(unrounded\)|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding loss amount|Rounding gain amount|

On the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for a Cash Purchase { .section}

When you create and release a cash purchase, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The account specified for the document in the **Account** column on the **Details** tab of the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form|The sum of the document line amounts \(unrounded\)|0.00|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding loss amount|Rounding gain amount|
|Checking account|The GL account specified in the **Account** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for the cash account that is selected for the document on the [Cash Purchases](AP_30_40_00.md) form|0.00|Document amount \(rounded\)|

On the **Financial** tab of the [Cash Purchases](AP_30_40_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Rounding of AP Document Amounts](../UserGuide/Finance_Rounding_of_AP_Doc_Amounts_Mapref.md)

