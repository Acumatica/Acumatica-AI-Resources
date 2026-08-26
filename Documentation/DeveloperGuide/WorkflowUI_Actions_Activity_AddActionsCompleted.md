# Action Configuration: To Create a Workflow Action That Displays a Dialog Box {#_ff131c20-a41f-4ed9-bc3d-8e4ed4dc0601 .task}

The following activity will walk you through the process of adding a workflow action that displays a dialog box.

## Story { .section}

When a task on the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form has the *Completed* status, only one action should be available: the `Reopen` action. When a user clicks the **Reopen** button or command, you want the system to display the **Reopen** dialog box, in which the user must specify the percent of the task completion.

Acting as the technical specialist, you need to create an action and add it to the `Completed` state.

## Process Overview { .section}

On the [Actions](../UserGuide/AU_20_10_50.md) page, you will create an action that displays a dialog box. On the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you will then add the action to the `Completed` state.

## System Preparation { .section}

Before you begin adding actions to the workflow states, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Workflow Elements: To Add a Dialog Box](WorkflowUI_ConfiguringWorkflowElements_Activity_AddDialogBox.md) and [Action Configuration: To Add a Category to the More Menu](WorkflowUI_Actions_Activity_AddCategory.md) activities.

## Step 1: Creating an Action { .section}

To create the `Reopen` action, do the following in the Customization Project Editor for the *TaskWorkflow* project:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Actions**.

    The CR306020 \(Task\) Actions page opens.

2.  On the page toolbar, click **Add New Action**.
3.  In the **Action Properties** dialog box, which is opened, specify the following settings:
    -   **Action Name**: `Reopen`
    -   **Display Name**: `Reopen`
    -   **Dialog Box**: *Details\(FormReopen\)*
    -   **Action Type**: *Workflow*
    -   **Category**: *Processing*
4.  Click **Save** to close the dialog box and save your changes.

## Step 2: Adding the New Action to the Completed State { .section}

To add the `Reopen` action to the `Completed` state, do the following:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Workflows** &gt; **Task**.

    The CR306020 \(Task\) State Diagram: Task page opens.

2.  In the **States and Transitions** pane, click the `Completed` state.
3.  On the **Actions** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Reopen \(Reopen\)*
    -   **Duplicate on Toolbar**: Cleared
4.  On the page toolbar, click **Save**.

**Parent topic:**[Configuring Actions](../DeveloperGuide/WorkflowUI_Actions_Mapref.md)

