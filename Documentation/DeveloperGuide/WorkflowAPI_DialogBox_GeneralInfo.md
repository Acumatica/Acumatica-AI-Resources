# Workflow Dialog Boxes: General Information {#_85b75806-57ba-4298-8e48-4ec4fe13785e .concept}

A *workflow dialog box* is a screen configuration block that can be displayed to a user to provide particular field values when a user clicks a button or a menu command. A dialog box is referred to in code as a form.

This chapter describes how to define a dialog box that can be used in a workflow by using Workflow API.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define a dialog box in a workflow
-   Specify a workflow dialog box for an action
-   Assign values specified in the workflow dialog box to the DAC fields

## Applicable Scenarios { .section}

You define a dialog box in a workflow when you need a user to provide particular field values when the user clicks a button or a menu command that corresponds to an action. These field values can later be used in a transition that is triggered by this action.

## Definition of a Workflow Dialog Box { .section}

To define a workflow dialog box, you do the following:

1.  You define the dialog box in the static Configure method of the workflow class by using the WorkflowContext.Forms.Create method. In the method parameters, you provide the internal name of the dialog box and its configuration. In the configuration, you provide a lambda expression where you specify the title of the dialog box in the Prompt method and the fields that should be displayed in the dialog box in the WithFields method. The following code shows an example of a dialog box definition.

    ```language-csharp
    protected static void Configure(WorkflowContext<GraphType, DACType> context)
    {
      var formClose = context.Forms.Create("FormClose", 
        form => form.Prompt("Select Reason").WithFields(fields => {
          fields.Add("Reason", field => { … });      
      }));
    }
    ```

    In the code above, the `FormClose` dialog box with the **Select Reason** title has been declared.

2.  You configure fields and layout of the workflow dialog box as described in [Workflow Dialog Boxes: Configuration of Fields](WorkflowAPI_DialogBox_FieldConfiguration.md) and [Workflow Dialog Boxes: Configuration of the Layout](WorkflowAPI_DialogBox_Appearance_Concept.md).
3.  You register the dialog box in the screen configuration by specifying the dialog box name in the WithForms method. An example is shown in the following code.

    ```language-csharp
    .AddDefaultFlow(flow => flow
      .WithForms(forms => forms.Add(formClose)))
    ```


Every dialog box has the **OK** and **Cancel** buttons. You cannot modify the buttons of a dialog box.

## Linking of a Workflow Dialog Box to an Action { .section}

To display a workflow dialog box when a user clicks a button that corresponds to an action, you need to specify this dialog box in the action configuration. You do this by calling the WithForm method inside the lambda expression provided for the Add method.

To insert data specified by a user in a workflow dialog box field in a DAC field, you need to call the WithFieldAssignments method. In the lambda expression provided for the method, you add the DAC field by calling the Add method. In the lambda expression for the Add method, you call the SetFromFormField method and provide the workflow dialog box and the field name as parameters.

An example of an action with a dialog box is shown in the following code.

```language-csharp
actions.Add(graph => graph.close, action => action
  .WithForm(formClose)
  .WithFieldAssignments(fields =>
  {
    fields.Add<RequestForInformation.reason>(field => 
      field.SetFromFormField(formClose, "Reason"));
  }));
```

In the code above, the `RequestForInformation.reason` field has been updated with the value specified in the `Reason` field of the `formClose` workflow dialog box.

**Attention:** The original code of the action is executed only after the workflow dialog box is closed and field assignments are applied. If an action triggers a transition, the transition is performed only if a user clicks **OK** in the dialog box.

**Parent topic:**[Implementing Workflow Dialog Boxes](../DeveloperGuide/WorkflowAPI_DialogBox_Mapref.md)

