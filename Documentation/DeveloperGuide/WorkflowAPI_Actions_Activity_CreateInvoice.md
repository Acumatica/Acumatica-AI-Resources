# Workflow Actions: To Configure the Conditional Appearance of the Action {#_6b36e522-cbb9-4138-a2e0-a4c42015dc54 .task}

This activity will walk you through the process of implementing an action that appears conditionally and adding it to a workflow.

## Story { .section}

For a repair work order to be billed and then paid, a user needs to create an invoice for the order. An invoice can be created for a repair work order only if it has the *Pending Payment* or *Completed* status and no invoice has been created for this repair work order. You need to implement the `CreateInvoice` action, as well as to configure the conditional availability of the associated button on the form toolbar and the equivalent command on the More menu.

## Process Overview { .section}

In the customization code, first, you will define the `CreateInvoice` action in a graph. Then you will add this action to the screen configuration and to the states of the workflow where the action should be available. You will also define a condition depending on which the action should be available.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following prerequisite activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
    3.  [Test Instance for Workflow Customization: To Configure the Instance](WorkflowAPI_PrepareInstance_Activity_CustomizationStory.md)
2.  Prepared the screen configuration and defined the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) prerequisite activity.
3.  Defined the `PendingPayment` and `Completed` workflow states by performing the [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md) and [Workflow Actions: To Implement an Action with Field Assignments](WorkflowAPI_Actions_Activity_WithFieldAssignments.md) prerequisite activities.

-   **[Step 1: Defining the Graph Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_CreateInvoice_DefineGraphAction.md)**  

-   **[Step 2: Configuring the Conditional Appearance of the Button](../DeveloperGuide/WorkflowAPI_Actions_Activity_CreateInvoice_ConfigureConditions.md)**  

-   **[Step 3: Testing the Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_CreateInvoice_Test.md)**  


**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

