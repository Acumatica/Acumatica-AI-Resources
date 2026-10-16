# Single-Tier Change Management: Creating a Change Order

You can create a change order for a project from the [Projects](PM_30_10_00.md) \(PM301000\) form or directly on the [Change Orders](PM_30_80_00.md) \(PM308000\) form.

In a change order with the *On Hold* status, you can add the following on the **Revenue Budget** and **Cost Budget** tabs:

-   An existing budget line, whose values you can increase and decrease
-   A new budget line based on an existing project task
-   A budget line based on the change order task

When you edit a change order line, you can see the following values, with *CO* indicating *change order*:

-   The original amount in the **Original Budgeted Amount** column
-   The released and draft change order amounts in the **Previously Approved CO Amount** and **Other Draft CO Amount** columns
-   The updated amount in the **Revised Budgeted Amount** column

When you save a change order with the *On Hold* status, its quantity and amount values increase the **Potential CO Quantity** and **Potential CO Amount** of the corresponding project budget lines on the [Projects](PM_30_10_00.md) \(PM301000\) form.

If a change order line has a budget key for which the project does not have a budget line, the system creates the corresponding project budget line when you save the change order. If the *Copy Settings on Budget Line Creation From* box on the [Projects Preferences](Projects PreferencesPM_10_10_00.dita) \(PM101000\) form is set to *Source Document*, the system populates the new project budget line with the **Description**, **UOM**, and **Unit Rate** from the change order line.

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

