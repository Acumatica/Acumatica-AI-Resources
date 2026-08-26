# Step 3: Adding the Action to the Workflow {#_d8b95f7c-ec54-47a4-8e4b-34aca57d21a8 .concept}

In this step, you will add the `ReleaseFromHold` action to the workflow and specify a category for the associated **Remove Hold** command on the More menu.

To add the action to the workflow, do the following:

1.  In the `RSSVWorkOrderEntry_Workflow` class, in the static Configure method, locate the AddDefaultFlow method. \(You have added this method in [Step 3: Overriding the Configure Method](WorkflowAPI_ScreenConfig_Activity_CreateNew_OverrideConfig.md) in the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.\)
2.  For the screen parameter, call the WithActions method after the WithCategories method, as the following code shows.

    ```language-csharp
                    .WithActions(actions => 
                    { 
                    })
    ```

3.  In the lambda expression of the WithActions method, add the `ReleaseFromHold` action by calling the Add method, as the following code shows.

    ```language-csharp
                        actions.Add(graph => graph.ReleaseFromHold, 
                          action => action.WithCategory(processingCategory));
    ```

    In the code above, you have added the `ReleaseFromHold` action, which you defined in the `RSSVWorkOrderEntry` graph in [Step 1: Implementing the Action in the Graph](WorkflowAPI_Actions_Activity_RemoveHold_ImplementGraphAction.md) in this activity, to the screen configuration. By calling the WithCategory method, you have specified the category in which the command associated with the action is displayed on the More menu.

4.  Save your changes.

You will use this action later to trigger a transition.

**Parent topic:**[Workflow Actions: To Implement a Simple Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold.md)

