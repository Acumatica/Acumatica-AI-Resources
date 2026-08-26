# Grouping Invoices: Implementation Checklist {#_a53a0234-16a1-4385-a86e-d9aead34d4c0 .concept}

To ensure that the system is configured properly for project billing, make sure that the features and settings listed in the table are configured as described in the following table.

|Form|Validation of Settings|
|----|----------------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the **Projects** check box is selected.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all necessary account groups are configured.|
|[Billing Rules](PM_20_70_00.md) \(PM207000\) form|Make sure that all necessary billing rules are configured. In each billing rule, make sure that the same **Invoice Group** is specified for the needed billing steps.|
|[Projects](PM_30_10_00.md) \(PM207000\) form|Make sure that the following conditions are met: -   The status of the project is *Active*, *Completed*, or *Suspended*.
-   The status of the project tasks of this project is *Active* or *Completed*.
-   A billing rule is assigned to each project task.

|

## Other Settings That Affect Workflow { .section}

You can configure a project task so that it is billed separately. To do this, select the **Bill Separately** check box on the **Summary** tab \(**Billing and Allocation Settings** section\) of the [Project Tasks](PM_30_20_00.md) \(PM302000\) form.

**Parent topic:**[Grouping Invoices](../UserGuide/Projects_Grouping_Invoices_Mapref.md)

