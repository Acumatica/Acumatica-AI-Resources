# Conditions and Transitions: To Add Conditions {#_b5055f39-8096-43b4-9020-bfdc0c44b9c6 .task}

The following activity will walk you through the process of creating conditions that modify actions.

## Story { .section}

In your workflow for tasks created on the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, you need the system to perform the `Resolve` action automatically when the **Completion \(%\)** is set to *100*, which reflects that the task is complete. You also want the `Open` action to trigger transitions to different states depending on the percent of the task completion. In this activity, you will start this process by creating the conditions.

## Process Overview { .section}

You will use the [Conditions](../UserGuide/AU_20_10_10.md) page to add conditions that you will later use to modify the `Resolve` and `Open` actions.

## System Preparation { .section}

Before you begin adding conditions, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Action Configuration: To Create Workflow Actions and Add Them to the Workflow States](WorkflowUI_Actions_Activity_AddActions.md) activity.

## Step 1: Adding the Completed Condition { .section}

In this step, you will add the Completed condition, which you will later use to invoke the `Resolve` action automatically. Perform the following instructions in the Customization Project Editor for the *TaskWorkflow* project:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Conditions**.

    The Conditions: CR306020 \(Task\) page opens.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Conditions Properties** dialog box, which is opened, type `Completed` as the condition name.
4.  Click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field Name**: *Completion \(%\)*
    -   **Condition**: *Equals*
    -   **From Schema**: Selected
    -   **Value**: `100`
5.  Make sure that the **Active** check box is selected for the added row.
6.  Click **Save** to save your changes and close the dialog box.

    The added condition appears in the list of conditions on the Conditions: CR306020 \(Task\) page. You will use this condition to automatically change the status of a task to *Completed* when the condition is met.


## Step 2: Adding the NotStarted Condition { .section}

In this step, you will add the NotStarted condition, which you will later use in the `Open` action to trigger transitions to different states. Perform the following instructions:

1.  While you are still on the Conditions: CR306020 \(Task\) page, on the page toolbar, click **Add New Record**.
2.  In the **Conditions Properties** dialog box, which is opened, type `NotStarted` as the condition name.
3.  Click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field Name**: *Completion \(%\)*
    -   **Condition**: *Equals*
    -   **From Schema**: Selected
    -   **Value**: `0`
4.  Make sure that the **Active** check box is selected for the added row.
5.  Click **Save** to save your changes and close the dialog box.

    The added condition appears in the list of conditions on the Conditions: CR306020 \(Task\) page. You will use this condition to change the status of a task from *Postponed* to *Open* when the condition is met.


**Parent topic:**[Configuring Conditions and Transitions](../DeveloperGuide/WorkflowUI_ConditionsTransitions_Mapref.md)

