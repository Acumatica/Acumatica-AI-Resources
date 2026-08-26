# Workflow Actions: Appearance of Buttons and Commands {#_223bb0d5-1693-4fe7-8b1f-acf77548d8f9 .concept}

You can configure the appearance of the button or command that corresponds to an action in a specific state of a workflow and in a screen configuration. The appearance settings specified in a screen configuration are applied to the action in all states of all workflows defined in the screen configuration.

## Adjusting Appearance in the Screen Configuration { .section}

To adjust the appearance of a button or command for all states of all workflows of the form, you work with the screen configuration of this form. You call the methods mentioned in the list below in a lambda expression for the Add or Update method when you register an action in the screen configuration. You can specify the appearance settings for an action in a screen configuration in the following ways:

-   Specify the category in which the command that corresponds to the action will be displayed on the More menu by calling the WithCategory method.

    By default, a command is placed in the **Other** category.

-   Specify the location of the command inside the category.

    By default, commands are displayed in the order in which the respective actions are added in the screen configuration. You can specify the command's location in one of the following ways while adding the action to the screen configuration:

    -   By specifying the Placement parameter in the WithCategory method.

        You can use this method when adding a new action to a category.

    -   By calling the Place method.

        You can use this method when you need to customize the location of a predefined command in a category.

    -   By calling one of the following methods:
        -   PlaceInCategory
        -   PlaceFirst
        -   PlaceLast
        -   PlaceBefore
        -   PlaceAfter
-   Make the command or button that corresponds to the action unavailable depending on a condition by calling the IsDisabledWhen method.

    You can also make the command or button unavailable unconditionally by calling the IsDisabledAlways method. You may need this method if you want to make unavailable a predefined button or command.

-   Hide the command or button that corresponds to the action if a condition is met by calling the IsHiddenWhen method.

    You can also hide a command or button unconditionally by calling the IsHiddenAlways method. You may need this method if you want to remove a predefined command or button from the form.


**Attention:** The IsDisabledWhen, IsDisabledAlways, IsHiddenWhen and IsHiddenAlways methods can only restrict the behavior that is implemented in the code of a graph or a graph extension.

## Adjusting Appearance in a Workflow State { .section}

To adjust the appearance of a button or command in a specific state of a workflow, you configure the workflow state as described in [Workflow States: Configuration of Actions](WorkflowAPI_States_ActionStates_Concept.md).

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

