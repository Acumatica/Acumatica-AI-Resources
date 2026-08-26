# Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow {#_e51e1c0e-c119-43c7-a0de-6ffd437eb3e2 .task}

This activity will walk you through the process of performing the initial steps for implementing a workflow for a form that has no predefined workflows.

## Story { .section}

Suppose that you need to define a workflow for the Repair Work Orders \(RS301000\) form, which has no predefined workflows.

## Process Overview { .section}

In this activity, you will prepare the basic components of a workflow by performing the following steps in the extension library:

1.  Defining the graph extension where the workflow will be implemented
2.  Defining a list of the states of the workflow
3.  Overriding the screen configuration method
4.  Specifying the state-identifier field

## System Preparation { .section}

Configure your instance by performing the following prerequisite activities:

1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)

Make sure that you have the Repair Work Orders \(RS301000\) form available in the system and located in the Phone Repair Shop workspace.

-   **[Step 1: Defining the Workflow Class](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew_DefineExtension.md)**  

-   **[Step 2: Defining the Set of States of the Workflow](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew_DefineStates.md)**  

-   **[Step 3: Overriding the Configure Method](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew_OverrideConfig.md)**  


**Parent topic:**[Preparing a Screen Configuration](../DeveloperGuide/WorkflowAPI_ScreenConfig_Mapref.md)

