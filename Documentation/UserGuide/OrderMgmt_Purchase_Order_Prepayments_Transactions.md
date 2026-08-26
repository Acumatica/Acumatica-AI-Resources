# Prepayments for Purchase Orders: Generated Transactions {#_44f38d69-c22a-429e-8beb-f1306694b501 .concept}

To process a prepayment for a purchase order, you create a prepayment request and pay it with a payment. Then you apply a prepayment document to an AP bill. During these processes, the system generates GL transactions described in the following sections.

## Transaction Generated on Applying AP Payment to Prepayment Request { .section}

When the payment that has been applied to a prepayment request is released, the system generates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash account|Vendor|0.00|Prepayment Amount|
|Prepayment account, if specified, or Accounts Payable account otherwise|Vendor|Prepayment Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP payment application on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated on Applying Prepayment to AP Bill { .section}

When a prepayment application to the accounts payable bill is released, the system creates a batch of the following transactions.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Prepayment account, if specified, or Accounts Payable account otherwise|Vendor|0.00|Prepayment Amount|
|Accounts Payable account|Vendor|Prepayment Amount|0.00|

You can view the reference number of the GL batch generated for application of prepayment to particular bill in the **Batch Number** box on the **Application History** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

For the list of transactions that are generated during the processing of a purchase, see [Purchases of Stock Items: Generated Transactions](OrderMgmt_Standard_Inventory_Purchase_Transactions.md).

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

