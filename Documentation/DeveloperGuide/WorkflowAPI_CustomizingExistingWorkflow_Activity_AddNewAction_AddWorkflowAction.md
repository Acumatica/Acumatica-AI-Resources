# Step 3: Defining a Workflow Action {#_4c8476de-6273-4ef3-aaee-9269766b24bb .task}

The **View Repair Work Order** command should be displayed in its own category on the More menu of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO301000\) form. The action is displayed when the invoice is prepaid—that is, when the invoice has the *Open* status. In this step, you will define a custom category, add the action to the workflow, and make it available in the `Open` state of the workflow.

Do the following:

1.  In the `SOInvoiceRepairOrder_Workflow.cs` file, define the class that contains information for custom categories, as the following code shows.

    ```language-csharp
            public static class ActionCategories
            {
                public const string RepairCategoryID = "Repair Work Orders Category";
    
                [PXLocalizable]
                public static class DisplayNames
                {
                    public const string RepairOrders = "Repair Work Orders";
                }
            }
    ```

    In the code above, you have defined a category with the **Repair Work Orders** display name and the string identifier for this category.

    **Tip:** Add the PX.Common `using` directive to use the PXLocalizable attribute.

2.  In the static Configure\(WorkflowContext\) method, add the definition of the **Repair Work Orders** category and the `viewOrder` action, as the following code shows.

    ```language-csharp
                var repairCategory = context.Categories.CreateNew(
                    ActionCategories.RepairCategoryID,
                    category => category.DisplayName(
                    ActionCategories.DisplayNames.RepairOrders));
    
                var viewOrder = context.ActionDefinitions
                  .CreateExisting<SOInvoiceEntry_Extension>(graph => graph.ViewOrder,
                    action => action.WithCategory(repairCategory));
    ```

    In the code above, you have created a workflow definition corresponding to the **Repair Work Orders** category of the More menu by using the Categories.CreateNew method. You have also created a workflow definition of the `viewOrder` action by using the ActionDefinitions.CreateExisting method. As the type parameter of the CreateExisting method, you have specified the extension where the action is defined.

3.  After the definitions of the category and the action, update the default workflow, as the following code shows.

    ```language-csharp
                context.UpdateScreenConfigurationFor(screen => screen
                    .UpdateDefaultFlow(flow =>
                    {
                        return flow
                            .WithFlowStates(flowStates =>
                            {
                                flowStates.Update<ARDocStatus.open>(flowState =>
                                {
                                    return flowState.WithActions(actions =>
                                        actions.Add(viewOrder));
                                });
                            });
                    })
                    .WithCategories(categories =>
                    {
                        categories.Add(repairCategory);
                    })
                    .WithActions(actions =>
                    {
                        actions.Add(viewOrder);
                    })
                );
    ```

    In the code above, you have updated the screen configuration by calling the UpdateScreenConfigurationFor method. In the lambda expression for the method, you have updated the default workflow by calling the UpdateDefaultFlow method. In the lambda expression for the UpdateDefaultFlow method, you have added the `viewOrder` action to the `Open` state of the workflow.

    In the WithCategories method, you have added the **Repair Work Orders** category to the screen configuration. In the WithActions method, you have added the `viewOrder` action to the screen configuration.

4.  Save your changes.

**Parent topic:**[Workflow Customization: To Add an Action to an Existing Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md)

