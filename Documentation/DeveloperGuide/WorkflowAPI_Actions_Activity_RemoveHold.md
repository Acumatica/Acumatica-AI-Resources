# Workflow Actions: To Implement a Simple Action {#_dedb3260-e4e9-4e99-9db0-f1fcf3eab7e9 .task}

The following activity will walk you through the process of implementing a workflow action that can later be used to trigger a transition.

## Story { .section}

On the Repair Work Orders \(RS301000\) form, you need to create a workflow action that can later be used to trigger a transition. The command that corresponds to this action should be displayed in the **Processing** category of the More menu.

## Process Overview { .section}

In your extension library, you will implement the `ReleaseFromHold` graph action with an empty method and add this action to the screen configuration of the Repair Work Orders \(RS301000\) form. You will also add the predefined **Processing** category to the workflow and specify this category for the `ReleaseFromHold` action.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following prerequisite activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) prerequisite activity.

-   **[Step 1: Implementing the Action in the Graph](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold_ImplementGraphAction.md)**  

-   **[Step 2: Defining a Category for the Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold_DefineCategory.md)**  

-   **[Step 3: Adding the Action to the Workflow](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold_AddWorkflowAction.md)**  


**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

