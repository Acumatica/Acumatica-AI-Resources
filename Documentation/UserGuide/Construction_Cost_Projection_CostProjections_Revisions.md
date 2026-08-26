# Project Cost Projections: Cost Projections with Revisions {#_9a4b9ff2-7f04-4831-9e85-362b89a40461 .concept}

The following sections explain how to define the budget detail level of cost projection revisions and create the cost projections for a project.

## Cost Projection Classes {#section_tkk_fc3_s4b .section}

On the [Cost Projection Classes](PM_20_35_00.md) \(PM203500\) form, you create a cost projection class and define the budget detail level of the cost projections based on the class. To do this, you specify the records that are included in the budget detail level by selecting or clearing the following check boxes: **Cost Task**, **Account Group**, **Cost Code**, and **Inventory ID**.

When you create a cost projection revision for a project on the [Cost Projection](PM_30_50_00.md) \(PM305000\) form, its budget detail level is determined by the cost projection class that you select for this cost projection. The settings of the project's cost budget determine which cost projection classes you can use for this project. The project’s detail level is specified in the **Cost Budget Level** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form and can be one of the following: *Task*, *Task and Cost Code*, *Task and Item*, or *Task, Item, and Cost Code*.

For instance, suppose that a project has the *Task and Cost Code* cost budget level. To create a cost projection revision for the project, you can use a cost projection class with any of the following levels of detail:

-   Cost task only—that is, only the **Cost Task** check box is selected on the [Cost Projection Classes](PM_20_35_00.md) form
-   Cost code only—that is, only the **Cost Code** check box is selected on the [Cost Projection Classes](PM_20_35_00.md) form
-   Both cost task and cost code, meaning that the **Cost Task** and **Cost Code** check boxes are selected on the [Cost Projection Classes](PM_20_35_00.md) form
-   Cost task, cost code, and account group, meaning that the **Cost Task**, **Cost Code**, and **Account Group** check boxes are selected on the [Cost Projection Classes](PM_20_35_00.md) form.

    **Tip:** You can release this cost projection revision because it includes the same detail level as the project budget currently has.


A cost projection class will not be applicable for this project if it is not compatible with the budget structure. For example, if the **Cost Task** and **Inventory ID** check boxes are selected on the [Cost Projection Classes](PM_20_35_00.md) form for a cost projection class, it cannot be used for a project with the *Task and Cost Code* cost budget level.

If you restructure the project budget, you then need to create a new cost projection revision of the cost projection class that has the appropriate level of detail.

## Creation of a Cost Projection Revision {#section_omf_vc2_32c .section}

You create and process revisions of cost projections on the [Cost Projection](PM_30_50_00.md) \(PM305000\) form. A newly created cost projection revision has the *On Hold* status and can be edited. You can create as many revisions of a cost projection as are needed for a project.

In a new cost projection revision, you specify the cost projection class, the revision ID, and the project for which you need to estimate the costs. Then on the table toolbar of the **Details** tab, you click **Add Budget Lines**. In the **Add Budget Lines** dialog box, which opens, you select the Included check box in the rows of the cost budget lines of the project for which you need to estimate costs. Then you click **Add Lines** and close the dialog box. The selected cost budget lines are added to the cost projection revision on the **Details** tab.

For each line, the projected values are calculated by using the following formulas:

-   `Projected Cost to Complete = Budgeted Cost - (Actual + Unbilled Committed Cost)` if `Budgeted Cost - (Actual + Unbilled Committed Cost)` is greater than 0; otherwise, `Projected Cost to Complete = 0`
-   `Projected Cost at Completion = Projected Cost to Complete + (Actual + Unbilled Committed Cost)`
-   `Projected Quantity to Complete = Budgeted Quantity - (Actual + Unbilled Committed Quantity)` if `Budgeted Quantity - (Actual + Unbilled Committed Quantity)` is greater than 0; otherwise, `Projected Quantity to Complete = 0`
-   `Projected Quantity at Completion = Projected Quantity to Complete + (Actual + Unbilled Committed Quantity)`
-   `Projected Completed (%) = (Actual + Committed Open Cost) / Projected Cost at Completion * 100%`
-   `Projected Variance Quantity = Projected Quantity at Completion – Budgeted Quantity`
-   `Projected Variance Cost = Projected Cost at Completion – Budgeted Cost`

You can change the projected values in a cost projection revision to see how this affects the cost budget. To change these values, for each cost projection revision line, in the **Mode** column, you select a data entry mode, which defines how the projected values in the line are recalculated:

-   *Auto*: If you manually modify any of the projected values in the row, the other values are recalculated automatically.
-   *Manual Quantity*: If you manually modify any of the projected values, the other values are recalculated automatically, except for **Projected Quantity to Complete**, **Projected Quantity at Completion**, and **Projected Variance Quantity**, which are preserved.
-   *Manual Cost*: If you manually modify any of the projected values, the other values are recalculated automatically, except for **Projected Cost to Complete**, **Projected Cost at Completion**, and **Projected Variance Cost**, which are preserved.
-   *Manual*: If you manually modify any of the projected values, the system does not recalculate the other projected values.

For each cost projection revision, in the Summary area of the [Cost Projection](PM_30_50_00.md) form, the system provides the total values \(in the **Totals by Revision** section\) along with the overall project profitability information \(in the **Totals by Project** section\).

When you are done preparing a cost projection revision, you click **Remove Hold** and then **Release** on the form toolbar of the [Cost Projection](PM_30_50_00.md) form. The system releases the cost projection revision and assigns it the *Released* status. The projected values in the project are copied from the latest released revision of the cost projection to the corresponding cost budget lines of the specified project on the [Projects](PM_30_10_00.md) form.

**Tip:** If approval workflow is configured for cost projection revisions, the responsible person should approve the cost projection after it has been removed from hold. For more information about configuring approvals, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

## Copying of Cost Projection Revisions {#section_pmf_vc2_32c .section}

You can create a new revision of a cost projection based on the revision you are currently viewing on the [Cost Projection](PM_30_50_00.md) \(PM305000\) form by clicking **Copy Revision** on the form toolbar. In the **Copy Revision** dialog box, which opens, you specify the ID of the new revision. You can also select whether the system should refresh the budget during the copying, and whether it should copy files and notes from the original cost projection revision to the copied one. Then you click **OK** to create a copy of the cost projection revision.

In the created cost projection revision, the system copies the following information from the original cost projection:

-   The project for which the cost projection is created
-   The cost projection class, which specifies the level of detail of the cost projection being created
-   The description of the cost projection

On the **Details** tab of the [Cost Projection](PM_30_50_00.md) form, the system inserts all the cost budget lines that have been added to the original cost projection revision. The system specifies the **Projected Cost to Complete**, **Projected Cost at Completion**, **Projected Variance Cost**, and **Projected Completed \(%\)** values in the lines of the new cost projection as follows:

-   If the **Refresh Budget** check box was selected in the **Copy Revision** dialog box, the system specifies the latest budgeted values in these lines. That is, the projected values are copied from the latest released revision whose cost projection class has the same project budget detail level as the project budget currently has.
-   If the **Refresh Budget** check box was cleared, the system specifies the budgeted values from the revision that is being copied.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

