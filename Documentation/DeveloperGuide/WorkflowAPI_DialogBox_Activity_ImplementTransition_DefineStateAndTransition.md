# Step 3: Defining the Workflow State and the Transition \(Self-Guided Exercise\) {#_35d351e4-5d67-480a-b769-56133d694e60 .task}

In this step, you will define the `Assigned` workflow state and the transition from the `ReadyForAssignment` workflow state to the `Assigned` workflow state on your own. You have learned how to define a workflow state in [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md).

While defining a workflow state, you need to use the `States.assigned` class, which you added in [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md). In the `Assigned` workflow state, you should make the **Customer ID**, **Service ID**, and **Device ID** boxes unavailable for the state. Also, you need to add the `Assign` action to the `ReadyForAssignment` workflow state, display it on the form toolbar, and specify the *Success* connotation for it.

For details on defining transitions, see [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md) and [Transitions: To Implement a Group of Transitions](WorkflowAPI_Transitions_Activity_GroupTransitions.md). The transition should be defined inside a group and is performed without any conditions.

**Parent topic:**[Workflow Dialog Boxes: To Implement a Transition with a Dialog Box](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition.md)

