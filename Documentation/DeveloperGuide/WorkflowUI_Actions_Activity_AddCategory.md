# Action Configuration: To Add a Category to the More Menu {#_d606d66b-ea3c-46f7-8590-04ed48e653de .task}

The following activity will walk you through the process of adding a category to the More menu.

## Story { .section}

Suppose that you want to add all the actions in the new workflow for the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form to the **Processing** category of the More menu. However, this form does not have any categories specified for the menu, and the More menu is not displayed. Acting as the technical specialist, you need to add a category to the More menu of this form.

## Process Overview { .section}

In this activity, you will use the [Actions](../UserGuide/AU_20_10_50.md) page to add the **Processing** category to the More menu.

## System Preparation { .section}

Before you begin adding a category to the More menu, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have completed the [Workflow Creation: To Add States](WorkflowUI_CreatingWorkflow_Activity_AddStates.md) activity.

## Step: Adding a Category to the More Menu { .section}

To add the **Processing** category, do the following in the Customization Project Editor for the *TaskWorkflow* project:

1.  In the navigation pane, click **Screens** &gt; **CR306020** &gt; **Actions**.

    The CR306020 \(Task\) Actions page opens.

2.  On the More menu, click **Manage Categories**.
3.  In the **Manage Categories** dialog box, which is opened, click **Add Category**.
4.  In the **New Category** dialog box, which is opened, specify the following settings:
    -   **Category Name**: `Processing`
    -   **Display Name**: `Processing`
5.  Click **OK** to close the dialog box.
6.  In the **Manage Categories** dialog box \(to which you return\), click **OK** to close the dialog box and save your changes.

**Parent topic:**[Configuring Actions](../DeveloperGuide/WorkflowUI_Actions_Mapref.md)

