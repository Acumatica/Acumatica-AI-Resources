# Workflow Events: To Use an Existing Event {#_aff59b63-2763-40a7-8672-21c10f91cb85 .task}

The following activity will walk you through the process of creating a workflow event handler for an existing workflow event and implementing a transition that is triggered by this event.

## Story { .section}

Suppose that on the Repair Work Orders \(RS301000\) form, a repair work order should be assigned the *Paid* status when the invoice created for the order is fully paid—that is, when the invoice is assigned the *Closed* status. You need to implement the needed changes for this system behavior.

## Process Overview { .section}

To change the status of the repair work order from *Completed* to *Paid*, you will use an existing workflow event that is fired when the invoice document is assigned the *Closed* state. First, you will explore the code of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form to find the workflow event that is fired. Then, in your extension library, you will create a workflow event handler for this event, bind it to the workflow on the Repair Work Orders \(RS301000\) form, and implement the transition. You will also implement the `Paid` workflow state and override the Persist method on the [Invoices](../UserGuide/SO_30_30_00.md) form.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
    3.  [Test Instance for Workflow Customization: To Configure the Instance](WorkflowAPI_PrepareInstance_Activity_CustomizationStory.md)
2.  Prepared the screen configuration and defined the set of workflow states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.
3.  Implemented the `Completed` workflow state by performing the [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md) activity.
4.  Implemented the `CreateInvoice` action by performing the [Workflow Actions: To Configure the Conditional Appearance of the Action](WorkflowAPI_Actions_Activity_CreateInvoice.md) activity.

-   **[Step 1: Exploring the Acumatica ERP Source Code](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_ExploreCode.md)**  

-   **[Step 2: Preparing the Project for Debugging](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_PrepareDebug.md)**  

-   **[Step 3: Exploring and Debugging the Code](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_ExploreAndDebug.md)**  

-   **[Step 4: Defining the Paid Workflow State \(Self-Guided Exercise\)](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_DefineState.md)**  

-   **[Step 5: Defining the Workflow Event Handler](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_DefineHandler.md)**  

-   **[Step 6: Overriding the PerformPersist Method](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_OverridePersist.md)**  

-   **[Step 7: Testing the Transition](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting_Test.md)**  


**Parent topic:**[Implementing Workflow Events](../DeveloperGuide/WorkflowAPI_Events_Mapref.md)

