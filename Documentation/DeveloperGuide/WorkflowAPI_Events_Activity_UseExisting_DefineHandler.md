# Step 5: Defining the Workflow Event Handler {#_73f9daf3-b433-4f3e-b938-25feb08e123d .task}

In this step, you will define a workflow event handler for the `ARInvoiceEntry.OnCloseDocument` workflow event. Do the following:

1.  In the `RSSVWorkOrderEntry` graph, define a workflow event handler, as the following code shows.

    ```language-csharp
            #region Workflow Event Handlers 
            public PXWorkflowEventHandler<RSSVWorkOrder, ARInvoice> OnCloseDocument 
                = null!;
            #endregion
    ```

    In the first type parameter of the handler, you have specified the primary DAC of the form where the handler is used. As the second type parameter, you have specified the primary DAC of the form where the event is fired.

    **Tip:** Add the `using` directive for the PX.Data.WorkflowAPI namespace if it has not been added earlier.

2.  In the `RSSVWorkOrderEntry_Workflow` class, bind the `OnCloseDocument` workflow event handler to the `CloseDocument` workflow event in the screen configuration: After the AddDefaultFlow method, call the WithHandlers method. In the method, add the `OnCloseDocument` event handler, as the following code shows.

    ```language-csharp
                    .WithHandlers(handlers =>
                    {
                        handlers.Add(handler => handler
                            .WithTargetOf<ARInvoice>()
                            .OfEntityEvent<ARInvoice.Events>(
                                workflowEvent => workflowEvent.CloseDocument)
                                .Is(graph => graph.OnCloseDocument)
                                .UsesPrimaryEntityGetter<
                                    SelectFrom<RSSVWorkOrder>.
                                    Where<RSSVWorkOrder.invoiceNbr
                                    .IsEqual<ARRegister.refNbr.FromCurrent>>>());
                    })
    ```

    In the code above, you have added a handler for a workflow event that changes the state of the invoice workflow. In the UsesPrimaryEntityGetter method, you have selected the repair work order whose state should be updated by the number of the invoice that has been closed.

    **Tip:** Make sure that you have added the `using` directives, which are shown in the following code.

    ```language-csharp
    using PX.Objects.AR;
    using PX.Data.WorkflowAPI;
    ```

3.  In the `GetCompletedBehavior` private static method, add the event handler by using the WithEventHandlers method, as the following code shows.

    ```language-csharp
                .WithEventHandlers(handlers =>
                {
                    handlers.Add(graph => graph.OnCloseDocument);
                });
    ```

4.  In the lambda expression for the WithTransitions method, add the transition from the `Completed` workflow state to the `Paid` workflow state, as the following code shows.

    ```language-csharp
                            transitions.AddGroupFrom<States.completed>(
                                transitionGroup =>
                            {
                                transitionGroup.Add(transition => 
                                    transition.To<States.paid>()
                                    .IsTriggeredOn(graph => graph.OnCloseDocument));
                            });
    ```

5.  Save your changes.

**Parent topic:**[Workflow Events: To Use an Existing Event](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting.md)

