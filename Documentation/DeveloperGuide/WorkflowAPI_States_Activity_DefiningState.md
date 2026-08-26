# Workflow States: To Define a Workflow State {#_43fcff2a-6f83-4dad-96d6-2fa8bf269c31 .task}

The following activity will walk you through the process of defining a workflow state.

## Story { .section}

Suppose that on the Repair Work Orders \(RS301000\) form, you need to add the `OnHold` and `ReadyForAssignment` states to the workflow. The `OnHold` workflow state should be the initial state of the workflow.

## Process Overview { .section}

To define the workflow states, in the Configure method of the `RSSVWorkOrderEntry_Workflow` class, you will call the WithFlowStates method in the lambda expression specified for the AddDefaultFlow method and provide the set of states in the parameter. You will define each state by calling the Add method and specifying the state-identifying string as a generic parameter. As a parameter of the Add method, you will specify a lambda expression where you will configure the workflow state.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following prerequisite activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) prerequisite activity.

## Step 1: Defining the Initial Workflow State { .section}

To define the initial workflow state, which is `OnHold` in this activity, do the following:

1.  In the `RSSVWorkOrderEntry_Workflow` class, in the static `Configure` method, locate the `AddDefaultFlow` method. \(You have added this method in [Step 3: Overriding the Configure Method](WorkflowAPI_ScreenConfig_Activity_CreateNew_OverrideConfig.md) of the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.\)
2.  Modify the `WithFlowStates` method, as the following code shows.

    ```language-csharp
                    .AddDefaultFlow(flow => flow
                        .WithFlowStates(flowStates =>
                        {
                        }))
    ```

3.  Inside the lambda expression of the WithFlowStates method, add the `OnHold` workflow state by calling the Add method, as the following code shows.

    ```language-csharp
                            flowStates.Add<States.onHold>(flowState =>
                                GetOnHoldBehavior(flowState));
    ```

    In the code above, you have added the `OnHold` state by specifying the `States.onHold` value as the generic parameter of the Add method.

4.  In the RSSVWorkOrderEntry\_Workflow class, add the `Workflow States` region and define the following private static method, which defines the `OnHold` workflow state.

    ```language-csharp
            #region Workflow States
            private static BaseFlowStep.IConfigured GetOnHoldBehavior(
                FlowState.INeedAnyFlowStateConfig flowState)
            {
                return flowState
                .IsInitial()
                .WithActions(actions =>
                {
                    actions.Add(graph => graph.ReleaseFromHold,
                        action => action.IsDuplicatedInToolbar()
                            .WithConnotation(
                                ActionConnotation.Success));
                });
            }
            #endregion
    ```

    In the code above, you have done the following:

    -   Specified that the `OnHold` workflow state is the initial state of the workflow by calling the IsInitial method.
    -   Specified the actions that are available in the `OnHold` workflow state by calling the WithActions method and adding the action definition in the lambda expression. In this case, the ReleaseFromHold action is available in the `OnHold` workflow state.
    -   By calling the IsDuplicatedInToolbar method, specified that the action should be shown as a button on the toolbar for this workflow state.
    -   Specified the *Success* connotation for the action by calling the WithConnotation method. The button corresponding to this action will be highlighted in green when it is displayed on the form toolbar. For details, see [Action Customization: Connotation for an Action](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_AddConnotation.md).
5.  Save your changes.

## Step 2: Defining the ReadyForAssignment Workflow State { .section}

To define the `ReadyForAssignment` workflow state, do the following:

1.  Inside the lambda expression of the WithFlowStates method, after the `OnHold` workflow state, define the `ReadyForAssignment` workflow state, as the following code shows.

    ```language-csharp
                            flowStates.Add<States.readyForAssignment>(flowState =>
                                GetReadyForAssignmentBehavior(flowState));
    ```

    In the code above, you have added the `ReadyForAssignment` workflow state by specifying the States.readyForAssignment value as the generic parameter of the Add method.

2.  In the RSSVWorkOrderEntry\_Workflow class, in the `Workflow States` region, define the following private static method, which defines the `ReadyForAssignment` workflow state.

    ```language-csharp
            private static BaseFlowStep.IConfigured GetReadyForAssignmentBehavior(
                FlowState.INeedAnyFlowStateConfig flowState)
            {
                return flowState
                .WithFieldStates(states =>
                {
                    states.AddField<RSSVWorkOrder.customerID>(state
                        => state.IsDisabled());
                    states.AddField<RSSVWorkOrder.serviceID>(state
                        => state.IsDisabled());
                    states.AddField<RSSVWorkOrder.deviceID>(state
                        => state.IsDisabled());
                });
            }
    ```

    By calling the WithFieldStates method, you have specified the states of DAC fields in this workflow state. In this case, you have specified that the `customerID`, `serviceID`, and `deviceID` fields of the `RSSVWorkOrder` DAC should be unavailable in this workflow state.

3.  Save your changes.

**Parent topic:**[Defining Workflow States](../DeveloperGuide/WorkflowAPI_States_Mapref.md)

