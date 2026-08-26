# Workflow Creation: To Add a Workflow {#_80bba74c-dc72-4817-8070-dc9bed4efdd3 .task}

The following activity will walk you through the process of adding the screen associated with the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form to the list of customized screens and adding a workflow for the screen.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist that develops business solutions for the HardwareViewpoint company. You need to create a workflow for the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, which is planned as specified in [Workflow Creation: Planning a Workflow for a Form](WorkflowUI_CreatingWorkflow_PlanWorkflow.md).

## Process Overview { .section}

In this activity, you will do the following to begin the customization of the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form and add its workflow:

1.  By using the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form as a starting point, add the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form to the list of customized screens on the [Screens](../UserGuide/AU_20_10_00.md) page of the Customization Project Editor.
2.  Create a workflow for this form on the [Workflows](../UserGuide/AU_20_10_20.md) page.
3.  Navigate to the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page to view the workflow.

## System Preparation { .section}

Before you begin creating a workflow for the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create a customization project named *TaskWorkflow*.

## Step 1: Adding the Screen to the List of Customized Screens { .section}

To add the screen associated with the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form to the list of customized screens, do the following:

1.  In the table on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the *TaskWorkflow* link.

    The Customization Project Editor opens for the *TaskWorkflow* customization project. You will use this project to modify the [Task](../UserGuide/CR_30_60_20.md) form.

2.  In the navigation pane of the Customization Project Editor, click **Screens**.
3.  On the page toolbar of the [Screens](../UserGuide/AU_20_10_00.md) page, which is opened, click **Customize Existing Screen**.
4.  In the **Customize Existing Screen** dialog box, which is opened, select *Task \(CR306020\)*.
5.  Click **OK** to close the dialog box.

    The screen with the *CR306020* screen ID and the *Task* title is added to the list of customized screens.


## Step 2: Creating a Workflow for the Form { .section}

Create a new workflow for the added screen as follows:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Workflows**.

    The CR306020 \(Task\) Workflows page opens. \(This is the name that appears for the [Workflows](../UserGuide/AU_20_10_20.md) page.\) Notice that it does not contain any workflows.

2.  In the **State Identifier** box, select *Status*.

    This is the field that will define the status of the applicable record created on the form.

3.  On the page toolbar, click **Save**.
4.  On the page toolbar, click **Add Workflow**.
5.  In the **Add Workflow** dialog box, which is opened, specify the following settings:
    -   **Operation**: *Create New Workflow* \(specified automatically\)
    -   **Workflow Type**: *DEFAULT*
    -   **Workflow Name**: `Task`
6.  Click **Add** to close the dialog box.

    A row for the workflow appears in the table on the page. Notice that the workflow’s status is *New*, which means that this workflow is a custom workflow that is not based on any predefined workflow.

7.  In the row with the workflow you have created, select the **Active** check box.
8.  On the page toolbar, click **Save**.
9.  In the row with the created workflow, click the link in the **Workflow Name** column.

    The CR306020 \(Task\) State Diagram: Task page opens. \(This is the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page.\) Notice that the **States and Transitions** pane of the page does not contain any states or transitions.


**Parent topic:**[Creating Workflows](../DeveloperGuide/WorkflowUI_CreatingWorkflow_Mapref.md)

