# Workflow States: General Information {#_e99599ef-85e8-4e8d-8b45-0b9345be89b8 .concept}

A *workflow state* is a stage within a workflow of processing of a record that is created on an Acumatica ERP form. A workflow state represents the current status of a record.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define the set of states of the workflow
-   Add states to the screen configuration
-   Configure states in a workflow

## Applicable Scenarios { .section}

You define and configure states of a workflow when you are defining a new workflow or customizing an existing workflow.

## State-Identifying Field { .section}

Each workflow consists of multiple workflow states. Each workflow state corresponds to a value of the state-identifying field.

Currently, the workflow engine supports only state-identifying fields of the String type that have a predefined set of values. The values of the state-identifying field are usually defined in the [PXStringList](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=eb18681d-a07f-87ae-3738-cb6452c24260) attribute. To define the state-identifying field, you need to call the StateIdentifierIs method for the new screen configuration and provide the field as the parameter. For details, see [Step 3: Overriding the Configure Method](WorkflowAPI_ScreenConfig_Activity_CreateNew_OverrideConfig.md) of the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.

## Adding of a Workflow State { .section}

To define the set of workflow states, you call the WithFlowStates method in the lambda expression specified for the AddDefaultFlow method and provide the set of workflow states in the parameter, as the following code shows. You define each workflow state by calling the Add method and specifying the state-identifier string as a generic parameter. As a parameter of the Add method, you specify a lambda expression where you can configure the workflow state.

``` {#codeblock_ilm_lql_jrb .language-csharp}
context.AddScreenConfigurationFor(screen =>
   screen.StateIdentifierIs<status>()
   .AddDefaultFlow(flow =>
      flow.WithFlowStates(flowStates =>
      {
         flowStates.Add<State.hold>(flowState => flowState.IsInitial());
         flowStates.Add<State.open>(flowState => { … });
         ...
      })
```

**Attention:** To add a workflow state to an existing workflow, you call the Add method in the UpdateDefaultFlow method inside the UpdateScreenConfigurationFor method.

Each workflow must have one state that is marked as the initial state. It provides the default value of the state-identifier field for a newly created record. You mark a state as initial by calling the IsInitial method, as shown in the code above.

## Configuration of Workflow States {#section_s1s_4rl_jrb .section}

You can add, update, or delete workflow states in a screen configuration by calling the Add, Update, or Delete method, respectively.

Inside the lambda expression passed to the Add or Update method, you configure the workflow state. For each workflow state, you can do the following:

-   Specify that a workflow state should be the initial state of the workflow by calling the IsInitial method.

    **Tip:** Only one state can be the initial state of a workflow.

-   Specify the properties that the specified DAC fields should have in this workflow state by calling the WithFieldStates method.

    You can specify such properties as requirement, visibility, and availability. Settings specified in the WithFieldStates method override the values of parameters of the DAC field attributes. For details about specifying field properties for a workflow state, see [Workflow States: Configuration of Field States](WorkflowAPI_States_FieldStates_Concept.md).

-   Specify which actions are available in this workflow state and configure the appearance of these actions in this state, such as whether the action should be duplicated on the form toolbar. You do this by calling the WithActions method. For details on configuration of actions for a workflow state, see [Workflow States: Configuration of Actions](WorkflowAPI_States_ActionStates_Concept.md).
-   Specify which workflow event handlers are available in this workflow state by calling the WithEventHandlers method. For details about workflow event handlers, see [Workflow Events: General Information](WorkflowAPI_Events_GeneralInfo.md).
-   Specify a list of field assignments that will be performed when a record enters the workflow state and when a record leaves the workflow state.

    To provide the list of fields whose values should be assigned when a record enters the workflow state, you use the WithOnEnterAssignments method when defining the workflow state. The field assignments listed in the method are applied to the workflow state for which the method was called.

    To provide the list of fields whose values should be assigned to a state when a record leaves the workflow state, you use the WithOnLeaveAssignments method when defining the workflow state. The field assignments listed in the method are applied to the workflow state for which the method was called.

    An example of using these methods is shown in the following code.

    ```language-csharp
    flowStates.Add<State.hold>(flowState =>
    {
      return flowState
        .WithActions(actions => …);
        .WithOnEnterAssignments(fields => fields.Add<inclCustOpenOrders>(false));
        .WithOnLeaveAssignments(fields => fields.Add<inclCustOpenOrders>(true));
        ...
    }
    ```

    In the code above, the `inclCustOpenOrders` field is assigned *false* when the record enters the `hold` workflow state \(after the transition to this state is completed\), and the `inclCustOpenOrders` field is assigned *true* before the `hold` workflow state is changed to some other state \(before the transition is started\).


**Parent topic:**[Defining Workflow States](../DeveloperGuide/WorkflowAPI_States_Mapref.md)

