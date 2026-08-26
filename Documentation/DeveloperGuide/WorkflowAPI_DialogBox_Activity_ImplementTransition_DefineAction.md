# Step 2: Defining the Action That Opens the Workflow Dialog Box {#_f7b73ed6-5e5e-4d92-89c5-4c5b63eea795 .task}

In this step, you will add the `Assign` action to the `RSSVWorkOrderEntry` graph and register the action in the screen configuration. Do the following:

1.  In the `RSSVWorkOrderEntry` graph, define the `Assign` action, as the following code shows.

    ```language-csharp
            public PXAction<RSSVWorkOrder> Assign = null!;
            [PXButton]
            [PXUIField(DisplayName = "Assign", Enabled = false)]
            protected virtual IEnumerable assign(PXAdapter adapter) => adapter.Get();
    ```

2.  In the `RSSVWorkOrderEntry_Workflow` class, in the lambda expression for the WithActions method at the screen configuration level, add the `Assign` action, as the following code shows.

    ```language-csharp
                        actions.Add(graph => graph.Assign, action => action
                          .WithCategory(processingCategory)
                          .WithForm(formAssign)
                          .WithFieldAssignments(fields => {
                              fields.Add<RSSVWorkOrder.assignee>(field =>
                                field.SetFromFormField(formAssign, "Assignee"));
                          }));
    ```

    In the code above, you have added the `Assign` action to the screen configuration. You have specified the workflow dialog box for the action in the WithForm method and the DAC field that should be updated from the dialog box in the WithFieldAssignments method.

3.  Save your changes.

**Parent topic:**[Workflow Dialog Boxes: To Implement a Transition with a Dialog Box](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition.md)

