# Project Budget: Implementation Checklist {#_a53a0b58-16a1-9966-a86e-d9aead34d413 .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing project budgets, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially manage project budgets, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|Notes|
|----|----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.| |
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|If you are going to use inventory items in the revenue budget of your projects, on the **General** tab, select *Detailed* in the **Revenue Budget Update** box. With this option selected, if a transaction has an inventory item specified and the revenue budget has no line with this item, the system creates a new budget line with this item.

 With the *Summary* option selected \(the default option\), if such a line exists in the revenue budget, the system updates it with the empty item code \(*N/A*\) instead of the inventory item of the transaction. If no such line exists, the system creates a new budget line with the empty item code.

 The system updates the cost budget similarly based on the option selected in the **Cost Budget Update** box on the **General** tab.

|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all needed account groups have been configured. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that all needed labor items, non-stock items, and services have been defined. For more information, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md), [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md), and [Service Items: General Information](Services_GeneralInfo.md), respectively.|**Important:** Make sure that *Purchases* is selected in the **Post Cost to Expenses** box on the **Price/Cost** tab; otherwise, the expenses related to the non-stock item won’t be recorded to the cost budget of the applicable project.

|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|If you need to make the revenue budget more detailed by adding the inventory item to the budget structure, select *Task and Item* in the **Revenue Budget Level** box. With this setting, a user can select an inventory item in a revenue budget line.

 If you need to make the cost budget less detailed by excluding the inventory item from the budget structure, select *Task* in the **Cost Budget Level** box. With this setting, a user will not be able to select an inventory item in a cost budget line.

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of managing the project budget by specifying additional settings as follows:

-   To allow a user to enter subcontract lines and purchase order lines related to a project if the project budget key in these lines was not initially specified in the cost budget of the project, select the **Allow Adding New Items on the Fly** check box on the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   To cause the system to control whether an entered document is within the cost budget of a project, select *Show a Warning* in the **Budget Control** box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.
-   To change the default empty item code \(*&lt;N/A&gt;*\), which is selected in a project budget line to indicate that no specific item is associated with the line, specify the needed value in the **Empty Item Code** box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

With these settings specified, users in your company can manage the project budget quickly and accurately.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you manage the project budget by performing instructions similar to those described in [Project Budget: To Configure and Update the Budget](Projects_Budget_Process_Activity.md).

**Parent topic:**[Managing the Project Budget](../UserGuide/Projects_Budget_Mapref.md)

