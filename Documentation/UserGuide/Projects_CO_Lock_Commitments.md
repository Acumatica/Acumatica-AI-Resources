# Single-Tier Change Management: Locking Commitments {#_c17cd444-9753-4e6e-a687-fa3abcda1e16 .concept}

If internal cost commitment tracking is configured in the system and the change order workflow is configured for a particular project, after the purchases on the project have been agreed on with vendors and entered into the system, you can lock the commitments for the project.

When you decide to prevent users from directly creating new commitments for the project, you select the project on the [Projects](PM_30_10_00.md) \(PM301000\) form and click **Lock Commitments** on the More menu. Until you unlock the commitments for the project, you can process new purchases for the project only with change orders.

If commitments are locked for the project, users cannot perform the following actions:

-   Creating new purchase orders for the project on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form
-   Adding new lines to the existing purchase orders for the project on the [Purchase Orders](PO_30_10_00.md) form
-   Creating new subcontracts for the project on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form

    **Tip:** Subcontracts are available in the system if the *Construction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   Adding new lines to the existing subcontracts for the project on the [Subcontracts](SC_30_10_00.md) form

However, users can edit or delete the existing commitments that have been created before the lock by editing or deleting the corresponding purchase order lines or subcontract lines directly.

Once you decide to permit users to create new purchase orders and make changes to existing purchase orders for the project on the [Purchase Orders](PO_30_10_00.md) form, you unlock the ability to process project commitments directly for the project by clicking **Unlock Commitments** on the More menu of the [Projects](PM_30_10_00.md) form.

For more information on commitments, see [Committed Costs: General Information](Projects_Commitments_GeneralInfo.md).

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

