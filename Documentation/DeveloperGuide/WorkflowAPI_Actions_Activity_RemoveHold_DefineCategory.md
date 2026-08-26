# Step 2: Defining a Category for the Action {#_f1381dc6-ed03-4f05-858a-d7521e08c5de .concept}

Acumatica ERP provides a list of predefined categories for the More menu. You can add these categories to a custom workflow and add actions \(which are associated with commands on the More menu\) to these categories. If a command is associated with an action related to changing the status of a record created on the form, it is usually displayed in the **Processing** category. To add the **Processing** category to your workflow, do the following:

1.  In the static Configure method of the `RSSVWorkOrderEntry_Workflow` class, define the **Processing** category before the `context.AddScreenConfigurationFor` method call, as the following code shows.

    ```language-csharp
                #region Categories
                var commonCategories = CommonActionCategories.Get(context);
                var processingCategory = commonCategories.Processing;
                #endregion
    ```

    In the code above, you have obtained the list of default categories by calling the CommonActionCategories.Get method.

2.  In the static Configure method, locate the AddDefaultFlow method, which you have added in [Step 3: Overriding the Configure Method](WorkflowAPI_ScreenConfig_Activity_CreateNew_OverrideConfig.md) in the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md).
3.  For the `screen` parameter, call the WithCategories method after the AddDefaultFlow method as the following code shows.

    ```language-csharp
                context.AddScreenConfigurationFor(screen =>
                    screen
                    .StateIdentifierIs<RSSVWorkOrder.status>()
                    .AddDefaultFlow(flow => ...)
                    .WithCategories(categories =>
                    {
                        categories.Add(processingCategory);
                    })
                );
    ```

    In the code above, in the lambda expression for the WithCategories method, you have added the **Processing** category to the screen configuration by calling the Add method.


**Parent topic:**[Workflow Actions: To Implement a Simple Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold.md)

