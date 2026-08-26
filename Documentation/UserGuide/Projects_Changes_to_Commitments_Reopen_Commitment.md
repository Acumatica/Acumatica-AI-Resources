# Change Orders for Commitments: Commitment Reopening {#_63a25b5a-d87a-6574-bbd1-03a8937d40cd .concept}

In some situations, you may need to make changes directly to the purchase order or subcontract that has already been completed or canceled. The following sections describes how you can reopen project commitments to be able to make changes to them.

## Reopening a Commitment Not Linked to a Change Order {#section_rzb_byt_k5b .section}

If a commitment has no related change orders and you do not want to track the change separately, you can reopen the commitment and modify it directly as follows:

-   To make changes to a purchase order with the *Canceled*, *Completed*, or *Closed* status, you open it on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form and click **Reopen Order** on the More menu. The system assigns the order the *On Hold* status and makes it available for editing.
-   To make changes to a subcontract with the *Canceled* or *Closed* status, you open it on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form and click **Reopen Order** on the More menu. The system assigns the subcontract the *On Hold* status and makes it available for editing.

If you need to make a change to the commitment and be able to track it, you need to create a change order for this commitment.

## Reopening a Commitment Linked to a Change Order {#section_h3k_dyt_k5b .section}

If a commitment has at least one related change order, you cannot reopen it directly on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or [Subcontracts](SC_30_10_00.md) \(SC301000\) form.

You reopen a purchase order or subcontract linked to a change order by creating a change order with an amount of *0* and adding the purchase order or subcontract to it on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form. For the commitment lines of a change order with an amount of 0, the system assigns the *Reopen* status to indicate that no line amounts will be affected. When the change order is released, the system assigns the purchase order or subcontract the *Open*, *Pending Printing*, or *Pending Email* status. Also, the system clears the check boxes in the **Completed**, **Closed**, and **Canceled** columns of the corresponding lines on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form or [Subcontracts](SC_30_10_00.md) form. In the reopened line, the system updates the **Retainage Amount** and **Retainage Percent** columns with the values of the corresponding commitment line of the change order.

**Parent topic:**[Tracking Changes to Commitments](../UserGuide/Projects_Changes_to_Commitments_Mapref.md)

