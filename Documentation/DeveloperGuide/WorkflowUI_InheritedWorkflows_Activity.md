# Inherited Workflows: To Create an Inherited Workflow {#_fce7d50a-a8fe-4897-b0ad-a332a2c28492 .task}

The following activity will walk you through the process of adding an inherited workflow for a form based on a predefined one.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_fpz_vbp_jhc .section}

Acting as the technical specialist, you need to create a customized workflow for the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form.

## Process Overview {#section_gpz_vbp_jhc .section}

You will add the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form to the list of customized screens on the [Screens](../UserGuide/AU_20_10_00.md) page of the Customization Project Editor. You will then use the [Opportunities](../UserGuide/CR_30_40_00.md) form as a starting point to create an inherited workflow for this form on the [Workflows](../UserGuide/AU_20_10_20.md) page. From this page, you will open the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page for the inherited workflow.

## System Preparation {#section_hpz_vbp_jhc .section}

Before you begin performing this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Unpublish your current customization project or projects by doing the following:

    1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
    2.  On the form toolbar, click **Unpublish All**.
    For details on how to unpublish a customization project, see [Project Unpublishing: To Unpublish a Single Project](../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Activity_UnpublishSingleProject.md).

3.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create a customization project named *Opportunities*.

## Step 1: Adding a Form to the List of Customized Screens {#section_ipz_vbp_jhc .section}

Add the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form to the list of customized screens as follows:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the link with the *Opportunities* customization project.
2.  In the navigation pane of the Customization Project Editor, click **Screens**.
3.  On the page toolbar of the [Screens](../UserGuide/AU_20_10_00.md) page, which is opened, click **Customize Existing Screen**.
4.  In the **Customize Existing Screen** dialog box, which is opened, select *Opportunities \(CR304000\)*.
5.  Click **OK** to close the dialog box.

    The screen with the *CR304000* form ID and the *Opportunities* title is added to the list of customized screens.

6.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Workflows**.

    The CR304000 \(Opportunities\) Workflows page of the Customization Project Editor opens with the list of workflows for this screen. Notice that the list contains one workflow: *Default Workflow*. This is the predefined workflow of the form.


## Step 2: Creating a Customized Workflow {#section_jpz_vbp_jhc .section}

Create a customized workflow for the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form as follows:

1.  On the page toolbar of the CR304000 \(Opportunities\) Workflows page, which you opened in the previous step, click **Add Workflow**.
2.  In the **Add Workflow** dialog box, which opens, specify the following settings:
    -   **Operation**: *Extend System Workflow*

        This is the operation you select when you want to create an inherited workflow based on another workflow.

    -   **Base Workflow**: *Default Workflow*

        This is the specific workflow that will be extended for the inherited workflow that you are creating. Although this screen has one workflow, others have several.

    -   **Workflow Type**: *DEFAULT*

        This is the type of the base workflow that will be extended for the inherited workflow.

    -   **Workflow Name**: `OpportunitiesAssigned` \(the name of the workflow that will be displayed in the UI\)
3.  Click **Add** to close the dialog box.

    A row for the workflow appears in the table on the Workflows page. Notice that the workflow’s status is *Inherited*.

4.  Select the **Active** check box for the created workflow.

    Notice that the **Active** check box has been cleared automatically for the predefined workflow \(*Default Workflow*\). This means that the system will not use this workflow for the form anymore, after the customization project is published.

5.  On the page toolbar, click **Save**.
6.  In the table, click the link in the **Workflow Name** column for the created workflow. The tree view of the CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.
7.  On the page toolbar, click **Diagram View**.

    In future activities, you will use the diagram view of the workflow to customize the workflow that you have created.


**Parent topic:**[Working with Inherited Workflows](../DeveloperGuide/WorkflowUI_InheritedWorkflows_Mapref.md)

