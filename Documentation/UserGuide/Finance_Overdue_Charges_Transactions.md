# Overdue Charges: Generated Transactions {#_c015b196-ab7c-4e9f-8a85-583cc2dd833e .concept}

As you apply overdue charges, you create and process documents of the *Overdue Charge* type. You release this document by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. When you release an overdue document, to update customer balances, the system generates a GL transaction described in the following section.

## Transactions Generated for *Overdue Charge* Documents { .section}

When you create and release an overdue charge, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|The AR account specified in the original document, which is usually the default AR account of the customer \(specified on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\)|Amount|0.00|
|Overdue Charges account|The account specified on the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form for the particular charge|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

