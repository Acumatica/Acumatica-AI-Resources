# Diagram View: To Adjust the System State {#_77dc0a14-103a-4b59-8c0f-03bccaaab202 .task}

The following activity will walk you through the process of adjusting a system state on the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page. In this activity, you will make one of the fields that is displayed in the system state required.

## Story { .section}

Acting as the technical specialist, you need to make the **Owner** box required for the opportunities with the *Open* status on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form.

## Process Overview { .section}

On the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will update the `Open` state \(which is a predefined state\) to make the **Owner** box required on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form.

## System Preparation { .section}

Before you begin performing this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Diagram View: To Remove Unneeded Parts of the Workflow](WorkflowUI_CustomizingInheritedWorkflow_Activity_RemoveRedundant.md) activity.

## Step: Updating the System State { .section}

To update the predefined `Open` system state, in the Customization Project Editor for the *Opportunities* customization project, perform the following instructions:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to switch to the diagram view of the workflow.
3.  In the diagram, click the More button in the box with the `Open` state, and click **Edit State** on the More menu.
4.  On the **Fields** tab of the **State** dialog box, which opens, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Object Name**: *Opportunity* \(specified automatically\)
    -   **Field Name**: *Owner*
    -   **Required**: Selected
5.  Click **OK** to close the dialog box.
6.  On the page toolbar, click **Save**.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

