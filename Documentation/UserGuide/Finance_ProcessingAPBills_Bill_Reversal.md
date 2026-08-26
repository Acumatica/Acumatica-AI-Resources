# AP Bills: Bill Reversal {#_fef9d371-d7a1-44aa-9d7e-19e2db11d69b .concept}

In Acumatica ERP, a bill cannot be deleted once it has been released; it only can be reversed.

You reverse a released bill that has a status of *Open* or *Closed* by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

When you reverse a bill that refers to a purchase receipt, this affects the vendor's Accounts Payable account rather than the related expense account.

A reversal debit adjustment is created when you click **Reverse** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for an original bill. If the original bill contains lines linked to a purchase order or a purchase receipt, you can't make changes in the following settings for the debit adjustment:

-   The lines linked to a purchase order or a purchase receipt if these lines contain stock items and non-stock items requiring a purchase receipt
-   The **Project** and **Project Task** columns for lines with the *Service* items if these lines are linked to a purchase order, purchase receipt, or subcontract

When a reversal debit adjustment is released in the related PO receipt, the **Unbilled Qty.** is increased and the **Enter AP Bill** command becomes available.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

