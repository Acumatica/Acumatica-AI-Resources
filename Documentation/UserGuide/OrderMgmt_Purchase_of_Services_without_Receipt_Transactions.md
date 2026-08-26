# Purchases of Services Without Receipts: Generated Transactions {#_c6054cb4-557f-4501-9706-3684efd26c2b .concept}

To process a purchase of services without a purchase receipt, you create an AP bill. On release of the AP bill, the system generates GL transactions described in the following section.

## Transaction Generated on AP Bill Release {#section_q5n_cks_hlb .section}

When an AP bill prepared for a purchase order is released, the system creates a batch of the following entries.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|0.00|Amount|
|PO Accrual account|Item|Amount|0.00|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Purchases of Services Without Receipts](../UserGuide/OrderMgmt_Purchase_of_Services_without_Receipt_Mapref.md)

