# Event Handlers: To Invoke Events Triggered by Field Changes {#_89f16e2a-663b-46d0-b7f4-86a3abe0e9a3 .task}

The following activity will walk you through the process of configuring an event handler for an event that is triggered by a field change on the UI.

## Story { .section}

Suppose that you are customizing the workflow for the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form, and you want the status of a case to change automatically to *Open* if a user specifies the owner of the case. To implement this behavior, you need to create an event handler for the event that is triggered by the field change.

## Process Overview { .section}

By using the [Workflows](../UserGuide/AU_20_10_20.md) page, you will create an inherited workflow for the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form. On the [Event Handlers](../UserGuide/AU_20_10_70.md) page, you will create the event handler. You will then add a transition that this event handler triggers on the [Workflows](../UserGuide/AU_20_10_20.md) page.

## System Preparation { .section}

Before you begin modifying the event handler, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Unpublish your currently published customization project or projects by doing the following:

    1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
    2.  On the More menu \(under **Publish**\), click **Unpublish All**.
    For details on how to unpublish a customization project, see [Project Unpublishing: To Unpublish a Single Project](../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Activity_UnpublishSingleProject.md).

3.  Create a customization project named *Cases*.

## Step 1: Adding a Form to the List of Customized Screens { .section}

Add the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form to the list of customized screens in the new customization project as follows:

1.  In Acumatica ERP, open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  In the table with the customization projects, click the *Cases* link.

    The Customization Project Editor opens for the *Cases* customization project.

3.  In the navigation pane of the Customization Project Editor, click **Screens**. The Customized Screens page is opened.
4.  On the page toolbar, click **Customize Existing Screen**.
5.  In the **Customize Existing Screen** dialog box, which is opened, select *Cases \(CR306000\)*.
6.  Click **OK** to close the dialog box.

    The Screen Editor \(CR306000\) Cases page of the Customization Project Editor opens. Notice that the system has added the screen to this page.


## Step 2: Creating an Inherited Workflow for the Form { .section}

Create a customized workflow for the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form as follows:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO303000** &gt; **Workflows**.

    The CR306000 \(Cases\) Workflows page of the Customization Project Editor opens. Notice that the table on the page contains one workflow: *Default Workflow*.

2.  On the page toolbar, click **Add Workflow**.
3.  In the **Add Workflow** dialog box, which is opened, specify the following settings:
    -   **Operation**: *Extend System Workflow*
    -   **Base Workflow**: *Default Workflow*
    -   **Workflow Type**: *DEFAULT*
    -   **Workflow Name**: `Cases` \(the name of the workflow that will be displayed on the Workflows page\)
4.  Click **OK** to close the dialog box.

    A row for the workflow appears in the table on the Workflows page. Notice that the workflow’s status is *Inherited*, which means that this workflow is based on a predefined workflow.

5.  Select the **Active** check box in the row with the created workflow.

    In the row for the predefined workflow \(*Default Workflow*\), notice that the **Active** check box has been cleared automatically. This means that the system will not use this workflow for the form anymore.

6.  On the page toolbar, click **Save**.

## Step 3: Creating an Event Handler { .section}

Create an event handler as follows:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR306000** &gt; **Event Handlers**.

    The CR306000 \(Cases\) Event Handlers page opens.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Event Handler Properties** dialog box, which is opened, specify the following settings:
    -   **Handler Name**: `OwnerSpecified`
    -   **Display Name**: `Owner Specified`

        This name will be displayed on the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) and [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) pages for the workflow.

    -   **Event Type**: *Triggered by Field Change*

        This setting indicates that the event handler should handle the event that is triggered by changes in the fields.

    -   **Field Name**: *Owner*

        This setting indicates that the event is triggered by changes in only one field: `Owner`.

4.  Click **OK** to save your changes and close the dialog box.

    The added event handler appears in the table on the CR306000 \(Cases\) Event Handlers page.


## Step 4: Adding a Transition { .section}

Add a transition that is triggered by the created event handler as follows:

1.  In the navigation pane, click **Screens** &gt; **CR306000** &gt; **Workflows** &gt; **Cases**.

    The CR306000 \(Cases\) State Diagram: Cases page opens.

2.  In the **States and Transitions** pane, click the *New* state.
3.  On the More menu \(under **Actions**\), click **Add Transition**.
4.  In the **Add Transition** dialog box, which is opened, specify the following settings:
    -   **Triggered by Event Handler**: Selected
    -   **Trigger Name**: *Owner Specified* \(specified automatically\)
    -   **Target State**: *Open*
5.  Click **OK** to save your changes and close the dialog box.

    Notice that in the **States and Transitions** pane, the transition is added to the **Transitions** node below the **Close Case from Portal** &gt; **Open** transition.

    **Tip:** The system also adds the *Owner Specified* event handler to the table on the **Handlers** tab for the *New* state.


## Step 5: Testing the Customization { .section}

Test your changes to the workflow as follows:

1.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.

    The system starts publishing the customization project and displays the progress in the **Compilation** pane, which appears at the bottom of the page.

2.  After the system finishes updating the required data, click **Close Compilation Pane** in the **Compilation** pane.
3.  Open the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form and refresh it.
4.  Create a case with the following settings:
    -   **Case Class**: *JREPAIR*
    -   **Business Account**: *CAKEADO*
    -   **Contact**: *Michelle Evans* \(specified automatically\)
    -   **Subject**: `Juicer repairs`
    -   **Model of a Juicer**: *JUICER05*
5.  On the form toolbar, click **Save**.

    Notice that the status of the case is *New*.

6.  In the **Owner** box, select *Brian Shook*.

    Notice that the status of the case has changed to *Open*.


**Parent topic:**[Configuring Event Handlers](../DeveloperGuide/WorkflowUI_EventHandlers_Mapref.md)

