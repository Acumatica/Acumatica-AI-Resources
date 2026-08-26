# Step 3: Adding the ApproveDiscount Action {#_fe8b5d42-aca0-4b6d-be0a-d34cc2dd8248 .concept}

By using Workflow API, you can define actions without implementing them in a graph. You do this by calling the ActionDefinitions.CreateNew method and specifying all settings of the action, including the display name and category. This approach can be used only if the action does not have complex logic. In this step, you will define the `approveDiscount` action without implementing it in a graph.

To add the `approveDiscount` action, do the following:

1.  In the `SOInvoiceRepairOrder_Workflow` class, define a string constant whose value will be used as the display name for the `approveDiscount` action, as the following code shows.

    ```language-csharp
            public const string ApproveDiscount = "Approve Discount";
    ```

2.  In the static Configure method of the `SOInvoiceRepairOrder_Workflow` class, add the following code.

    ```language-csharp
                var approveDiscount = context.ActionDefinitions
                    .CreateNew(ApproveDiscount, action => action
                    .DisplayName("Approve Discount"));
    ```

    In the code above, you have defined a new action with the **Approve Discount** display name.

3.  In the WithActions method of the UpdateScreenConfigurationFor method call, add the `approveDiscount` action, as the following code shows.

    ```language-csharp
                        actions.Add(approveDiscount);
    ```

4.  Save your changes.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

