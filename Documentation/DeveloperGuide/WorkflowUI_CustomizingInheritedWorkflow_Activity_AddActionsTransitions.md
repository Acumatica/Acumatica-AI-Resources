# Diagram View: To Add New Actions and Transitions {#_84d68901-a87e-462c-905f-7c532b420571 .task}

The following activity will walk you through the process of adding new actions and transitions to the workflow on the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page.

## Story { .section}

Suppose that in your customization efforts on the [Opportunities](../UserGuide/CR_30_40_00.md) form, you need to incorporate a process of assigning a new opportunity before giving it the *Open* status. A user should be able to do the following:

-   Change the status from *New* to *Assigned* by clicking **Assign** on the form toolbar.
-   Change the status from *Assigned* to *Open* by clicking **Accept**.
-   Change the status from *Assigned* to *New* by clicking **Reject**.

Acting as the technical specialist, you need to create the actions and specify the corresponding transitions.

## Process Overview { .section}

By using the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will add a transition from the `Assigned` state to the `Open` state, and a transition from the `Assigned` state to the `New` state. You will then add a transition from the `New` state to the `Assigned` state. By using the same page, you will also create the actions that trigger these transitions.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to add actions and transitions, as described in [Action Configuration: General Information](WorkflowUI_Actions_GeneralInfo.md) and [Conditions and Transitions: General Information](WorkflowUI_ConditionsTransitions_GeneralInfo.md).
3.  Make sure that you have completed the [Diagram View: To Add a New State](WorkflowUI_CustomizingInheritedWorkflow_Activity_AddStates.md) activity.

## Step 1: Adding a Transition from the Assigned State to the Open State { .section}

In the Customization Project Editor for the *Opportunities* customization project, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to switch to the diagram view of the workflow.
3.  In the box with the `Assigned` state, click and hold the plus button, and draw a line from the box with the `Assigned` state to the box with the `Open` state.
4.  In the **Add Transition** dialog box, which opens, click **Create** to the right of the **Trigger Name** box to add a new action.
5.  In the **New Action** dialog box, which opens, specify the following settings:
    -   **Action Name**: `Accept`
    -   **Display Name**: `Accept`
    -   **Category**: *Actions*

        This setting indicates that the action will be displayed under the **Actions** category of the More menu.

6.  Click **Save** to close the dialog box.
7.  In the **Target State** box of the **Add Transition** dialog box, make sure *Open* is selected, and click **Add** to close the dialog box.

    Notice that a label with the `Accept` action name has appeared in the box with the `Assigned` state. Also, an arrow that represents the transition from the `Assigned` state to the `Open` state has appeared in the diagram.

8.  On the page toolbar, click **Save**.

## Step 2: Adding a Transition from the Assigned State to the New State { .section}

To add a transition from the `Assigned` state to the `New` state, while you are still working with the diagram view of the CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page, perform the following instructions:

1.  In the box with the `Assigned` state, click and hold the plus button, and draw a line from the box with the `Assigned` state to the box with the `New` state.
2.  In the **Add Transition** dialog box, which opens, click **Create** to add a new action.
3.  In the **New Action** dialog box, which opens, specify the following settings:
    -   **Action Name**: `Reject`
    -   **Display Name**: `Reject`
    -   **Category**: *Actions*
4.  Click **Save** to close the dialog box.
5.  In the **Target State** box of the **Add Transition** dialog box, make sure *New* is selected.
6.  Click **Add** to close the dialog box.
7.  On the page toolbar, click **Save**.

Notice that the new transition and action have appeared in the diagram.

## Step 3: Adding a Transition from the New State to the Assigned State { .section}

To add a transition from the `New` state to the `Assigned` state, while you are still in the diagram view of the CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page, perform the following instructions:

1.  In the box with the `New` state, click and hold the plus button, and draw a line from the box with the `New` state to the box with the `Assigned` state.
2.  In the **Add Transition** dialog box, which opens, click **Create** to add a new action.
3.  In the **New Action** dialog box, which opens, specify the following settings:
    -   **Action Name**: `Assign`
    -   **Display Name**: `Assign`
    -   **Category**: *Actions*
4.  Click **Save** to close the dialog box.
5.  In the **Target State** box of the **Add Transition** dialog box, make sure *Assigned* is selected.
6.  Click **Add** to close the dialog box.
7.  On the page toolbar, click **Save**.

Notice that the new transition and action have appeared in the diagram.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

