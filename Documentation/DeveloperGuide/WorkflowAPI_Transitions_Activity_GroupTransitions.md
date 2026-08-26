# Transitions: To Implement a Group of Transitions {#_db042c3b-2ef2-4901-bddb-a7c7a6e3eee0 .task}

The following activity will walk you through the process of implementing a group of transitions—that is, a set of transitions that have the same source workflow state.

## Story { .section}

Suppose that a user should be able to remove a repair work order from hold when the order has the *On Hold* status. The user should be able to do this by clicking the **Remove Hold** button on the form toolbar or the equivalent command on the More menu. The status of the repair work order should be changed to *Ready for Assignment* or *Pending Payment*, depending on whether the repair work order requires a prepayment.

## Process Overview { .section}

In [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md), you have implemented an unconditional transition from the `OnHold` workflow state to the `ReadyForAssignment` workflow state.

Here you will add a transition from the `OnHold` workflow state to the `PendingPayment` workflow state and modify the transition from the `OnHold` workflow state to the `ReadyForAssignment` workflow state. You will also define the conditions on which these transitions are performed.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following prerequisite activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and define the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) prerequisite activity.
3.  Defined the `OnHold` and `ReadyForAssignment` workflow states by performing the [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md) prerequisite activity.
4.  Implemented a transition from the `OnHold` workflow state to the `ReadyForAssignment` workflow state by performing the [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md) activity.

-   **[Step 1: Adding a Condition](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions_AddConditionPack.md)**  

-   **[Step 2: Adding the PendingPayment Workflow State \(Self-Guided Exercise\)](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions_AddState.md)**  

-   **[Step 3: Grouping Transitions and Adding Conditions to Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions_AddGroupAndConditions.md)**  

-   **[Step 4 \(Optional\): Specifying the Order of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_OrderTransitions.md)**  

-   **[Step 5: Testing Transitions With Conditions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions_Test.md)**  


**Parent topic:**[Implementing Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Mapref.md)

