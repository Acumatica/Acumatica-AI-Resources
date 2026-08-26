# Action Customization: Connotation for an Action {#_6229252c-edcd-40db-89e4-6065ef288e18 .concept}

You can add a connotation to an action, which causes the system to highlight the corresponding button on the form toolbar and command on the More menu with the color you specify. For example, you can highlight the most logical action with green.

**Note:** We recommend that an action have a connotation only when the action has a corresponding button on the form toolbar.

All connotations are defined in the ActionConnotation enumeration. The possible values and corresponding colors are listed in the following table.

|Value|Color|
|-----|-----|
|Primary|Primary color of the site theme|
|Secondary|Secondary color of the site theme|
|Success|Green|
|Danger|Red|
|Warning|Yellow|
|Info|Blue|
|Light|Light gray|
|Dark|Dark gray|

You can add an action connotation dynamically for a form that uses a workflow or in the action declaration for a form that does not use a workflow.

## To Add a Connotation for a Form That Uses a Workflow {#section_ok1_gl2_jqb .section}

In a form that uses a workflow, you can define a connotation of an action for a particular state. To define such a connotation, you do the following:

1.  In the Configure method that defines the workflow, locate the state in which you want to define the action connotation.
2.  In the WithActions method of the state definition, locate the definition of the action for which you want to add a connotation.
3.  Add the WithConnotation method for the action. As a parameter, specify the connotation that you want to add.

    An example is shown in the following code.

    ```language-csharp
    flowState.WithActions(actions => 
    {
        actions.Add(graph => graph.copyOrderQT, 
            action =>action.IsDuplicatedInToolbar()
            .**WithConnotation\(ActionConnotation.Success\)**)
    ```


For more details on defining a workflow, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md).

## To Add a Connotation for a Form That Does Not Use a Workflow {#section_pk1_gl2_jqb .section}

You can add an action connotation on a form that does not use workflow. To do this, specify the connotation in the Connotation parameter of the PXButton attribute. An example is shown in the following code.

```language-csharp
[PXButton(Tooltip = Messages.ViewXml, IsLockedOnToolbar = true, 
**Connotation = ActionConnotation.Success**)]
```

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

