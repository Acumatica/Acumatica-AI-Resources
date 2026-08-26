# Step 2: Configuring the Conditional Appearance of the Button {#_5895b679-8d63-4f93-8bb1-f78f5588735d .concept}

The **Create Invoice** button on the form toolbar and the equivalent command on the More menu should be available only if the repair work order has the *Pending Payment* or *Completed* status and if no invoice for the order has been created yet \(that is, if the `RSSSVWorkOrder.InvoiceNbr` field is null\). Configure the availability as follows:

1.  Configure a condition that checks whether the `InvoiceNbr` field is not null, and make the action unavailable when the condition is *true* by using the IsDisabledWhen method. Do the following:
    1.  In the `Conditions` class, define the condition, as the following code shows.

        ```language-csharp
                    public Condition HasInvoice => GetOrCreate(condition => 
                        condition.FromBql<Where<RSSVWorkOrder.invoiceNbr.IsNotNull>>());
        ```

    2.  Make sure an instance of the `Conditions` class is created in the static `Configure` method.
    3.  In the WithActions method of the screen configuration, register the `CreateInvoice` action, as the following code shows.

        ```language-csharp
                            actions.Add(graph => graph.CreateInvoiceAction,
                                action => action.WithCategory(processingCategory)
                                .IsDisabledWhen(conditions.HasInvoice));
        ```

        By using the IsDisabledWhen method, you have specified that the action is unavailable when the provided condition is true.

2.  Add the action to only the workflow states where it is available \(that is, `PendingPayment` and `Completed`\), as the following code shows.

    ```language-csharp
                .WithActions(actions =>
                {
                    actions.Add(graph => graph.CreateInvoiceAction,
                        action => action.IsDuplicatedInToolbar()
                        .WithConnotation(ActionConnotation.Success));
                });
    ```


**Parent topic:**[Workflow Actions: To Configure the Conditional Appearance of the Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_CreateInvoice.md)

