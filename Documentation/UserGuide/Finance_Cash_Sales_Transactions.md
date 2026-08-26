# Cash Sales and Cash Returns: Generated Transactions {#_4f581a2e-8728-41fa-9e98-2ebabe91d620 .concept}

As you process a cash sale, you create and process a document of the *Cash Sales* type. If you process a cash return, you create and process a document of the *Cash Return* type. To record the sale and the return, the system generates the GL transactions described in the following sections.

## Transaction Generated for a Cash Sale { .section}

When you create and release a *Cash Sale* document, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|An account specified for the payment method on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form|Amount|0.00|
|Sales Revenue account|The sales account specified for the customer on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

## Transaction Generated for a Cash Return { .section}

When you create and release a *Cash Return* document, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Sales Revenue account|The sales account specified for the customer on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|Amount|0.00|
|Cash account|An account specified for the payment method on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form|0.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

**Parent topic:**[Processing Cash Sales and Cash Returns](../UserGuide/Finance_Processing_Cash_Sales_Mapref.md)

