# Parent-Child Project Configuration: Cost Collection and Billing with Task Visibility

The system uses the project task’s visibility settings to control where transactions can be entered and billed. These visibility settings help prevent you from:

-   Entering costs in both the parent and child tasks
-   Running billing from the wrong project

When child tasks are linked to a parent task, the system uses the child project's **Billing Project** setting on the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form to determine:

-   The project task that can be used for cost collection
-   The project task that can be used for billing

If *Parent Project* is selected as the **Billing Project** of the child project, the child project is used for cost collection, and billing is performed from the parent project. In this case, the visibility settings of the linked tasks are updated on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form as follows:

-   The parent task is available for billing but not for cost collection: Only the **GL**, **AR**, and **SO** check boxes are selected.
-   The child task is available for cost collection but not for billing: The **AP**, **PO**, **IN**, **CA**, **CRM**, **Time Entries**, and **Expenses** check boxes are selected.

These visibility settings are read-only for a parent or child task, and only a user with the *Project Accountant* role can override them.

If *Current Project* is selected as the **Billing Project** of the child project on the [Projects](../UserGuide/PM_30_10_00.md) form, the child project keeps its own billing and cost collection. In this case, the linked task’s visibility settings are updated as follows on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) form:

-   The parent task isn't available for billing or cost collection; all visibility check boxes are cleared. Only a user with the *Project Accountant* role can override them.
-   The child task keeps billing and cost-entry capabilities; the visibility check boxes remain selected and available for changing.

**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

