# Activity 1.5.2: To Implement the PutOnHold Transition \(Self-Guided Exercise\)

According to the [Customization Description](../../DeveloperGuide/WorkflowAPI_CustomizationStory_CustomizationDescription.md), a user should have the ability to put a repair work order on hold when it has the *Ready For Assignment* or *Pending Payment* status by clicking the **Hold** button on the form toolbar.

In this activity, as a self-guided exercise, you will implement the following transitions, which are performed when the **Hold** button is clicked:

-   The transition from the `ReadyForAssignment` workflow state to the `OnHold` workflow state
-   The transition from the `PendingPayment` workflow state to the `OnHold` workflow state

Both transitions are performed without any conditions.

To implement these transitions, you need to perform the following steps, which are described in the sections below:

1.  Declare the `PutOnHold` action \(which is associated with the **Hold** button\) in the `RepairWorkOrderEntry` graph.
2.  Register the `PutOnHold` action in the screen configuration.
3.  Register the `PutOnHold` action in the `ReadyForAssignment` and `PendingPayment` workflow states.
4.  Define transitions for the `ReadyForAssignment` and `PendingPayment` workflow states.

You do not need to add any new states to the workflow because only states that are already declared in the screen configuration are used in the new transitions.

## Step 1: Declaring the PutOnHold Action

To define the `PutOnHold` action in the `RSSVWorkOrderEntry` graph, add the following code to the `Actions` region of the graph code.

```csharp
        public PXAction<RSSVWorkOrder> PutOnHold = null!;
        [PXButton, PXUIField(DisplayName = "Hold",
          MapEnableRights = PXCacheRights.Select,
          MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable putOnHold(PXAdapter adapter) => adapter.Get();
```

## Step 2: Registering the Action in the Screen Configuration

To register the action in the screen configuration, add the following code in the lambda expression provided for the WithActions method in the `RSSVWorkOrderEntry_Workflow` class.

```csharp
                    actions.Add(graph => graph.PutOnHold, action => action
                      .WithCategory(processingCategory));
```

## Step 3: Registering the PutOnHold Action in the Workflow States

To register the `PutOnHold` action in the `ReadyForAssignment` and `PendingPayment` workflow states, do the following:

1.  In the private static `GetReadyForAssignmentBehavior` method, call the WithActions method, and add the `PutOnHold` action, as the following code shows.

    ```csharp
                .WithActions(actions =>
                {
                    actions.Add(graph => graph.PutOnHold, 
                        action => action.IsDuplicatedInToolbar());
                });
    ```

2.  In the `private static GetPendingPaymentBehavior` method, call the WithActions method, and add the `PutOnHold` action, as the following code shows.

    ```csharp
                .WithActions(actions =>
                {
                    actions.Add(graph => graph.PutOnHold, 
                        action => action.IsDuplicatedInToolbar());
                });
    ```


## Step 4: Defining Transitions

To define the needed transitions, do the following in the `RSSVWorkOrderEntry_Workflow` class:

-   To define the transition from the `ReadyForAssignment` workflow state to the `OnHold` workflow state, add the following code in the lambda expression provided for the WithTransitions method.

    ```csharp
                            transitions.AddGroupFrom<States.readyForAssignment>(
                                transitionGroup =>
                            {
                                transitionGroup.Add(transition =>
                                    transition.To<States.onHold>()
                                    .IsTriggeredOn(graph => graph.PutOnHold));
                            });
    ```

-   To define the transition from the `PendingPayment` workflow state to the `OnHold` workflow state, add the following code after the code added in the previous instruction.

    ```csharp
                            transitions.AddGroupFrom<States.pendingPayment>(
                                transitionGroup =>
                            {
                                transitionGroup.Add(transition =>
                                    transition.To<States.onHold>()
                                    .IsTriggeredOn(graph => graph.PutOnHold));
                            });
    ```


## Step 5: Testing the Transitions

To test the transitions you have implemented, do the following:

1.  Rebuild the `PhoneRepairShop_Code` project.
2.  In Acumatica ERP, open the *000003* repair work order, which you created in [Transitions: To Implement a Transition Triggered by an Action](../../DeveloperGuide/WorkflowAPI_Transitions_Activity_RemoveHold.md) on the Repair Work Orders \(RS301000\) form. The document has the *Ready for Assignment* status.
3.  Notice that the **Hold** button is displayed on the form toolbar. The **Remove Hold** and **Hold** commands are displayed on the More menu, as shown in the following screenshot.


4.  Click the **Hold** button.
5.  Notice that the status of the document has changed to *On Hold*.

