# Step 2: Adding the PendingPayment Workflow State \(Self-Guided Exercise\) {#_0df779ea-ce1b-48f4-bca4-a02587b9c9b9 .task}

To define a transition from the `OnHold` workflow state to the `PendingPayment` workflow state, you first need to define the `PendingPayment` workflow state. In this step, you will define the `PendingPayment` state of the workflow as a self-guided exercise. You have learned how to add a workflow state in [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md).

While defining a state, you need to use the `States.pendingPayment` class, which you have added in [Step 2: Defining the Set of States of the Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew_DefineStates.md) of the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity. In the `PendingPayment` workflow state, make the **Customer ID**, **Service ID**, and **Device ID** boxes of the Repair Work Orders \(RS301000\) form are unavailable for this workflow state.

**Parent topic:**[Transitions: To Implement a Group of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions.md)

