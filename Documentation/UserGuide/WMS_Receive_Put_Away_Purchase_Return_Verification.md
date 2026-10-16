# Receiving and Putting Away Operations: Purchase Return Verification

If the *Receiving* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can add a verification step to the automated processing of purchase returns. A purchase return is a purchase receipt with the *Return* type created on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

With this workflow, a warehouse worker confirms the quantities that were picked, and a warehouse manager reviews the return before releasing it. The workflow is available if the **Verify Returns Before Release** check box is selected on the **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

## Workflow for Verification of a Purchase Return

1.  *Warehouse manager prepares the return*.

    The warehouse manager creates a purchase return with the *Return* type and, if needed, prints a pick list by using the **Print Pick List** command on the [Purchase Receipts](PO_30_20_00.md) form.

2.  *Warehouse worker picks the items*.

    The warehouse worker switches to Return mode on the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form, selects the purchase return, and enters the locations, items, and quantities. The worker can enter only locations listed in the purchase return.

3.  *Warehouse worker confirms the return*.

    When at least one item has been picked, the worker clicks **Confirm Return** or scans `*confirm*return`. The system assigns the purchase return the *Picked* status, copies the picked quantities to **Receipt Qty.**, and removes lines for which no quantity was picked.

4.  *Warehouse manager verifies and releases the return*.

    The warehouse manager reviews the return on the [Purchase Receipts](PO_30_20_00.md) form. If no corrections are needed, the manager releases the purchase return.


**Parent topic:**[Automated Receiving and Putting Away Operations](../UserGuide/WMS_Receive_Put_Away_Mapref.md)

