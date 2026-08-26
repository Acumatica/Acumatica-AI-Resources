# AR Prepayment Invoices: Generated Transactions {#_2ba88c8c-9c03-4c25-b1e1-b11c37f76b3e .concept}

As you process a prepayment invoice, you start by creating and releasing this prepayment invoice. Then you apply a payment to the prepayment invoice, and finally, you apply the prepayment invoice to the AR invoice. To track the movements of invoice balances, including taxes, the system generates the GL transactions described in the following section.

## Transactions Generated for a Prepayment Invoice { .section}

When you create and release a prepayment invoice, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Specified in the prepayment invoice in the **AR Account** box of the **Financial** tab on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|Amount| |
|Prepayment account|Specified in the prepayment invoice in the **Prepayment Account** box of the **Financial** tab on the [Invoices and Memos](AR_30_10_00.md)form| |Amount|

You can view the reference number of the GL batch in the prepayment invoice on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form.

When you apply a payment to the prepayment invoice and release the application, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|Specified in the payment document, in the **Cash Account** box of the Summary area of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form|Amount| |
|AR account|Specified in the prepayment invoice in the **AR Account** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form| |Amount|
|Tax on AR Prepayment account|For an applicable tax, specified in the **Tax on AR Prepayment Account** box of the **GL Accounts** tab on the[Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount| |
|Tax Payable account|For an applicable tax, specified in the **Tax Payable Account** box of the **GL Accounts** tab on the[Taxes](TX_20_50_00.md) form| |Tax amount|

You can view the reference number of the GL batch in the payment document on the **Financial** and **Application History** tabs of the [Payments and Applications](AR_30_20_00.md) form and in the prepayment invoice on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form.

When you apply the prepayment invoice to an AR invoice and release the application, the system generates the following general ledger transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Prepayment account|Specified in the prepayment invoice in the **Prepayment Account** box of the **Financial** tab on the [Invoices and Memos](AR_30_10_00.md) form|Application amount| |
|AR account|Specified in the AR invoice in the **AR Account** box of the **Financial** tab on the [Invoices and Memos](AR_30_10_00.md) form| |Application amount|
|Tax Payable account|For an applicable tax, specified in the **Tax Payable Account** box of the **GL Accounts** tab on the[Taxes](TX_20_50_00.md) form|Tax amount| |
|Tax on AR Prepayment account|For an applicable tax, specified in the **Tax on AR Prepayment Account** box of the **GL Accounts** tab on the[Taxes](TX_20_50_00.md) form| |Tax amount|

You can view the reference number of the GL batch in the prepayment invoice on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Processing Prepayment Invoices in AR](../UserGuide/Finance_Prepayment_Invoices_Mapref.md)

