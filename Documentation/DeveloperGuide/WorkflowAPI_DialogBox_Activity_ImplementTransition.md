# Workflow Dialog Boxes: To Implement a Transition with a Dialog Box {#_b907e756-ca53-40b9-8022-3e0be5e2e177 .task}

This activity will walk you through the process of creating a workflow dialog box and implementing a transition that uses the values the user provides in this dialog box.

## Story { .section}

On the Repair Work Orders \(RS301000\) form, a user should be able to assign a repair work order when it has the *Ready For Assignment* status. To do this, the user will click the **Assign** button on the form toolbar \(or the equivalent command on the More menu\) and enter the name of the assignee in the dialog box. When the user clicks **OK**, the repair work order will get the *Assigned* status. You need to implement these changes in the customization project.

## Process Overview { .section}

In the workflow code, you will define the **Assign** workflow dialog box. To do this, you will define the `Assign` action, register it in the workflow, and specify the dialog box for it. You will also define the `Assigned` workflow state and the transition from the `ReadyForAssignment` workflow state to the `Assigned` workflow state.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.
3.  Implemented the `ReadyForAssignment`workflow state by performing the [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md) activity.

-   **[Step 1: Defining a Workflow Dialog Box](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition_DefineDialogBox.md)**  

-   **[Step 2: Defining the Action That Opens the Workflow Dialog Box](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition_DefineAction.md)**  

-   **[Step 3: Defining the Workflow State and the Transition \(Self-Guided Exercise\)](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition_DefineStateAndTransition.md)**  

-   **[Step 4: Testing the Assign Action](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition_TestAssign.md)**  


**Parent topic:**[Implementing Workflow Dialog Boxes](../DeveloperGuide/WorkflowAPI_DialogBox_Mapref.md)

