# Overhead in the Project Budget: Implementation Checklist {#_d08a0b58-16ab-4385-a86e-d9aead34d4c0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for considering the project overhead, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially consider the project overhead, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that an account group of the *Expense* type for the overhead has been created. For details on configuring account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).|
|[Allocation Rules](PM_20_75_00.md) \(PM207500\) form|Make sure that an allocation rule is configured as described in [Overhead in the Project Budget: Implementation Activity](Projects_Allocation_Overhead_Implem_Activity.md).|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the **Automatically Release Allocations** check box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in [Overhead in the Project Budget: Process Activity](Projects_Allocation_Overhead_Process_Activity.md).

**Parent topic:**[Capturing Project Overhead](../UserGuide/Projects_Allocation_Overhead_Mapref.md)

