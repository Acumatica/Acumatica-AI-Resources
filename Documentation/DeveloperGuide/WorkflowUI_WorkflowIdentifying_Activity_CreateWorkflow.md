# Workflow-Identifying Fields: To Create an Inherited Workflow {#_2057642f-4c9a-4268-a2da-fcfa81505501 .task}

The following activity will walk you through the process of creating an inherited workflow for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form based on a predefined one. You will modify this workflow in other activities of this chapter to fit the company's preferred workflow for sales orders.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Acting as the technical specialist, you need to create a customized workflow for sales orders on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. This form uses the Behavior internal field as the workflow-identifying field. For sales orders, the Behavior field has the *SO* value, which is the type of the workflow for sales orders.

## Process Overview { .section}

By using the [Screens](../UserGuide/AU_20_10_00.md) page, you will add the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form to the list of customized screens. You will then create a customized workflow for it based on a predefined one by using the [Workflows](../UserGuide/AU_20_10_20.md) page.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Unpublish your current customization project or projects by doing the following:
    1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
    2.  On the form toolbar, click **Unpublish All**.
3.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) form, create a customization project named *SalesOrdersCheckHold*.
4.  Open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, and do the following:
    1.  Select the *SO* order type.
    2.  On the **General** tab, select the **Hold Orders on Entry** check box.
    3.  On the form toolbar, click **Save**.

## Step 1: Adding a Screen to the List of Customized Screens { .section}

You will add the screen corresponding to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form to the list of customized screens as follows:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the link with the *SalesOrdersCheckHold* customization project.
2.  In the navigation pane of the Customization Project Editor, click **Screens**.
3.  On the page toolbar of the [Screens](../UserGuide/AU_20_10_00.md) page, which is opened, click **Customize Existing Screen**.
4.  In the **Customize Existing Screen** dialog box, which is opened, select *Sales Orders \(SO301000\)*.
5.  Click **OK** to close the dialog box.

    The screen with the *SO301000* screen ID and the *Sales Orders* title is added to the list of customized screens.

6.  In the navigation pane, click **Screens** &gt; **SO301000** &gt; **Workflows**.

    The SO301000 \(Sales Orders\) Workflows page of the Customization Project Editor opens. Notice that the table on the page contains multiple predefined workflows


## Step 2: Creating an Inherited Workflow for the Form { .section}

Create an inherited workflow for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form as follows:

1.  While you are still on the SO301000 \(Sales Orders\) Workflows page, notice that the option in the **Type Identifier** box is *Behavior*.

    This box is unavailable because the [Sales Orders](../UserGuide/SO_30_10_00.md) form contains active workflows that use the option in this box as the workflow type.

2.  On the page toolbar, click **Add Workflow**.
3.  In the **Add Workflow** dialog box, which opens, specify the following settings:
    -   **Operation**: *Extend System Workflow*
    -   **Base Workflow**: *SO workflow*
    -   **Workflow Type**: *SO*
    -   **Workflow Subtype**: *SO*

        This setting indicates that the value of the Behavior internal field is *SO*.

    -   **Workflow Name**: `Sales Order`
4.  Click **Add** to close the dialog box.

    A row for the workflow appears in the table on the Workflows page. Notice that the workflow status is *Inherited*, and that in the **Base System Workflow** column, *SO workflow* is specified for it.

5.  Select the **Active** check box in the row of the workflow you created.

    Notice that the **Active** check box is still selected for the predefined workflow \(*SO workflow*\).

6.  Clear the **Active** check box for the *SO workflow* predefined workflow.

    This setting makes the system use the modified *Sales Order* workflow instead of the predefined one \(because it is the only active workflow now\).

7.  On the page toolbar, click **Save**.
8.  In the table, click the link in the **Workflow Name** column for the created workflow.

    The SO301000 \(Sales Orders\) State Diagram: Sales Order page opens.


**Parent topic:**[Customizing Workflows with a Workflow-Identifying Field](../DeveloperGuide/WorkflowUI_WorkflowIdentifying_Mapref.md)

