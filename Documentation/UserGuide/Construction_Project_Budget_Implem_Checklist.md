# Construction Project Budget: Implementation Checklist {#_4bcc5ce7-5e2f-49c3-8d57-42bd3ec60cf1 .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing budget in construction projects, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_mpm_ty4_brb .section}

We recommend that before you initially manage project budgets, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Construction* and *Projects* features are enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\)|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

 Also make sure that *Summary* is selected in the **Revenue Budget Update** box and *Detailed* is selected in the **Cost Budget Update** box on the **General** tab.

|
|[Account Groups](PM_20_10_00.md) \(PM201000\)|Make sure that all needed account groups have been configured. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md)|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

 Also, make sure that *Task* is selected in the **Revenue Budget Level** box and *Task and Item* is selected in the **Cost Budget Level** box on the **Summary** tab \(**Project Properties** section\).

|

## Other Settings That Affect the Workflow {#section_npm_ty4_brb .section}

You can affect the workflow of managing the project budget by specifying additional settings as follows:

-   If you are going to use inventory items in the revenue budget of your projects, select *Detailed* in the **Revenue Budget Update** box on the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. With this option selected, if a transaction has an inventory item specified and the revenue budget has no line with the same inventory item, the system creates a new budget line with this item.

    With the *Summary* option selected \(the default option\), the system updates the revenue budget line with the empty item code \(*N/A*\) instead of the inventory item of the transaction if such a line exists; otherwise, a new budget line with the empty item code is created.

    Similarly, the system updates the cost budget based on the option selected in the **Cost Budget Update** box on the **General** tab \(**General Settings** section\).

-   If you need to make the revenue budget more detailed by adding the inventory item to the budget structure, select *Task and Item* in the **Revenue Budget Level** box on the **Summary** tab \(**Project Properties** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form. As a result, you will be able to select an inventory item in a revenue budget line.
-   If you need to make the cost budget less detailed by excluding the inventory item from the budget structure, select *Task* in the **Cost Budget Level** box on the **Summary** tab \(**Project Properties** section\) of the [Projects](PM_30_10_00.md) form. As a result, you will not be able to select an inventory item in a cost budget line.
-   If you want to rename the default empty item code \(*&lt;N/A&gt;*\), change the value in the **Empty Item Code** box on the **General** tab of the [Projects Preferences](PM_10_10_00.md) form. The default empty item code is selected in a project budget line to indicate that no specific item is associated with the line.
-   To allow a user to enter subcontract lines and purchase order lines related to a project if these lines have not been initially specified in the cost budget of the project, select the **Allow Adding New Items on the Fly** check box on the [Projects](PM_30_10_00.md) form.
-   To cause the system to control whether an entered document is within the cost budget of a project, select *Show a Warning* in the **Budget Control** box on the **General** \(**General Settings** section\) tab of the [Projects Preferences](PM_10_10_00.md).

With these settings and entities specified, users in your company can manage the project budget quickly and accurately with a minimum of manual actions.

**Parent topic:**[Managing the Construction Project Budget](../UserGuide/Construction_Project_Budget_Mapref.md)

