# Workflow Actions: To Implement an Action with Field Assignments {#_47268f3f-5e3a-4baf-9e1a-cecbac71c6e0 .task}

This activity will walk you through the process of implementing a workflow action that assigns values to DAC fields without any graph logic.

## Story { .section}

Suppose that a user should be able to mark a repair work order as completed when it has the *Assigned* status. To do that, the user should be able to click the **Complete** button. The underlying action will cause the date of the completion to be inserted in the **Date Completed** box of the Repair Work Orders \(RS301000\) form, and the repair work order to be assigned the *Completed* status. The **Complete** action should always be displayed last in the **Processing** category.

## Process Overview { .section}

In the customization code, you will define the `Complete` workflow action, the `Completed` state, and the transition from the `Assigned` state to the `Completed` state. You will learn how to define the assignment of the **Date Completed** box in a workflow action. You will also specify the location of the **Complete** command on the More menu.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following prerequisite activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) prerequisite activity.
3.  Defined the `Assigned` workflow state by performing the [Workflow Dialog Boxes: To Implement a Transition with a Dialog Box](WorkflowAPI_DialogBox_Activity_ImplementTransition.md) prerequisite activity.

-   **[Step 1: Adding and Configuring the Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_WithFieldAssignments_AddStateActionTransition.md)**  

-   **[Step 2: Adding a Workflow State and a Transition](../DeveloperGuide/WorkflowAPI_Actions_Activity_WithFieldAssignments_AddStateTransition.md)**  

-   **[Step 3: Testing the Field Assignment](../DeveloperGuide/WorkflowAPI_Actions_Activity_WithFieldAssignments_Test.md)**  


**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

