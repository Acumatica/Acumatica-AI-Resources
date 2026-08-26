# Project Budget: Automatic Generation of the Revenue Budget {#_c12cd124-2ac9-2147-a687-fa3aadcc1e82 .concept}

If you have configured the cost budget for a project, you can automatically populate the revenue budget on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form based on the budgeted project costs.

To generate the revenue budget for a project, you click **Auto-Budget Revenue** on the More menu of the [Projects](PM_30_10_00.md) form. For the calculation of the revenue budget, the project must be properly configured as follows:

-   The project status is *In Planning* or *Active*.
-   The cost budget of the project is configured on the **Cost Budget** tab.
-   The billing rule specified for project tasks has time and material steps.
-   Optionally, an allocation rule is specified for each project task.

To calculate the project revenue, the system emulates project billing for the budgeted time and materials by using the billing rule specified for each project task. During this billing, the system uses virtual project transactions with the quantities and amounts that are equal to the revised budgeted quantities and amounts of the cost budget. If an allocation rule is specified for each project task, before emulating billing, the system emulates project allocation. Based on the quantities and amounts calculated during the emulated project billing, the system populates the revenue budget of the project.

If the revenue budget already has the same line or lines as the emulated budget, the system overrides the existing values with the calculated ones.

**Parent topic:**[Managing the Project Budget](../UserGuide/Projects_Budget_Mapref.md)

