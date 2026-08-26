# Rounding of AR Document Amounts: Generated Transactions {#_8abb42d3-a70c-4470-ac36-6f38a029eb04 .concept}

As you create and release AR documents with rounded amounts, the system generates the GL transactions described in the following sections.

## Transaction Generated for AR Invoice and Debit Memo { .section}

When you create and release an AR invoice or debit memo, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The account specified for the customer in the **AR Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|Document amount \(rounded\)|0.00|
|Sales Revenue account|The account specified for the document in the **Account** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|0.00|The sum of the document line amounts \(unrounded\)|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding gain amount|Rounding loss amount|

On the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for a Credit Memo { .section}

When you create and release a credit memo, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The account specified for the customer in the **AR Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Document amount \(rounded\)|
|Sales Revenue account|The account specified for the document in the **Account** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|The sum of the document line amounts \(unrounded\)|0.00|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding loss amount|Rounding gain amount|

On the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for a Cash Sale { .section}

When you create and release a cash purchase, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Sales Revenue account|The account specified for the document in the **Account** column on the **Details** tab of the [Cash Sales](AR_30_40_00.md) \(AR304000\) form| |The sum of the document line amounts \(unrounded\)|
|Rounding Gain/Loss account|One of the accounts specified for the base currency on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form|Rounding loss amount|Rounding gain amount|
|Checking account|The GL account specified in the **Account** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for the cash account that is selected for the document on the [Cash Sales](AR_30_40_00.md) form|Document amount \(rounded\)| |

On the **Financial** tab of the [Cash Sales](AR_30_40_00.md) form, the **Batch Nbr.** box shows the reference number of the GL batch. You can click this link to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Rounding of AR Document Amounts](../UserGuide/Finance_Rounding_of_AR_Doc_Amounts_Mapref.md)

