# Change Orders for Commitments: Commitment Updates on Release of Change Orders {#_26d0890e-2c0b-4120-a6b4-f871e1a192be .concept}

The actions that the system performs on the release of a change order to commitment depends on the status specified in the **Status** column of the change order line on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form. The following sections describe the effects of releasing a change order to commitment: which actions the system performs for lines with different statuses and how the existing project commitments and project budget are affected.

## Processing a Line with the Update Status { .section}

On release of a commitment change order with a line with the *Update* status on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, the system updates the existing line of the corresponding commitment document. The commitment document can be a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or subcontract on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form; the line is updated on the **Details** tab of either form.

The values in the commitment lines are updated as follows:

-   **Order Qty.**: The original **Order Qty.** of the commitment line plus \(or minus\) the **Quantity** of the corresponding commitment line of the change order.
-   **Unit Cost**: The **Unit Cost** of the corresponding commitment line of the change order.
-   **Amount**: The original **Amount** of the commitment line plus \(or minus\) the **Amount** of the corresponding commitment line of the change order.

    **Tip:** The system does not recalculate the amount based on the updated unit cost and quantity.

-   **Ext. Cost**: The original **Ext. Cost** of the commitment document line, plus \(or minus\) the **Amount** of the corresponding commitment line of the change order.
-   **Requested**: The **Order Date** of the corresponding commitment line of the change order.
-   **Completed** and **Closed** check boxes: Cleared.
-   **Canceled** check box: Cleared, except for the following case.

    In a commitment document line, the **Order Qty.** of lines with stock items cannot be *0*. If a change order line with a negative amount is applied to a commitment document line with the stock item so that the resulting quantity must be *0*, the system does not change the **Order Qty.**, sets the **Unbilled Qty.** to *0*, and selects the **Canceled** check box in the line to indicate that this line was canceled.

-   **Retainage Amount** and **Retainage Percent**: The **Retainage Amount** and **Retainage Percent** of the corresponding commitment line of the change order.

## Processing a Line with the New Line Status { .section}

On release of a commitment change order with a line that has the *New Line* status on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, the system adds a new line to the existing commitment document. The commitment document can be a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or subcontract on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form; the line is added to the **Details** tab of either form.

The column values in the newly created commitment line are specified as follows:

-   **Order Qty.**: The **Quantity** of the corresponding commitment line of the change order
-   **Unit Cost**: The **Unit Cost** of the corresponding commitment line of the change order
-   **Ext. Cost**: The **Amount** of the corresponding commitment line of the change order
-   **Requested**: The **Order Date** of the corresponding commitment line of the change order
-   **Tax Category**: The category of the corresponding commitment line of the change order
-   **Retainage Amount** and **Retainage Percent**: The **Retainage Amount** and **Retainage Percent** of the corresponding commitment line of the change order.

## Processing a Line with the New Document Status { .section}

On release of a commitment change order with any *New Document* lines on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, the system groups these lines by vendor and creates a new commitment document of the type specified in the **Commitment Type** column of the change order line. The system creates a separate purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or subcontract on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form for each vendor and specifies the settings in the document as follows:

-   The date of the created purchase order or subcontract is the earliest **Order Date** of the commitment lines of the change order.
-   The **Requested** date of each purchase order line is the **Order Date** of the corresponding commitment line of the change order.
-   The description of the created purchase order or subcontract is `Change Order #CONumber`, where `CONumber` is the reference number of the change order.
-   The tax category in each line of the created purchase order or subcontract is the tax category that is specified in the corresponding commitment line of the change order
-   **Retainage Amount** and **Retainage Percent**: The **Retainage Amount** and **Retainage Percent** of the corresponding commitment line of the change order.

    **Attention:** If you specify a nonzero retainage amount in the change order line, the system will select the **Apply Retainage** check box in the created new document, regardless of the retainage settings of the vendor.


## Processing a Line with the Reopen Status { .section}

On release of a commitment change order with a line with the *Reopen* status on the **Commitments** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, The system assigns the purchase order or subcontract the *Open*, *Pending Printing*, or *Pending Email* status. For more information, see [Change Orders for Commitments: Commitment Reopening](Projects_Changes_to_Commitments_Reopen_Commitment.md).

## Updating the Project Budget { .section}

For each purchase order line on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or subcontract line on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form that was updated on a change order release, the system updates the corresponding project commitment. For each commitment document line that was created from a change order, the system creates a new project commitment. If the project has a cost budget line with the same project task, account group, and inventory item on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form as the updated or newly created purchase order line has, the system updates the cost budget line of the project. Otherwise, the system creates a new cost budget line for the project based on the commitment.

In each updated cost budget line, the columns on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) form are updated \(or left unchanged\) as follows:

-   **Original Committed Quantity** is not changed.
-   **Original Committed Amount** is not changed.
-   **Revised Committed Quantity** is set to the sum of the **Order Qty.** of all the related commitment document lines.
-   **Revised Committed Amount** is set to the sum of the **Ext. Cost** of all the related commitment document lines.
-   **Committed CO Quantity** is set to **Revised Committed Quantity** minus **Original Committed Quantity**.
-   **Committed CO Amount** is set to **Revised Committed Amount** minus **Original Committed Amount**.
-   **Committed Open Amount** is set to **Open Amount** of the commitment document line.

**Parent topic:**[Tracking Changes to Commitments](../UserGuide/Projects_Changes_to_Commitments_Mapref.md)

