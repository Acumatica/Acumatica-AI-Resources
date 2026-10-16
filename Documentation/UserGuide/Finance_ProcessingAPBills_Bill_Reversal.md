# AP Bills: Bill Reversal

In Acumatica ERP, a bill cannot be deleted once it has been released; it only can be reversed.

You reverse a released bill that has a status of *Open* or *Closed* by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

When you reverse a bill that refers to a purchase receipt, this affects the vendor's Accounts Payable account rather than the related expense account.

A reversal debit adjustment is created when you click **Reverse** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) form for an original bill.

If the original bill contains lines linked to a purchase order or a purchase receipt, you cannot change the lines that contain stock items or non-stock items requiring a purchase receipt in the debit adjustment. An exception applies to lines linked to *Project Drop-Ship* purchase orders or their receipts—those lines remain available for editing.

When a reversal debit adjustment is released in the related PO receipt, the **Unbilled Qty.** is increased and the **Enter AP Bill** command becomes available.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

