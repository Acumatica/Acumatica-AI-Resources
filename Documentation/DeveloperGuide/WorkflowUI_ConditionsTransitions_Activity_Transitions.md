# Conditions and Transitions: To Add Transitions {#_c3e48fdb-0ee9-4040-89c2-8fe2eb7f7253 .task}

The following activity will walk you through the process of creating transitions between the states of the workflow.

## Story { .section}

You can use the same action to trigger transitions from one state to different states. To do so, you need to use conditions for these transitions. If a condition is fulfilled, the system performs the transition that is first in the list of transitions from the current state. \(This list is displayed on the **States and Transitions** pane of the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page.\) If the condition is not fulfilled, the system switches to the next transition in the list and checks its condition.

When a record is in the `Postponed` state, you will use the same action \(`Open`\) to trigger transitions to the `Open` state or to the `Processing` state, depending on the percent of the task completion as follows:

-   If the value in the **Completion \(%\)** box is *0*, the target state should be `Open`.
-   If the value in the **Completion \(%\)** box is not *0*, the target state should be `Processing`.

To implement these transitions, you will use the NotStarted and Completed conditions, which you have created in [Conditions and Transitions: To Add Conditions](WorkflowUI_ConditionsTransitions_Activity_AddConditions.md).

## Process Overview { .section}

By using the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you will add the transitions from the `Draft` state to the `Open` state and to the `Postponed` state. You will also add the transitions from the `Open` state to the `Processing` state, the `Postponed` state, and the `Completed` state.

## System Preparation { .section}

Before you begin adding transitions to the workflow, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the activity [Conditions and Transitions: To Add Conditions](WorkflowUI_ConditionsTransitions_Activity_AddConditions.md) and [Action Configuration: To Create a Workflow Action That Displays a Dialog Box](WorkflowUI_Actions_Activity_AddActionsCompleted.md) activities.

## Step 1: Adding the Simple Transitions \(for the Draft State\) { .section}

To add the transitions from the `Draft` state to the `Open` state and the `Postponed` state, in the Customization Project Editor for the *TaskWorkflow* project, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Workflows** &gt; **Task**.

    The CR306020 \(Task\) Workflows page opens.

2.  Add the transition from the `Draft` state to the `Open` state as follows:
    1.  In the **States and Transitions** pane, click the `Draft` state.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Open \(Open\)*
        -   **Target State**: *Open*
    4.  Click **Add** to close the dialog box.

        Notice that the transition has appeared in the **States and Transitions** pane, in the **Transitions** node below the `Draft` state.

    5.  On the page toolbar, click **Save**.
3.  Add the transition from the `Draft` state to the `Postponed` state as follows:
    1.  In the **States and Transitions** pane, click the `Draft` state again.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, specify the following settings:
        -   **Trigger Name**: *Postpone \(Postpone\)*
        -   **Target State**: *Postponed*
    4.  Click **Add** to close the dialog box.
    5.  On the page toolbar, click **Save**.

## Step 2: Adding the Simple Transitions \(for the Open State\) { .section}

In this step, you will add the transitions from the `Open` state to the `Processing` state, the `Postponed` state, and the `Completed` state. While you are still in the tree view of the CR306020 \(Task\) State Diagram: Task page, perform the following instructions:

1.  Add the transition from the `Open` state to the `Processing` state as follows:
    1.  In the **States and Transitions** pane, click the `Open` state.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Start Work \(StartWork\)*
        -   **Target State**: *Processing*
    4.  Click **Add** to close the dialog box.

        Notice that the transition has appeared in the **States and Transitions** pane, in the **Transitions** node below the `Open` state.

2.  Add the transition from the `Open` state to the `Postponed` state as follows:
    1.  In the **States and Transitions** pane, click the `Open` state again.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Postpone \(Postpone\)*
        -   **Target State**: *Postponed*
    4.  Click **Add** to close the dialog box.
3.  Add the transition from the `Open` state to the `Completed` state as follows:
    1.  In the **States and Transitions** pane, click the `Open` state again.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Resolve \(Resolve\)*
        -   **Target State**: *Completed*
    4.  Click **Add** to close the dialog box.
4.  On the page toolbar, click **Save**.

## Step 3: Adding the Auto-Run Transitions \(for the Processing State\) { .section}

To add the transitions from the `Processing` state to the `Completed` state and the `Postponed` state, while you are still in the tree view of the CR306020 \(Task\) State Diagram: Task page, perform the following instructions:

1.  Add the transition from the `Processing` state to the `Postponed` state as follows:
    1.  In the **States and Transitions** pane, click the `Processing` state.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Postpone \(Postpone\)*
        -   **Target State**: *Postponed*
    4.  Click **Add** to close the dialog box.

        Notice that the transition is added to the **States and Transitions** pane, to the **Transitions** node below the **Processing** node.

2.  Add the transition from the `Processing` state to the `Completed` state as follows:
    1.  In the **States and Transitions** pane, click the `Processing` state again.
    2.  On the More menu, click **Add Transition**.
    3.  In the **Add Transition** dialog box, which is opened, select the following settings:
        -   **Trigger Name**: *Resolve \(Resolve\)*
        -   **Target State**: *Completed*
    4.  Click **Add** to close the dialog box.
3.  In the **States and Transitions** pane, click the `Processing` state again.
4.  On the **Actions** tab, in the row with the `Resolve (Resolve)` action, select *Completed* in the **Auto-Run Condition** column.

    This setting indicates that the system will perform this action automatically if the Completed condition is fulfilled.

5.  On the page toolbar, click **Save**.

## Step 4: Adding the Transitions That Depend on a Condition \(for the Postponed State\) { .section}

To implement transitions from the Postponed state, while you are still in the tree view of the CR306020 \(Task\) State Diagram: Task page, do the following:

1.  In the **States and Transitions** pane, click the `Postponed` state.
2.  On the More menu, click **Add Transition**.
3.  In the **Add Transition** dialog box, which is opened, select the following settings:
    -   **Trigger Name**: *Open \(Open\)*
    -   **Condition**: *NotStarted*
    -   **Target State**: *Open*
4.  Click **Add** to close the dialog box.
5.  In the **States and Transitions** pane, click the `Postponed` state again.
6.  On the More menu, click **Add Transition**.
7.  In the **Add Transition** dialog box, which is opened, select the following settings:
    -   **Trigger Name**: *Open \(Open\)*
    -   **Target State**: *Processing*
8.  Click **Add** to close the dialog box.

    The system will perform this transition if the condition for the first transition \(that is, the NotStarted condition\) is not fulfilled.

9.  On the page toolbar, click **Save**.

## Step 5: Adding a Transition That Causes Update of a Field After the Transition \(for the Completed State\) { .section}

To add the transitions from the `Completed` state to the `Open` state, while you are still in the tree view of the CR306020 \(Task\) State Diagram: Task page, perform the following instructions:

1.  In the **States and Transitions** pane, click the `Completed` state.
2.  On the More menu, click **Add Transition**.
3.  In the **Add Transition** dialog box, which is opened, specify the following settings:
    -   **Trigger Name**: *Reopen \(Reopen\)*
    -   **Target State**: *Open*
4.  Click **Add** to close the dialog box.
5.  In the **Transitions** node of the **States and Transitions** pane, click the added transition.
6.  In the **Fields to Update After Transition** table of the **Transition Properties** tab, click **Add Row**on the table toolbar, and specify the following settings in the added row:

    -   **Field Name**: *Completion \(%\)*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormReopen.Completion\]*
    The last setting indicates that the Completion \(%\) field will be updated with the value that the user has specified in the **Details** dialog box. \(You have created this dialog box in [Workflow Elements: To Add a Dialog Box](WorkflowUI_ConfiguringWorkflowElements_Activity_AddDialogBox.md).\)

7.  On the page toolbar, click **Save**.

**Parent topic:**[Configuring Conditions and Transitions](../DeveloperGuide/WorkflowUI_ConditionsTransitions_Mapref.md)

