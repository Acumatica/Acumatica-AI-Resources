# Action Configuration: To Create Workflow Actions and Add Them to the Workflow States {#_ab39ba3c-3801-4308-980e-3b6299b7b43c .task}

The following activity will walk you through the process of creating workflow actions and adding them to the states of the workflow.

## Story { .section}

Acting as a technical specialist, you need to create `Open`, `Postpone`, `StartWork`, and `Resolve` actions for the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form. These actions will be workflow actions, which move a task from one state of the workflow of the form to another state.

You need to add the new actions to the states as follows.

|State|Actions to Add|
|-----|--------------|
|`Draft`|`Open`, `Postpone`|
|`Processing`|`Resolve`, `Postpone`|
|`Open`|`StartWork`, `Resolve`, and `Postpone`|
|`Postponed`|`Open`|

## Process Overview { .section}

By using the [Actions](../UserGuide/AU_20_10_50.md) page, you will create the needed actions. By using the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you will add the actions to the workflow states.

## System Preparation { .section}

Before you begin adding actions to the workflow states, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Action Configuration: To Add a Category to the More Menu](WorkflowUI_Actions_Activity_AddCategory.md) activity.

## Step 1: Creating the Actions { .section}

To create the `Open`, `Postpone`, `Resolve`, and `StartWork` actions, do the following in the Customization Project Editor for the *TaskWorkflow* project:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Actions**.

    The CR306020 \(Task\) Actions page opens.

2.  On the page toolbar, click **Add New Action**.
3.  In the **Action Properties** dialog box, which is opened, specify the following settings:
    -   **Action Name**: `Open`
    -   **Display Name**: `Open`
    -   **Action Type**: *Workflow*
    -   **Category**: *Processing*
    -   **Display on Toolbar**: *If Available* \(selected automatically\)

        This setting indicates that this action will be displayed as a button on the form toolbar and as a command under a category \(**Processing**\) on the More menu if the action is available for a record based on its state.

4.  Click **Save** to close the dialog box and save your changes.
5.  By using instructions \(and settings, except for the action and display names\) that are similar to the previous three instructions, create the actions listed in the following table.

    |Action Name|Display Name|
    |-----------|------------|
    |`Postpone`|`Postpone`|
    |`Resolve`|`Resolve`|
    |`StartWork`|`Start Work`|


## Step 2: Adding the Actions to the Draft State { .section}

To add the `Open` and `Postpone` actions to the `Draft` state, do the following:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Workflows** &gt; **Task**.

    The CR306020 \(Task\) State Diagram: Task page opens.

2.  In the **States and Transitions** pane, click the `Draft` state.
3.  On the **Actions** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Open \(Open\)*
    -   **Duplicate on Toolbar**: Selected

        This setting indicates that the button associated with this action will be displayed on the form toolbar, in addition to the associated command being displayed under **Processing** on the More menu.

    -   **Connotation**: *Success*

        Because the `Open` action is the main action \(command\) in the `Draft` state, you are specifying this connotation for it. As a result, the system will highlight the associated button and command in green.

4.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Postpone \(Postpone\)*
    -   **Duplicate on Toolbar**: Cleared
5.  On the page toolbar, click **Save**.

## Step 3: Adding the Actions to the Processing State { .section}

To add the `Resolve` and `Postpone` actions to the `Processing` state, while you are still working on the CR306020 \(Task\) State Diagram: Task page, do the following:

1.  In the **States and Transitions** pane, click the `Processing` state.
2.  On the **Actions** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Resolve \(Resolve\)*
    -   **Duplicate on Toolbar**: Selected
    -   **Connotation**: *Success*
3.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Postpone \(Postpone\)*
    -   **Duplicate on Toolbar**: Cleared
4.  On the page toolbar, click **Save**.

## Step 4: Adding the Actions to the Open State { .section}

To add the `Start Work`, `Resolve`, and `Postpone` actions to the `Open` state, while you are still working on the CR306020 \(Task\) State Diagram: Task page, do the following:

1.  In the **States and Transitions** pane, click the `Open` state.
2.  On the **Actions** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Start Work \(StartWork\)*
    -   **Duplicate on Toolbar**: Selected
    -   **Connotation**: *Success*
3.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Resolve \(Resolve\)*
    -   **Duplicate on Toolbar**: Cleared
4.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Postpone \(Postpone\)*
    -   **Duplicate on Toolbar**: Cleared
5.  On the page toolbar, click **Save**.

## Step 5: Adding the Action to the Postponed State { .section}

To add the `Open` action to the `Postponed` state, while you are still working on the CR306020 \(Task\) Actions page, do the following:

1.  In the **States and Transitions** pane, click the `Postponed` state.
2.  On the **Actions** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action**: *Open \(Open\)*
    -   **Duplicate on Toolbar**: Cleared
3.  On the page toolbar, click **Save**.

**Parent topic:**[Configuring Actions](../DeveloperGuide/WorkflowUI_Actions_Mapref.md)

