# Invoice Payments: Release of Application Records {#_885c8ba7-2e22-4489-bde7-45d23f78c5ed .concept}

In most cases, when you release applications records, the system does not generate any transactions that need to be posted to the general ledger.

The system generates additional transactions when any of the following need to be recorded:

-   The applied cash discount
-   The written-off balance
-   The realized gain or loss \(RGOL\) incurred if payments and outstanding documents are in a foreign currency
-   The amount transferred between different AR subaccounts or between different branches for which balancing entries are needed in your system that are involved in an application

This topic describes the forms you may use to release application records of a payment document and the details of releasing application records, as well as the details of the generation of the GL batch.

## Releasing Payment Applications {#section_kr4_4jv_vxb .section}

In Acumatica ERP, you can add application records to a payment document when you record the payment document and after you have released it. In both cases, you can use either of the following forms when you need to release an application record:

-   [Payments and Applications](AR_30_20_00.md): You release an application record for an open payment by clicking the **Release** button on the form toolbar.
-   [Release AR Documents](AR_50_10_00.md) \(AR501000\): You use this mass-processing form to release the application records for a particular open payment or multiple open payments.

Each time you release an application record for a payment document, the system does the following:

-   On the [Payments and Applications](AR_30_20_00.md) form, sets the **Application Date** and **Application Period** for the payment to the date and the period, respectively, of the application record whose release closed the payment.
-   Moves the application record from the **Documents to Apply** tab to the **Application History** tab.
-   Generates any application transactions.
-   Decreases the available payment balance for the applied amount. If the available payment balance becomes 0, the system changes the payment status to *Closed*.

When you add application records to a payment document with the *On Hold* or *Balanced* status and then release the payment document, the system simultaneously releases its application records. If the application records require some transactions to be recorded, the system adds these transactions to a General Ledger batch with the payment transactions. You can view the batch details by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form or by clicking the link in the **Batch Number** column on the **Application History** tab of this form.

**Tip:** The system displays the batch number in the **Batch Number** column on the **Application History** tab even if there were no application transactions. In this case, the batch will contain only payment transactions.

When you add application records to a released payment document \(with the *Open* status\), you release only application records. If the application records require some transactions to be recorded, the system generates an additional General Ledger batch with the application transactions. You can view the batch details by clicking the link in the **Batch Number** column on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form.

## Releasing an Application with a Cash Discount {#section_qr4_4jv_vxb .section}

When you add an invoice for which a cash discount is valid to the **Documents to Apply** tab, the system automatically fills in the **Cash Discount Taken \(Payment currency\)** column for the invoice with the cash discount amount defined by the credit terms associated with the invoice. You can decrease the cash discount amount, if needed. When you then release a payment with an application record that contains an applied cash discount, the system generates a batch of the following transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts receivable account|0.00|Payment amount + cash discount amount|
|Cash discount account|Cash discount amount|0.00|

## Releasing an Application with a Written-Off Amount {#section_sr4_4jv_vxb .section}

You write off some balance along with the application by specifying the amount and the reason code in the **Balance Write-Off** and **Write-Off Reason Code** columns, respectively. When you release a payment with an application record that contains a positive written-off amount, the system generates a batch of the following transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts receivable account|0.00|Payment amount + write-off amount|
|Reason code account \(the account associated with the reason code\)|Write-off amount|0.00|

If the payment amount is greater than the invoice amount to which this payment is applied, you can enter a credit write-off directly on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form to write off a small overpaid amount and close both the payment and the invoice. If you do this, the amount you enter in the **Balance Write-Off** column should be a negative value and the reason code in the **Write-Off Reason Code** column should be the one specified for credit write-offs. When you release a payment with an application record that contains a negative written-off amount, the system generates a batch of the following transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts receivable account|0.00|Payment amount + write-off amount|
|Reason code account \(the account associated with the reason code\)|0.00|–\(Write-off amount\)|

## Releasing an Application with a RGOL {#section_vr4_4jv_vxb .section}

Suppose that you apply a payment in a foreign currency to an outstanding document in the same foreign currency and the exchange rate on the invoice date is less than the exchange rate on the payment date. When you release the payment with its application record, the system generates a batch of the following transactions in the foreign currency.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account \(foreign currency\)|Payment amount \(in the foreign currency\)|0.00|
|Accounts receivable account|0.00|Payment amount \(in the foreign currency\)|
|Realized gain / loss account|0.00|0.00|

If you view the batch in the base currency by clicking the **View Base** button in the Summary area of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, the system displays the same transaction in the base currency.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account \(foreign currency\)|Payment amount \(in the base currency\)|0.00|
|Accounts receivable account|0.00|Payment amount–RGOL amount \(in the base currency\)|
|Realized gain / loss account|0.00|RGOL amount \(in the base currency\)|

## Releasing an Application with Different AR Accounts {#section_yr4_4jv_vxb .section}

Suppose that you recorded a payment document to some accounts receivable account and did not specify any application records. When you release this payment, the system generates the batch with the payment transactions as follows.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Payment amount|0.00|
|Accounts receivable account of the payment|0.00|Payment amount|

You can view the batch details by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

Then you apply this open payment to an outstanding document that was recorded to another AR account. When you release the application record, the system generates a batch of the following transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts receivable account of the payment|Payment amount|0.00|
|Accounts receivable account of the outstanding document|0.00|Payment amount|

You can view the batch details by clicking the link in the **Batch Number** column on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

