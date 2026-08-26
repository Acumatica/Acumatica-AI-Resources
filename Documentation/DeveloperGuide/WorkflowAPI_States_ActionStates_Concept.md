# Workflow States: Configuration of Actions {#_71bb44e5-861f-475a-89ba-7410a2aa2fe2 .concept}

You can configure an action in the following locations:

-   A definition of the action in a graph or in one of its extensions
-   A screen configuration
-   A workflow state

This topic describes the configuration of actions in a workflow state. For details on configuring actions in a screen configuration, see [Workflow Actions: Configuration of Actions](WorkflowAPI_Actions_Capabilities.md).

## Adding or Updating an Action in a Workflow State { .section}

To add or update an action in a workflow state, you call the WithActions method in a lambda expression for the Add or Update method that defines a workflow state. Inside the WithActions method, you can do the following:

-   Add a new action to the workflow state by calling the Add method.

    **Attention:** When you add an action in a workflow state, the action will be available in this state unless it is restricted by the settings defined in the screen configuration,—for example, by the condition in the IsHiddenWhen method.

-   Update an action if it exists in the state of the base workflow by calling the Update method.
-   Replace the entire configuration of the action by calling the Replace method.
-   Delete the entire configuration of the action by calling the Remove method.

## Configuring an Action in a Workflow State {#_fc3c7d35-b915-4583-a4b0-09de92768057 .section}

You can configure an action in the following ways:

-   Display the button that corresponds to the action on the form toolbar.

    By default, all commands, which correspond to actions, are displayed on the More menu. In addition to the command on the More menu, you can display on the form toolbar the button that corresponds to the action by calling the IsDuplicateInToolbar method while adding the action to a workflow state.

-   Specify a connotation for the button and command by calling the WithConnotation method while adding the action to a workflow state. The connotation will be displayed both for the command on the More menu and for the button on the form toolbar.

    You can also cancel the connotation by calling the WithNoConnotation method.

-   Specify that the action should be executed automatically when a provided condition is true by calling the IsAutoAction method.

An example of configuring an action in a workflow state is shown in the following code.

```language-csharp
sss.Add<State.hold>(flowState =>
{
  return flowState
    .WithActions(actions =>
    {
      actions.Add(graph => graph.releaseFromHold,
        action => action.IsDuplicatedInToolbar()
              .WithConnotation(ActionConnotation.Success));
    });
});
```

In the example above, the appearance of the button and command that correspond to the `releaseFromHold` action has been adjusted as follows:

-   The button that corresponds to the action is displayed on the form toolbar.
-   The button on the form toolbar and the command on the More menu are displayed with the Success connotation.

**Parent topic:**[Defining Workflow States](../DeveloperGuide/WorkflowAPI_States_Mapref.md)

