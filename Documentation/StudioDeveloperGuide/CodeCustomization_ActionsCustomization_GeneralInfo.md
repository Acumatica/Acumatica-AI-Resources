# Action Customization: General Information {#_88889cf8-4b17-4f7b-a6a2-a8cf32b7ce94 .concept}

In this chapter, you will learn about the customization options that you can use when you are customizing an existing action.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Find the action declaration of an existing action in the source code that you need to customize
-   Override an action delegate method in a graph extension
-   Rename the button associated with an action
-   Define the availability of an action
-   Define the visibility of an action
-   Add a connotation to an action
-   Specify the category of an action
-   Use attributes to configure a button that represents an action in the user interface

## Applicable Scenarios { .section}

You customize an action when the default behavior or appearance of the action does not meet your customization requirements.

## Overview of Action Customization { .section}

An *action* is a graph member of the PXAction type. An action always has the delegate defined. Every action is represented by the PXAction object and placed in the *Actions* collection of the appropriate graph. To construct an instance of the PXAction class, you use a graph member of the PXAction type and a delegate from the highest-level extension that is available.

To modify the business logic of an action that is defined within a graph, you override the action delegate.

To rename, disable, or hide the button corresponding to an action, you override the action attributes.

The redefined action delegate must have exactly the same signature—that is, the return value, the name of the method, and any method parameters—as the base action delegate has. You always have to redefine the action delegate to alter either its delegate or the attributes attached to the action. To use the action declared within the base graph or a lower-level extension from the action delegate, you should redefine the generic `PXAction<TNode>` data member within the graph extension. You do not need to redefine the data member when it is not meant to be used from the action delegate. For details, see [Graph Extensions](../CustomizationPlatform/CG_Platform_TO_Code_CS_GraphExtensions.md). When you redefine an action delegate, you have to repeat the attributes attached to the action. Every action delegate must have PXButtonAttribute \(or the derived attribute\) and PXUIFieldAttribute attached.

For detailed information on customizing an action, see the following topics:

-   [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md)
-   [Action Customization: Overriding of an Action Delegate Method](CodeCustomization_ActionsCustomization_OverrideActionDelegate.md)
-   [Action Customization: Changing of the Display Name of an Action](CodeCustomization_ActionsCustomization_RenameActionButton.md)
-   [Action Customization: Disabling or Enabling of an Action](CodeCustomization_ActionsCustomization_EnableDisableAction.md)
-   [Action Customization: Visibility of an Action](CodeCustomization_ActionsCustomization_ShowHideAction.md)
-   [Action Customization: Connotation for an Action](CodeCustomization_ActionsCustomization_AddConnotation.md)
-   [Workflow Actions: Categories of the More Menu](../DeveloperGuide/WorkflowAPI_Actions_Categories.md)

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

