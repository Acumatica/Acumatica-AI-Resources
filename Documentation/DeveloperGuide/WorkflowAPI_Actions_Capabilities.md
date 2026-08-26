# Workflow Actions: Configuration of Actions {#_359ff4ec-5a62-4437-bb1d-5cb471bd7bc9 .concept}

You can configure workflow actions in the following ways:

-   Add, update, or delete an action in the screen configuration by calling the Add, Update, or Delete method, respectively, in the WithActions method at the screen configuration level.

    For example, see [Step 3: Adding the Action to the Workflow](WorkflowAPI_Actions_Activity_RemoveHold_AddWorkflowAction.md) of the [Workflow Actions: To Implement a Simple Action](WorkflowAPI_Actions_Activity_RemoveHold.md) activity.

-   Add, update, or delete an action in a specific state of a workflow by calling Add, Update, or Delete method, respectively, in the WithActions method at the state level. By adding an action to a state, you make it available in this state unless it is restricted by the settings specified in the screen configuration.

    For details on configuring an action in a workflow state, see [Workflow States: Configuration of Actions](WorkflowAPI_States_ActionStates_Concept.md).

    For example, see [Workflow States: To Define a Workflow State](WorkflowAPI_States_Activity_DefiningState.md).

-   Assign field values when the action is performed by calling the WithFieldAssignments method while adding or updating the action in the screen configuration. For a detailed example, see [Workflow Actions: To Implement an Action with Field Assignments](WorkflowAPI_Actions_Activity_WithFieldAssignments.md).
-   Provide the parameters of an action by calling the WithParameterAssignments method.
-   Display a dialog box when an action is clicked by calling the WithForm method. For details on defining dialog boxes, see [Workflow Dialog Boxes: General Information](WorkflowAPI_DialogBox_GeneralInfo.md).
-   Configure the appearance of an action on the More menu and form toolbar. For more information, see [Workflow Actions: Appearance of Buttons and Commands](WorkflowAPI_Actions_Appearance.md).
-   Configure the persisting options. That is, you can specify when the system should save the current changes to the database. For details about persisting options, see [Workflow Actions: Persisting Options](WorkflowAPI_Actions_PersistingOptions.md).
-   Configure mass processing, as described in [Workflow Actions: Mass Processing Actions](WorkflowAPI_Actions_MassProcessing.md).
-   Configure the behavior of an action. For details, see [Workflow Actions: Action's Behavior](WorkflowAPI_Actions_Behavior.md).
-   Map an action to the Acumatica mobile app.
-   Display an action on a side panel by calling the IsSidePanelScreenmethod, as described in [Workflow Actions: Opening of a Side Panel](WorkflowAPI_Actions_SidePanel.md)

## Levels of Action Configuration { .section}

You can configure an action on the following levels, which are listed in order:

1.  In the definition of the action in a graph or in one of its extensions
2.  In a screen configuration
3.  In a workflow state

Configurations defined on each level are applied to the subsequent level. For example, if you specified a category for an action in the PXButton attribute in a graph, this category is the default category for this action for the whole screen configuration, and you can change it in the screen configuration. But for some properties \(see the table below\), the configuration specified on the next level can only narrow what has been defined in the previous level.

The following table lists all possible configuration types and the levels where they can be changed.

|Configuration Type|Graph|Screen Configuration|Workflow State|Comment|
|------------------|-----|--------------------|--------------|-------|
|Visibility|+|+| |The condition on the next level can only narrow what has been defined in the previous level.|
|Availability|+|+| |
|Category|+|+| |The location inside the category can be specified only in the screen configuration.|
|Connotation|+| |+| |
|Display on the form toolbar|+| |+| |
|Assign field values|+|+| | |
|Provide parameters| |+| | |
|Display a workflow dialog box| |+| | |
|Configure the persisting option|+|+| | |
|Run report, open a generic inquiry, create a new record|+|+| | |
|Expose the action to the mobile app| |+| | |

## Mapping a Workflow Action to the Mobile App {#_58dc09f1-7f23-43ae-bd25-6aa9e5f6e16b .section}

You can map a workflow action to the Acumatica mobile app without using MSDL. To map a workflow action, call the IsExposedToMobile method while adding an action to a screen configuration.

For this method to work, you must use MSDL to map the screen where the action should be displayed. For more information about mapping forms to the Acumatica mobile app, see [Mobile Framework Guide](../StudioDeveloperGuide/Mobile_Framework_Guide.md).

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

