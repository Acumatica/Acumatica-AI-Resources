# Vendor Relations: Generated Transactions {#_bc0bb0b3-b7f1-4432-9eb7-b247cbb331a7 .concept}

As you process a purchase, you create and process a purchase order, a purchase receipt, an inventory receipt, an AP bill, and a payment for this bill. To update the balance of the pay-to vendor when vendor relations are set up, the system generates the GL transactions described in the following sections.

## Transaction Generated on Release of an Inventory Receipt { .section}

When you create and release an inventory receipt generated from a purchase receipt with vendor relations set up, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|The account specified for the item in the **Inventory Account** box on the **GL Accounts** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Amount|0.00|
|Inventory Purchase Accrual account|The account specified for the item in the **PO Accrual Account** box on the **GL Accounts** tab of the [Stock Items](IN_20_25_00.md) form|0.00|Amount|

You can view the reference number of the GL batch generated for a particular inventory receipt in the **Batch Nbr.** box on the **Financial** tab of the [Receipts](IN_30_10_00.md) \(IN301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated on Release of an AP Bill { .section}

On release of an AP bill prepared for the purchase receipt with vendor relations, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The account specified for the pay-to vendor in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Inventory Purchase Accrual account|The account specified for the item in the **PO Accrual Account** box on the **GL Accounts** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated on Release of a Payment { .section}

On release of a payment for the AP bill with vendor relations set up, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Checking account|The GL account specified in the **Account** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for the cash account that is selected for the document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form|0.00|Amount|
|Accounts Payable account|The account specified for the pay-to vendor in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount|0.00|

You can view the reference number of the GL batch generated for a particular payment in the **Batch Nbr.** box on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Managing Vendor Relations](../UserGuide/Finance_Managing_Vendor_Relations_Mapref.md)

