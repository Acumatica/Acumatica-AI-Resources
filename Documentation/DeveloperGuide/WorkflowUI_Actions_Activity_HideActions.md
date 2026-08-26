# Action Configuration: To Hide Unneeded Actions {#_9cd6f1a9-4b0a-4173-93e3-fe40acd5dfa0 .task}

The following activity will walk you through the process of hiding actions that are not required for the workflow.

## Story { .section}

In your workflow, you do not need the **Cancel**, **Complete**, and **Complete &amp; Follow-Up** buttons or the corresponding commands on the More menu of the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form. Acting as a technical specialist, you are going to hide these buttons and menu commands on the form.

## Process Overview { .section}

By using the [Actions](../UserGuide/AU_20_10_50.md) page, you will hide the `Cancel`, `Complete`, and `Complete & Follow-Up` actions in all the workflow states.

## System Preparation { .section}

Before you begin hiding unneeded actions, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Workflow Creation: To Add States](WorkflowUI_CreatingWorkflow_Activity_AddStates.md) activity.

## Step: Hiding Actions { .section}

To hide the actions, do the following in the Customization Project Editor for the *TaskWorkflow* project:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Actions**.

    The CR306020 \(Task\) Actions page opens.

2.  On the More menu, click **Add Existing Action**.
3.  In the **Action Properties** dialog box, which is opened, specify the following settings:
    -   **Action Name**: *CancelActivity*
    -   **Hidden**: *True*

        This setting indicates that this action will be hidden in all states of the workflow.

4.  Click **Save** to close the dialog box and save your changes.
5.  By using instructions that are similar to the previous three instructions, add the `Complete` and `Complete & Follow Up` actions and mark them as hidden.

**Parent topic:**[Configuring Actions](../DeveloperGuide/WorkflowUI_Actions_Mapref.md)

