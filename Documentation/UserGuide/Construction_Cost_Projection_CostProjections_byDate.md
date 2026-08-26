# Project Cost Projections: Date-Sensitive Cost Projections {#_9f2eef9a-3569-4cf7-b63e-ec9482defd31 .concept}

You can use date-sensitive cost projections to calculate projects' margins and analyze overbilling and underbilling for a specific date range. The following sections describe how you create and analyze cost projections.

## Creation of a Date-Sensitive Cost Projection {#section_oqj_q22_32c .section}

You create and process date-sensitive cost projections on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. When you create a cost projection, it has the *On Hold* status and can be edited.

For the new cost projection, you start by selecting the project you want to create a cost projection for and its calculation date. Based on the project's settings on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system selects or clears the check boxes in the **Budget Level** section in the Summary area. For the new cost projection, the budget level matches the budget level of the project; you can clear any of the selected check boxes to prepare the cost projection with a less detailed structure.

You then click **Load Lines** on the form toolbar to add the budget lines on the **Details** tab. You can change the values in the **Projected Cost at Completion**, **Projected Cost to Complete**, or **% Completed** column in the budget lines to be analyzed. The system will use the new values to recalculate the **Overbilling or Underbilling** amount in the Summary area. When you are done preparing a cost projection, you click **Remove Hold** on the form toolbar.

**Tip:** If an approval workflow is configured for date-sensitive cost projections, the responsible person should approve the cost projection after it has been removed from hold. For more information about configuring approvals, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

## Release of a Cost Projection {#section_btw_51j_12c .section}

You release a cost projection by clicking **Release** on the form toolbar of the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. For each projection date, only one cost projection can be released for each project.

You can release a cost projection regardless of its budget structure. Also, you can decide whether to update the **Projected Cost at Completion** values in the project's cost budget on the cost projection release if the following are true:

-   The cost projection's budget structure matches the structure of the project's cost budget.
-   There is no released cost projection with a projection date later than the projection date of the cost projection.

To update the **Projected Cost at Completion** values on release of the cost projection, you select the **Update Project Budget** check box prior to release.

**Tip:** You can then prepare the [Project WIP](PM_65_15_00.md) \(PM651500\) and [Project WIP Detail](PM_65_25_00.md) \(PM652500\) reports with the **Planned Cost Estimation** parameter set to *By Cost Projection* to use the amounts from the last released cost projection for calculations.

If you have released a cost projection with the **Update Project Budget** check box cleared, you can click **Hold** on the More menu to assign the cost projection the *On Hold* status and continue editing it.

## Creation of a Copy of a Cost Projection {#section_swg_h32_32c .section}

You can create a new cost projection based on an existing one. This gives you the latest actual values from the project budget in the cost projection lines, while preserving the manual changes that have been made to the **Projected Cost at Completion** values on the previous projection date. To do this, on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form, you do the following:

1.  Create a new cost projection for the same project with the same budget level.
2.  Add the budget lines by clicking **Load Lines** on the form toolbar.
3.  Click **Copy Projection** on the form toolbar. The system opens a dialog box with the list of released cost projections with the same project and project budget structure.
4.  In the dialog box, click the line with the cost projection to be copied and click **OK**. On the **Details** tab, the system copies the projection's **Projected Cost at Completion** amount to each line as long as this amount is less than or the same as the line's **Anticipated Cost** amount.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

