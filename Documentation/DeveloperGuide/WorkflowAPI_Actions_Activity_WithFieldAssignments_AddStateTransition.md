# Step 2: Adding a Workflow State and a Transition {#_eb24b81f-780b-4dfa-81b4-2174c8622a9f .concept}

In this step, you will define the `Completed` workflow state and the transition from the `Assigned` workflow state to the `Completed` workflow state. Do the following:

1.  In the lambda expression for the WithFlowStates method, add the definition of the `Completed` workflow state, as the following code shows.

    ```language-csharp
                            flowStates.Add<States.completed>(flowState =>
                                GetCompletedBehavior(flowState));
    ```

2.  In the `RSSVWorkOrderEntry_Workflow` class, add the `GetCompletedBehavior` private static method, as the following code shows.

    ```language-csharp
            private static BaseFlowStep.IConfigured GetCompletedBehavior(
                FlowState.INeedAnyFlowStateConfig flowState)
            {
                return flowState
                .WithFieldStates(states =>
                {
                    states.AddField<RSSVWorkOrder.customerID>(state
                        => state.IsDisabled());
                    states.AddField<RSSVWorkOrder.serviceID>(state
                        => state.IsDisabled());
                    states.AddField<RSSVWorkOrder.deviceID>(state
                        => state.IsDisabled());
                });
            }
    ```

    In the method, you have made the `CustomerID`, `ServiceID`, and `DeviceID` fields unavailable for editing.

3.  In the WithTransitions method, define the transition from the `Assigned` workflow state to the `Completed` workflow state, as the following code shows.

    ```language-csharp
                            transitions.AddGroupFrom<States.assigned>(
                                transitionGroup =>
                            {
                                transitionGroup.Add(transition =>
                                    transition.To<States.completed>()
                                    .IsTriggeredOn(graph => graph.Complete));
                            });
    ```


**Parent topic:**[Workflow Actions: To Implement an Action with Field Assignments](../DeveloperGuide/WorkflowAPI_Actions_Activity_WithFieldAssignments.md)

