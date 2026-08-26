# Step 4: Declaring the Workflow Event {#_a48ef1b9-7533-427a-8d67-3c05cbfe721b .task}

In this step, you will declare the workflow event that triggers the transition from the `PendingPayment` workflow state to the `ReadyForAssignment` workflow state, define an event handler for this event, and register the workflow event handler in the screen configuration. You will also define the transition triggered by the workflow event.

Do the following:

1.  In the `RSSVWorkOrder` DAC, declare a class that contains the new workflow event, as the following code shows.

    ```language-csharp
            public class WorkflowEvents : 
                PXEntityEvent<ARRegister>.Container<WorkflowEvents>
            {
                public PXEntityEvent<ARRegister> InvoiceGotPrepaid = null!;
            }
    ```

    **Tip:** Make sure that you have added the PX.Data.WorkflowAPI `using` directive.

2.  In the `RSSVWorkOrderEntry` graph, declare an event handler for the `InvoiceGotPrepaid` workflow event, as the following code shows.

    ```language-csharp
            public PXWorkflowEventHandler<RSSVWorkOrder, ARRegister> OnInvoiceGotPrepaid
                = null!;
    ```

3.  In the `RSSVWorkOrderEntry_Workflow` class, bind the `OnInvoiceGotPrepaid` workflow event handler to the `InvoiceGotPrepaid` workflow event in the screen configuration: In the lambda expression for the WithHandlers method, add the handler, as the following code shows.

    ```language-csharp
                        handlers.Add(handler => handler
                            .WithTargetOf<ARRegister>()
                            .OfEntityEvent<RSSVWorkOrder.WorkflowEvents>(
                                workflowEvent => workflowEvent.InvoiceGotPrepaid)
                                .Is(graph => graph.OnInvoiceGotPrepaid)
                                .UsesPrimaryEntityGetter<
                                    SelectFrom<RSSVWorkOrder>.
                                    Where<RSSVWorkOrder.invoiceNbr
                                    .IsEqual<ARRegister.refNbr.FromCurrent>>>());
    ```

4.  In the `GetPendingPaymentBehavior` private static method, add the workflow event handler by using the WithEventHandlers method, as the following code shows.

    ```language-csharp
                .WithEventHandlers(handlers =>
                {
                    handlers.Add(graph => graph.OnInvoiceGotPrepaid);
                });
    ```

5.  In the lambda expression for the WithTransitions method, declare the transition from the `PendingPayment` workflow state to the `ReadyForAssignment` workflow state in the `transitions.AddGroupFrom<States.pendingPayment>` group, as the following code shows.

    ```language-csharp
                                transitionGroup.Add(transition =>
                                    transition.To<States.readyForAssignment>()
                                    .IsTriggeredOn(graph => graph.OnInvoiceGotPrepaid));
    ```

6.  Save your changes.

**Parent topic:**[Workflow Events: To Create a Workflow Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew.md)

