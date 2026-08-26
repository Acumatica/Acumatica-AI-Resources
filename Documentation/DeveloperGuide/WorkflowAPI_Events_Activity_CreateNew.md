# Workflow Events: To Create a Workflow Event {#_7181e4bb-8703-4d3c-a909-6c831414eb49 .task}

This activity will walk you through the process of creating a workflow event and implementing a transition by using this event.

## Story { .section}

Suppose that a repair work order should be assigned the *Ready for Assignment* status when the invoice created for the order is prepaid in the specified percent. For a repair work order to be prepaid, a user will first create an invoice for this order and then apply a prepayment to the invoice. If the percent of the applied prepayment is greater than or equal to the required prepayment percentage, which is specified on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form, the system will change the status of the repair work order from *Pending Payment* to *Ready for Assignment* to indicate that the prepayment is applied. You need to implement the needed changes for this system behavior.

## Process Overview { .section}

To implement the needed status change, in your extension library, you will define a new workflow event and fire it when an invoice is prepaid. You will define the workflow event handler, register it in the screen configuration for your custom workflow, and configure a transition.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
    3.  [Test Instance for Workflow Customization: To Configure the Instance](WorkflowAPI_PrepareInstance_Activity_CustomizationStory.md)
2.  Prepared the screen configuration and defined the set of workflow states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.
3.  Implemented the `PendingPayment` and `ReadyForAssignment` workflow states by performing the [Step 2: Adding the PendingPayment Workflow State \(Self-Guided Exercise\)](WorkflowAPI_Transitions_Activity_GroupTransitions_AddState.md) and [Step 3: Defining the Workflow State and the Transition \(Self-Guided Exercise\)](WorkflowAPI_DialogBox_Activity_ImplementTransition_DefineStateAndTransition.md) prerequisite steps.
4.  Implemented the `CreateInvoice` action by performing the [Workflow Actions: To Configure the Conditional Appearance of the Action](WorkflowAPI_Actions_Activity_CreateInvoice.md) prerequisite activity.

-   **[Step 1: Creating a Custom Field](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_CreateCustomField.md)**  

-   **[Step 2: Deriving the Value of the Field](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_DeriveValue.md)**  

-   **[Step 3: Exploring the Acumatica ERP Source Code](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_ExploreCode.md)**  

-   **[Step 4: Declaring the Workflow Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_DeclareEvent.md)**  

-   **[Step 5: Firing the Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_FireEvent.md)**  

-   **[Step 6: Testing the Transition](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew_Test.md)**  


**Parent topic:**[Implementing Workflow Events](../DeveloperGuide/WorkflowAPI_Events_Mapref.md)

