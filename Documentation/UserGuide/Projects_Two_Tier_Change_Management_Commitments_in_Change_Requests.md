# Change Requests: Selecting Commitments in Change Requests

When you prepare a change request, you may already know which purchase order or subcontract will be affected by the requested project change. You can specify a commitment document or line directly in an estimation line of a change request. You can also add existing commitment lines to the change request by using the **Add Commitments** dialog box on the [Change Requests](PM_30_85_00.md) \(PM308500\) form.

## Adding Lines to an Open Commitment

When a purchase order or subcontract already exists for a project change, you can link it to an estimation line of a change request with the *On Hold* status. In the estimation line on the **Estimation** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form, you specify the project budget key—project task, account group, cost code \(if applicable\), and inventory item \(if applicable\). Then you select the **Create Commitment** check box, specify the **Commitment Type**, and select the purchase order or subcontract in the **Commitment Nbr.** column.

You can select a subcontract or a purchase order of the *Normal* or *Project Drop-Ship* type. The document may have any status except *On Hold*, *Pending Approval*, or *Rejected*.

When you select the commitment number, *New Line* is inserted in the **Status** column. This means that a new line will be added to the selected subcontract or purchase order when the related change order is released.

Alternatively, you can select multiple lines from existing project subcontracts or purchase orders at once. To do this, you click the **Add Commitments** button on the table toolbar of the **Estimation** tab. In the **Add Commitments** dialog box, which opens, you then select the needed documents.

## Updating an Existing Commitment Line

To update a commitment line related to an estimation line on the [Change Requests](PM_30_85_00.md) \(PM308500\) form, you:

1.  Select the commitment number in the **Commitment Nbr.** column.
2.  Select the commitment line number in the **Commitment Line Nbr.** column.

The system displays either of the following values in the **Status** column:

-   *Update* if the line is open: The line will be updated on release of the related change order.
-   *Reopen* if the line is completed or canceled: The line will be reopened on release of the related change order.

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

