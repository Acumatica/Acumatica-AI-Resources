# Diagram View: General Information {#_588b05f1-ac0a-4f5d-846a-13099195f542 .concept}

In addition to using the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you can use the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page \(also referred to as the *Workflow Visual Editor*\) to work with a particular workflow.

**Tip:** For a workflow with composite states, the diagram view is not available—that is, the **Diagram View** button is not displayed on the More menu of the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page. For details, see [Composite States: General Information](WorkflowUI_CompositeStates_GeneralInfo.md).

## Learning Objectives {#section_vns_plp_jhc .section}

In this chapter, you will learn about the use of the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page to customize workflows.

## Applicable Scenarios {#section_wns_plp_jhc .section}

You use the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page to create or modify workflows if you prefer to use a visual representation of a workflow instead of its tree view.

## Working with the Diagram View {#section_xns_plp_jhc .section}

The diagram view is structured like a traditional workflow, with visual representations of the states of the record and the transitions between them. To access the diagram view, while you are working with the tree view of the particular inherited, custom, or predefined workflow on the page, you click **Diagram View** on the page toolbar.

If you want a record on a form to have a status that is not available in an out-of-the-box system, you add a state that represents this status. If you want to indicate to the system that the status of the record should change when a user invokes a particular action, you specify this action as a trigger for the transition.

In the diagram view of a workflow, different states of the workflow are represented by boxes of different colors, and actions and event handlers that trigger transitions between the states are represented by labels in the boxes with states. The labels appear after you create a transition and specify the source and target states.

You add transitions from one state to another by drawing lines between these states. To draw a line, in the box with the initial state, you click and hold the plus button. When you add a transition, you need to specify an action that triggers it. You can select an existing action or add a new one.

**Tip:** Actions and event handlers for a particular state are not displayed if they do not trigger any transitions.

The following screenshot shows the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page for the Opportunities workflow. Notice that the page name is *CR304000 \(Opportunities\) State Diagram: Default Workflow*. The form number and its name \(in parentheses\) precede *State Diagram*, which is followed by a colon and the workflow name of the predefined workflow \(*Default Workflow* in this case\).

![](Images/WorkflowUI_CustomizingPredefinedWorkflow_DiagramView_Opportunities_ModernUI.png "The Workflow (Diagram View) page")

**Tip:** For a particular workflow, the tree view and diagram view of this page have the same page name.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

