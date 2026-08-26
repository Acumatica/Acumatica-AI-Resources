# Step 6: Adding the Transition {#_ff1bcbd0-6b48-4284-acd0-cc2ee85932ae .concept}

Without a composite workflow state, you would need to remove or modify an existing transition and add at least two transitions instead: one to the new workflow state, and another from the new workflow state. But with a composite workflow state, you need to add only one transition: from the `Postponed` nested workflow state to the next nested workflow state of the composite state.

To add a transition from the `Postponed` workflow state to the next workflow state in the composite state, do the following:

1.  In the `SOInvoiceRepairOrder_Workflow` class, in the lambda expression for the UpdateDefaultFlow method, add the following code.

    ```language-csharp
                            .WithTransitions(transitions =>
                            {
                                transitions.AddGroupFrom<ARDocStatus_Postponed.postponed>(
                                    transitionGroup =>
                                {
                                    transitionGroup.Add(transition => transition
                                        .ToNext()
                                        .IsTriggeredOn(approveDiscount)
                                        .WithFieldAssignments(fields =>
                                            fields.Add<ARInvoice.discDate>(
                                                field => field.SetFromToday())));
                                });
                            });
    ```

    In the code above, you have added a transition group where the initial workflow state is `Postponed`. In the transition group, you have done the following:

    -   Added the transition to the next workflow state in the composite state by calling the ToNext method
    -   Specified an action that triggered the transition in the IsTriggeredOn method
    -   Used the WithFieldAssigments method to specify that the **Cash Discount Date** box should be assigned the business date when the transition is performed
2.  Save your changes.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

