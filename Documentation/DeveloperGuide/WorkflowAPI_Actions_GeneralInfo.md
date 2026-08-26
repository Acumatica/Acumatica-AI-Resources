# Workflow Actions: General Information {#_e16fef7b-5ec4-40c7-afeb-8166d9f0a3f7 .concept}

This chapter will give you experience with and an understanding of the ways you can define and configure workflow actions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define and configure a workflow action
-   Define a category for an action
-   Configure the conditional appearance of an action

## Applicable Scenarios { .section}

You define a workflow action when you need to add an action to a form that uses a workflow. You can display an action and make it available only in particular states, and you can use an action to trigger a transition from one state to another.

## Workflow Actions { .section}

*Actions* are methods that can be invoked from outside of a graph, from the UI, or through the web service API. Actions are associated with buttons or commands \(or both\) on the user interface.

Workflow actions are actions that are added to the screen configuration and to a workflow. The declaration of a workflow action consists of the following:

-   The declaration of an action in a graph.

    You can skip the declaration of an action in a graph if the action does not have complex logic—that is, if the only thing that action does is assign values to fields. In that case, you declare an action in the Configure method and define the action's logic by using capabilities of Workflow API.

-   The declaration of an action in the screen configuration.

## Action Declaration in a Graph { .section}

The declaration of an action in a graph consists of the following:

-   A field of the PXAction&lt;&gt; type, which is declared as follows.

    ```language-csharp
    public PXAction<Shipment> CancelShipment;
    ```

    In the PXAction&lt;&gt; type parameter, you should specify the main DAC of the primary data view. Otherwise, the button corresponding to the action cannot be displayed on the form toolbar \(and the corresponding command cannot be displayed on the More menu\).

-   A method that implements the action; this method has the PXButton and PXUIField attributes. This method has the following forms of declaration:
    -   Without parameters and returning void: This standard form of declaration is shown in the following code example.

        ```language-csharp
        [PXButton]
        [PXUIField(DisplayName = "Cancel Shipment")]
        protected virtual void cancelShipment()
        {
            ...
        }
        ```

        This type of declaration is used for an action that is executed synchronously and is not called from a processing form.

    -   With a parameter of the PXAdapter type and returning IEnumerable: You can see an example of this form of declaration in the following code.

        ```language-csharp
        [PXButton]
        [PXUIField(DisplayName = "Release")]
        protected virtual IEnumerable release(PXAdapter adapter)
        {
            ...
            return adapter.Get();
        }
        ```

        This type of declaration should be used when the action initiates a background operation or is called from a processing form.


The field and the method should have the same name, differing only in the capitalization of the first letter.

**Tip:** A graph includes the Actions collection of all PXAction&lt;&gt; objects defined in the graph.

For more information about actions, see [Action Definition: General Information](../StudioDeveloperGuide/CodeCustomization_ActionsDefinition_GeneralInfo.md) and the *T230 Actions* training course.

## Action Declaration in a Workflow { .section}

You add an action to the workflow by registering the action in the screen configuration as follows:

1.  You call the WithActions method in the lambda expression passed to the AddScreenConfigurationFor method.
2.  In the lambda expression for the WithActions method, you call the Add method as follows:
    -   In the method, you specify the action member of the PXAction&lt;&gt; type that you defined in the graph.
    -   You can specify in which category of the More menu the command corresponding to the action should be displayed by calling the WithCategory method in a lambda expression. If you do not specify a category for an action, its command will be listed under the **Other** category on the More menu and placed on the form toolbar as a button.

The following code shows an example of an action definition.

```language-csharp
context.AddScreenConfigurationFor(screen => screen
  .WithActions(actions =>
    actions.Add(graph => graph.PutOnHold, 
      action => action.WithCategory(ProcessingCategory));
  )
);
```

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

