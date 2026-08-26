# WIP Labor Costs in Cost-Plus Projects: Implementation Checklist {#_a53a0b58-16a1-4385-a86e-d9aead12d4c0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for billing a cost-plus projects with WIP costs, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially bill a cost-plus projects with WIP costs, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Make sure that an asset account for work in progress has been created. For details on configuring the chart of accounts, see [Chart of Accounts](GL__CON_Chart_of_Accounts.md).|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that an account group of the *Asset* type for work in progress has been created and the WIP account has been added to the account group. For details on configuring account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).|
|[Allocation Rules](PM_20_75_00.md) \(PM207500\) form|Make sure that an allocation rule is configured as described in [WIP Labor Costs in Cost-Plus Projects: General Information](Projects_Allocation_WIP_CP_General_Info.md).|
|[Billing Rules](PM_20_70_00.md) \(PM207000\) form|Make sure that all the needed billing rules have been configured to process allocation transactions posted to the WIP account group. For details on configuring billing rules, see [Billing Rules: General Information](Billing_Rules_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the **Automatically Release Allocations** check box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in [WIP Labor Costs in Cost-Plus Projects: Process Activity](Projects_Allocation_WIP_CP_Process_Activity.md).

**Parent topic:**[Accounting for WIP Labor Costs in Cost-Plus Projects](../UserGuide/Projects_Allocation_WIP_CP_Mapref.md)

