# Reclassification Results {#_b073dfd3-5c44-48f8-a717-441b9f24e684 .concept}

You can view the results of your actions during each stage of the processing of unknown payments.

In this topic, you will read about the journal transactions and the documents the system generates when you record and reclassify the unknown payments.

## Reclassifying Incoming Unknown Payments {#section_swc_kjv_vxb .section}

On the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form, you select the bank cash account to which you have recorded the unknown payment. In the table, you locate the record, and by clicking the batch number link, you can view the following journal transactions, which are generated when the incoming payment is initially created.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|0.0|Amount|
|\(Bank\) Cash Account|Amount|0.0|

When you reclassify the incoming payment as an Accounts Receivable document, the system generates a customer payment with the *On Hold* status that you can view and edit on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. When you release the payment, the system updates the balances of the involved customer, of the corresponding Accounts Receivable account \(which is specified for the customer on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form\), and of the unknown payments account.

You can view the resulting journal transactions by clicking the batch number link on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|Amount|0.0|
|Accounts Receivable Account|0.0|Amount|

When you reclassify the incoming payment as an Accounts Payable document, the system generates a vendor refund with the *On Hold* status that you can view and edit on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. To process the vendor refund in the system, you need to apply it against an open debit adjustment or prepayment, depending on the reason of the refund. \(You have to create and process the appropriate document in the system, if such a document has not been recorded yet.\) When you release the refund and its applications, the system updates the balances of the involved vendor, of the corresponding Accounts Payable account \(which is specified for the vendor on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form\) and of the unknown payments account.

You can view the resulting journal transactions by clicking the batch number link on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|Amount|0.0|
|Accounts Payable Account|0.0|Amount|

## Reclassifying Outgoing Unknown Payments {#section_ywc_kjv_vxb .section}

On the [Cash Account Details](CA_30_30_00.md) form, you select the bank cash account to which you have recorded the unknown payment. In the table, you locate the record, and by clicking the batch number link, you can view the following journal transactions, which are generated when the outgoing payment is initially created.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|Amount|0.0|
|\(Bank\) Cash Account|0.0|Amount|

When you reclassify the outgoing payment as a Accounts Receivable document, the system generates a customer refund with the *On Hold* status that you can view and edit on the [Payments and Applications](AR_30_20_00.md) form. To process the customer refund in the system, you need to apply it against an open credit memo, payment, or prepayment, depending on the reason of the refund. \(You have to create and process the appropriate document in the system, if such a document has not been recorded yet.\) When you release the refund and its applications, the system updates the balances of the involved customer, of the corresponding AR account \(which is specified for the customer on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form\), and of the unknown payments account.

You can view the resulting journal transactions by clicking the batch number link on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) form.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|0.0|Amount|
|Accounts Receivable Account|Amount|0.0|

When you reclassify the outgoing unknown payment as an Accounts Payable document, the system generates a prepayment with the *On Hold* status that you can view and edit on the [Checks and Payments](AP_30_20_00.md) form. When you release the prepayment, the system updates the prepayment balance of the involved vendor and the balances of the corresponding AP account \(which is specified for the vendor on the **GL Accounts** tab of [Vendors](AP_30_30_00.md)\) and of the unknown payments account.

You can view the resulting journal transactions by clicking the batch number link on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

|Account|Debit|Credit|
|-------|-----|------|
|Unknown Payments Account|0.0|Amount|
|Accounts Payable Account|Amount|0.0|

**Parent topic:**[Reclassification of Unknown Payments](../UserGuide/CA__con_Reclassification_of_Payments.md)

