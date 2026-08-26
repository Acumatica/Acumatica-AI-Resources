# Step 1: Adding and Configuring the Action {#_69338cfb-2cac-4eb6-8fb8-cc8a80fa8d2e .concept}

In this step, you will add the `Complete` action in the graph of the Repair Work Orders \(RS301000\) form and in the screen configuration of this form. You will specify the location of the associated command by using the WithCategory method and assign the DAC field values by using the WithFieldAssignments method.

Do the following:

1.  In the `RSSVWorkOrderEntry` graph, declare the `Complete` action, as the following code shows.

    ```language-csharp
            public PXAction<RSSVWorkOrder> Complete = null!;
            [PXButton]
            [PXUIField(DisplayName = "Complete", Enabled = false)]
            protected virtual IEnumerable complete(PXAdapter adapter) => adapter.Get();
    ```

2.  In the `RSSVWorkOrderEntry_Workflow` class, add the `Complete` action in the lambda expression for the WithActions method, as the following code shows.

    ```language-csharp
                        actions.Add(graph => graph.Complete, action => action
                          .WithCategory(processingCategory, Placement.Last)
                          .WithFieldAssignments(fields => fields
                            .Add<RSSVWorkOrder.dateCompleted>(field =>
                              field.SetFromToday())));
    ```

    In the code above, you have defined the `Complete` action in the screen configuration. In the WithCategory method, you have specified that the associated command will be displayed last in the **Processing** category of the More menu by specifying the Placement.Last parameter. Also, in the WithFieldAssignments method, by calling the SetFromToday method, you have specified that the `RSSVWorkOrder.dateCompleted` field is assigned the current business date.

3.  To make the `Complete` action available in the `Assigned` workflow state, add the action to the configuration of the `Assigned` workflow state in the GetAssignedBehavior private static method, as the following code shows.

    ```language-csharp
                .WithActions(actions =>
                {
                    actions.Add(graph => graph.Complete, action => action
                      .IsDuplicatedInToolbar()
                      .WithConnotation(ActionConnotation.Success));
                });
    ```


**Parent topic:**[Workflow Actions: To Implement an Action with Field Assignments](../DeveloperGuide/WorkflowAPI_Actions_Activity_WithFieldAssignments.md)

