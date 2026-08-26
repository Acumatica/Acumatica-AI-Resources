# Step 3: Adding a Workflow for the Specific Value of the Workflow-Identifying Field {#_c7747a1d-0638-4ea0-b39d-2b7d2adbe64d .task}

In this step, you will add a workflow for the *Simple* value of the **Order Type** box. This workflow has three workflow states \(which are `OnHold`, `Completed`, and `Paid`\) and the following transitions:

-   From the `OnHold` to `Completed` workflow state, which is triggered by the `Complete` action
-   From the `Completed` to `Paid` workflow state, which is triggered by the `OnCloseDocument` event

You will add these workflow states and transitions to the screen configuration in the extension of the `RSSVWorkOrderEntry_Workflow` class.

**Tip:** You do not need to add actions and event handlers used in this workflow because they are already added in the original screen configuration defined in the `RSSVWorkOrderEntry_Workflow` class.

To add the new workflow, do the following in the static Configure method of the `RSSVWorkOrderEntry_Workflow_Extension` class:

1.  In the lambda expression for the UpdateScreenConfigurationFor method, after calling the FlowTypeIdentifierIs method, call the WithFlows method and add a workflow for the *Simple* value of the `UsrOrderType` field as shown in the following code.

    ```language-csharp
                    .WithFlows(flows => flows
                        .Add<OrderTypes.simple>(flow =>
                            getSimpleBehavior(flow)))
    ```

    You have specified the value for the workflow-identifying field as the type parameter of the Add method.

2.  Add the private static `getSimpleBehavior` method, and specify the list of states of the new workflow as shown in the following code.

    ```language-csharp
            private static Workflow.IConfigured getSimpleBehavior(
                Workflow.INeedStatesFlow flowState)
            {
                return flowState
                .WithFlowStates(states =>
                {
                    states.Add<RSSVWorkOrderEntry_Workflow.States.onHold>(flowState =>
                    {
                        return flowState
                          .IsInitial()
                          .WithActions(actions =>
                          {
                              actions.Add(g => g.Complete, a => a
                              .IsDuplicatedInToolbar()
                              .WithConnotation(ActionConnotation.Success));
                          });
                    });
                    states.Add<RSSVWorkOrderEntry_Workflow.States.completed>(flowState =>
                    {
                        return flowState
                            .WithFieldStates(fieldstates =>
                            {
                                fieldstates.AddField<RSSVWorkOrder.customerID>(state =>
                                    state.IsDisabled());
                                fieldstates.AddField<RSSVWorkOrder.serviceID>(state =>
                                    state.IsDisabled());
                                fieldstates.AddField<RSSVWorkOrder.deviceID>(state =>
                                    state.IsDisabled());
                            })
                            .WithActions(actions =>
                            {
                                actions.Add(g => g.CreateInvoiceAction, a => a
                                .IsDuplicatedInToolbar()
                                .WithConnotation(ActionConnotation.Success));
                            })
                            .WithEventHandlers(handlers =>
                            {
                                handlers.Add(g => g.OnCloseDocument);
                            });
                    });
                    states.Add<RSSVWorkOrderEntry_Workflow.States.paid>(flowState =>
                    {
                        return flowState
                            .WithFieldStates(fieldstates =>
                            {
                                fieldstates.AddField<RSSVWorkOrder.customerID>(state =>
                                    state.IsDisabled());
                                fieldstates.AddField<RSSVWorkOrder.serviceID>(state =>
                                    state.IsDisabled());
                                fieldstates.AddField<RSSVWorkOrder.deviceID>(state =>
                                    state.IsDisabled());
                            });
                    });
                });
            }
    ```

    In the code above, you have added the following workflow states:

    -   `OnHold`: You have specified that the **Complete** action should be available in this workflow state.
    -   `Completed`: You have specified which fields should be unavailable in this workflow state. You have also specified that the `CreateInvoice` action and the `OnCloseDocument` workflow event handler should be available in this workflow state.
    -   `Paid`: You have specified which fields should be unavailable.
3.  In the private static `getSimpleBehavior` method, after the call of the WithFlowStates method, define the transitions by using the WithTransitions method as the following code shows.

    ```language-csharp
                .WithTransitions(transitions =>
                {
                    transitions.AddGroupFrom<RSSVWorkOrderEntry_Workflow.States.onHold>(
                        transitionGroup =>
                    {
                        transitionGroup.Add(transition => transition
                            .To<RSSVWorkOrderEntry_Workflow.States.completed>()
                            .IsTriggeredOn(graph => graph.Complete));
                    });
                    transitions.AddGroupFrom<
                        RSSVWorkOrderEntry_Workflow.States.completed>(
                        transitionGroup =>
                    {
                        transitionGroup.Add(transition => transition
                            .To<RSSVWorkOrderEntry_Workflow.States.paid>()
                            .IsTriggeredOn(graph => graph.OnCloseDocument));
                    });
                });
    ```

4.  Build your project.

**Parent topic:**[Workflow-Identifying Fields: To Add a Workflow for a Value of the Workflow-Identifying Field](../DeveloperGuide/WorkflowAPI_WorkflowIdentifying_Add_Activity.md)

