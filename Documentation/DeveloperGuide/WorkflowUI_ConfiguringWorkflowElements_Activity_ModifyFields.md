# Workflow Elements: To Modify Field Settings {#_721b4297-39b9-45b7-87e7-aea510ee5a4a .task}

The following activity will walk you through the process of modifying the field settings of the workflow states.

## Story { .section}

Acting as the technical specialist, you need to modify the field settings for the workflow states you have added in [Workflow Creation: To Add States](WorkflowUI_CreatingWorkflow_Activity_AddStates.md). With the modified settings, when a task is created, the value in the **Start Date** box will be the current date, and the **Completion \(%\)** box will be unavailable for editing.

## Process Overview { .section}

On the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you will add the Start Date and Completion \(%\) fields to the `Draft` state and edit their settings.

As a self-test, you will also add the Owner field to the `Open` and `Processing` states on the same page.

## System Preparation { .section}

Before you begin modifying field settings, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Workflow Creation: To Add States](WorkflowUI_CreatingWorkflow_Activity_AddStates.md) activity.

## Step 1: Specifying the Default Value for the Field { .section}

To specify the default value for the Start Date field in the `Draft` state, in the Customization Project Editor for the *TaskWorkflow* project, do the following:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Workflows** &gt; **Task**.

    The [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page opens.

2.  In the **States and Transitions** pane, click the `Draft` state.
3.  On the **Fields** tab of the **State Properties** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Object Name**: *Activity* \(inserted automatically\)
    -   **Field Name**: *Start Date*
    -   **Default Value**: *@Today*
4.  On the page toolbar, click **Save**.

## Step 2: Making the Field Unavailable for Editing { .section}

To make the *Completion \(%\)* field unavailable for editing in the `Draft` state, while you are still on the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page with the *Task* workflow displayed, do the following:

1.  In the **States and Transitions** pane, click the `Draft` state.
2.  On the **Fields** tab of the **State Properties** tab, click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Object Name**: *Activity* \(inserted automatically\)
    -   **Field Name**: *Completion \(%\)*
    -   **Disabled**: Selected
3.  On the page toolbar, click **Save**.

## Step 3: Making the Field Required—Self-Guided Exercise { .section}

Now that you have learned how to add fields for workflow states, add the Owner field to the `Open` and `Processing` states, and mark this field as required for both states.

**Parent topic:**[Configuring Workflow Elements](../DeveloperGuide/WorkflowUI_ConfiguringWorkflowElements_Mapref.md)

