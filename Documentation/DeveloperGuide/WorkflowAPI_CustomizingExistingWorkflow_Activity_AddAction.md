# Workflow Customization: To Add an Action to an Existing Workflow {#_29131a64-ed56-42e0-9d3e-18a342bb7e2d .task}

This activity will walk you through the process of adding an action to an existing workflow.

## Story { .section}

To quickly continue working on a repair work order after an invoice has been prepaid, a user needs to be able to invoke a command that opens the corresponding repair work order from the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. You will customize the workflow on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form to add the **View Repair Work Order** command and its underlying action, which opens the repair work order. The **View Repair Work Order** command should be displayed under a new category called **Repair Work Orders**.

## Process Overview { .section}

To define a new action, in your extension library, you will first define the new action in a graph extension, and then you will create an extension for the updated workflow. In this extension, you will add a new action category and the new action to the screen configuration.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of workflow states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.
3.  Performed the [Workflow Events: To Use an Existing Event](WorkflowAPI_Events_Activity_UseExisting.md) prerequisite activity to implement the `Paid` workflow state.

-   **[Step 1: Adding a Graph Action](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction_AddGraphAction.md)**  

-   **[Step 2: Adding a Workflow Extension](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddNewAction_AddWorkflowExtension.md)**  

-   **[Step 3: Defining a Workflow Action](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddNewAction_AddWorkflowAction.md)**  

-   **[Step 4: Testing the New Action](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddNewAction_Test.md)**  


**Parent topic:**[Customizing a Predefined Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Mapref.md)

