# Diagram View: To Add a New State {#_73247564-a839-4c1d-a570-310d213c55c9 .task}

The following activity will walk you through the process of adding a new state to an inherited workflow on the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page of the Customization Project Editor.

## Story { .section}

Suppose that in your customization efforts on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, you need to incorporate a process of assigning a new opportunity before giving it the *Open* status. You need a new status, *Assigned*, for opportunities.

Acting as the technical specialist, you need to add a new state to the opportunity workflow for the [Opportunities](../UserGuide/CR_30_40_00.md) form. This state will correspond to the *Assigned* status of an opportunity created on this form.

## Process Overview { .section}

By using the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will add the `Assigned` state to the *OpportunitiesAssigned* workflow.

## System Preparation { .section}

Before you begin adding a new state, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to create states, as described in [Workflow Creation: General Information](WorkflowUI_CreatingWorkflow_GeneralInfo.md) and [Workflow Creation: Configuration of States](WorkflowUI_CreatingWorkflow_AddState.md).
3.  Make sure that you have completed the [Inherited Workflows: To Create an Inherited Workflow](WorkflowUI_InheritedWorkflows_Activity.md) activity.

## Step: Adding a State { .section}

To add a new state to the workflow, perform the following instructions in the Customization Project Editor for the *Opportunities* customization project:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to begin working in the diagram view of the page.
3.  On the page toolbar, click **Add State**.
4.  In the **Add State** dialog box, which opens, specify the following settings:
    -   **Identifier**: `A`
    -   **Description**: `Assigned`
    -   **Parent State**: Empty
5.  Click **OK** to close the dialog box.

    A box with the new state is added to the diagram. Notice that there are no transitions between this state and the predefined states.

6.  On the page toolbar, click **Save**.

You have added a new state to the workflow.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

