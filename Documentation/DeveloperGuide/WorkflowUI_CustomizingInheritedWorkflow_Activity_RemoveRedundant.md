# Diagram View: To Remove Unneeded Parts of the Workflow {#_4f802b0c-2d7a-45fe-8584-08e36baf7dae .task}

The following activity will walk you through the process of removing unneeded elements of the workflow on the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page.

## Story { .section}

Acting as the technical specialist, you need to remove the transition and the action that are not required in the workflow of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form anymore.

## Process Overview { .section}

On the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will remove the predefined direct transition from the `New` state to the `Open` state, because it is no longer required. \(In the modified workflow, this transition will not be used.\) You will also remove the `Open` action, which triggers this transition, from the `New` state.

## System Preparation { .section}

Before you begin adding a new state, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Diagram View: To Modify the Added Actions](WorkflowUI_CustomizingInheritedWorkflow_Activity_ModifyActions.md) activity.

## Step 1: Removing a Transition { .section}

In this step, you will remove the transition from the `New` state to the `Open` state. In the Customization Project Editor for the *Opportunities* customization project, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to switch to the diagram view of the workflow.
3.  In the diagram, click the transition from the `New` state to the `Open` state.
4.  In the context menu that opens, click **Delete**.
5.  In the dialog box that opens, confirm the action by clicking **Delete**.
6.  Save your changes.

    Notice that the box with the `New` state no longer contains the `Open` action. The action itself is not removed from the state; you should remove it manually.


## Step 2: Removing an Action { .section}

To remove the `Open` action from the `New` state, while you are still in the diagram view of the CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page, perform the following instructions:

1.  In the diagram, click the More button in the box with the `New` state, and click **Edit State** on the More menu.
2.  On the **Actions** tab of the **State** dialog box, which opens, clear the check box in the **Active** column in the row with the `Open` action.

    **Tip:** You cannot delete the `Open` action because it is a system action; therefore, you need to deactivate it.

3.  Click **OK** to close the dialog box.
4.  On the page toolbar, click **Save**.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

