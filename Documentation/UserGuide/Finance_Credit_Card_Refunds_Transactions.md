# Credit Card Refunds: Generated Transactions {#_993c49ff-4e0a-4265-a7d6-da2297fc2ca2 .concept}

As you process credit card refunds, you create and release a document with the *Refund* type. To update the customer balance, the system generates the GL transaction described in the following section.

## Transactions Generated for a Credit Card Refund {#section_bzp_4jv_vxb .section}

When you create and release a refund for a credit card payment, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Credit Card account|GL account linked to the cash account specified for the original payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form|00.00|Amount|
|Accounts Receivable|The account specified in the **AR Account** box on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Processing Credit Card Refunds](../UserGuide/Finance_Credit_Card_Refunds_Mapref.md)

