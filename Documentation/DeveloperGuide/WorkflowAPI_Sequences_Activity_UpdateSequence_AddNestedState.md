# Step 5: Adding the Postponed Workflow State to the Composite State {#_62486186-acd5-4e49-bff4-f1a9e25c041f .concept}

To add the `Postponed` workflow state to the composite state, do the following:

1.  In the `SOInvoiceRepairOrder_Workflow` class, add the `Postponed` workflow state in the WithFlowStates method, as shown in the following code.

    ```language-csharp
                                flowStates.UpdateSequence<ARDocStatus.HoldToBalance>(
                                    seq =>
                                {
                                    return seq.WithStates(states =>
                                    {
                                        states.Add<ARDocStatus_Postponed.postponed>(
                                            flowState =>
                                        {
                                            return flowState
                                        .PlaceAfter<ARDocStatus.creditHold>()
                                        .IsSkippedWhen(conditions.DiscountEmpty)
                                        .WithActions(actions =>
                                        {
                                            actions.Add(approveDiscount,
                                                action => action
                                                .IsDuplicatedInToolbar()
                                                .WithConnotation(
                                                    ActionConnotation.Success));
                                        });
                                        });
                                    });
                                });
    ```

    In the code above, you have done the following:

    -   Added the `Postponed` workflow state after the `CreditHold` workflow state
    -   Specified that the `Postponed` workflow state should be skipped if the `DiscountEmpty` condition is *true*
    -   Added the `approveDiscount` action to the `Postponed` workflow state
2.  Save your changes.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

