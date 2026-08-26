# Workflow-Identifying Fields: To Automate Transitions by Using Conditions \(in the Diagram View\) {#_641b9029-4c53-4915-a474-aad1c61c3a5b .task}

The following activity will walk you through the process of adding to the workflow new transitions that are performed automatically when conditions are met. You will use the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page to perform this activity.

**Tip:** The diagram view is available in only the Classic UI.

## Story {#section_ivh_fqp_jhc .section}

In the predefined sales order workflow, when a user clicks **Hold** on the form toolbar or More menu of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, the `Hold (putOnHold)` action triggers transitions to the `On Hold` state from any of the following states:

-   `Credit Hold`
-   `Pending Processing`
-   `Awaiting Payment`
-   `Open`
-   `Back Order`

Suppose that you are a technical specialist. In the customized workflow, you need to add new transitions to the `On Hold` state from each of these states. With the changes implemented, a sales order will be put on hold automatically from any of these states if its **Order Total** on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form is greater than or equal to $800 and it has not been removed from hold manually.

**Tip:** You may be considering the use of the system `putOnHold` action instead of a custom one. However, you cannot adjust a system action to be run automatically by a condition, because system actions cannot be automated in this way. Therefore, you cannot use the system action in this scenario.

## Process Overview {#section_kvh_fqp_jhc .section}

By using the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will create a transition from the `Open` state to the `On Hold` state. To do so, on the same page, you will create a new action that triggers this transition, and specify the conditions for it. You will then add transitions to the `On Hold` state from other states.

## System Preparation {#section_lvh_fqp_jhc .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to add actions and transitions, as described in [Action Configuration: General Information](WorkflowUI_Actions_GeneralInfo.md) and [Conditions and Transitions: General Information](WorkflowUI_ConditionsTransitions_GeneralInfo.md).
3.  Make sure that you have completed the [Workflow-Identifying Fields: To Add Conditions with User-Defined Fields](WorkflowUI_WorkflowIdentifying_Activity_AddConditions.md) activity.

## Step 1: Adding a New Transition Between the Open State and the On Hold State {#section_mvh_fqp_jhc .section}

You will create a transition from the `On Hold` state to the `Open` state. In the Customization Project Editor for the *SalesOrdersCheckHold* customization project, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **SO301000** &gt; **Workflows** &gt; **Sales Order**.

    The SO301000 \(Sales Orders\) State Diagram: Sales Order page opens.

2.  On the page title bar, click **Settings** &gt; **Switch to Classic UI**, and in the **Confirm Action** dialog box, which opens, click **Yes**.

    In this activity, you will use the Workflow page in the Classic UI .

3.  On the page toolbar, click **Diagram View**.
4.  In the box with the `Open` state, click and hold the plus button, and draw a line from the box with the `Open` state to the box with the `On Hold` state.
5.  In the **Add Transition** dialog box, which opens, click **Create** to the right of the **Trigger Name** box to add a new action.
6.  In the **New Action** dialog box, which opens, specify the following settings:
    -   **Action Name**: `putOnHoldAuto`
    -   **Display Name**: `putOnHoldAuto` \(specified automatically\)

        **Tip:** You do not need to specify the display name for the action because this action will not be displayed in the UI.

7.  Click **OK** to close the dialog box.
8.  In the **Target State** box of the **Add Transition** dialog box, make sure that *On Hold* is selected, and click **OK**, which closes the dialog box.

    Notice that a label with the `putOnHoldAuto` action name has appeared in the box with the `Open` state. Also, an arrow, which represents the transition from the `Open` state to the `On Hold` state, has appeared in the diagram.

9.  On the page toolbar, click **Save**.

## Step 2: Adding New Transitions Between Other States and the On Hold state {#section_ovh_fqp_jhc .section}

You will create transitions from the `Pending Processing`, `Awaiting Payment`, `Credit Hold`, and `Back Order` states to the `On Hold` state. While you are still working with the diagram view of the SO301000 \(Sales Orders\) State Diagram: Sales Order page, perform the following instructions:

1.  In the box with the `Pending Processing` state, click and hold the plus button, and draw a line from the box with the `Pending Processing` state to the box with the `On Hold` state.
2.  In the **Add Transition** dialog box, specify the following settings:
    -   **Trigger Name**: *putOnHoldAuto \(putOnHoldAuto\)*
    -   **Target State**: *On Hold* \(specified automatically\)
3.  Click **OK** to close the dialog box.
4.  On the page toolbar, click **Save**.
5.  Repeat Instructions 1 through 4 for each of the following states: `Awaiting Payment`, `Credit Hold`, and `Back Order`.

## Step 3: Duplicating the Settings of the Predefined Transitions in the Added Transitions {#section_pvh_fqp_jhc .section}

The transition from other states to the `On Hold` state should have the same settings as the respective transitions triggered by the predefined `Hold` action. Thus, you will adjust the new transitions by duplicating the settings of the respective transitions triggered by the predefined action. While you are still working with the diagram view of the SO301000 \(Sales Orders\) State Diagram: Sales Order page in the Customization Project Editor, do the following:

1.  Modify the transition from the `Open` state to the `On Hold` state as follows:
    1.  Click the transition from the `Open` state to the `On Hold` state that is initiated by the `putOnHoldAuto` action, and on the context menu that is displayed, click the Edit button.

        The **Transition** dialog box opens.

    2.  In the **Fields to Update After Transition** table of the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
        -   **Field Name**: *InclCustOpenOrders*
        -   **From Schema**: Selected
        -   **New Value**: Cleared
    3.  Click **OK** to close the dialog box.
    4.  On the page toolbar, click **Save**.
2.  Modify the transition from the `Back Order` state to the `On Hold` state as follows:
    1.  Click the transition from the `Back Order` state to the `On Hold` state that is initiated by the `putOnHoldAuto` action, and on the context menu that is displayed, click the Edit button.

        The **Transition** dialog box opens.

    2.  In the **Fields to Update After Transition** table of the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
        -   **Field Name**: *BackOrdered*
        -   **From Schema**: Selected
        -   **New Value**: Cleared
    3.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
        -   **Field Name**: *InclCustOpenOrders*
        -   **From Schema**: Selected
        -   **New Value**: Cleared
    4.  Click **OK** to close the dialog box.
    5.  On the page toolbar, click **Save**.
3.  Modify the transition from the `Credit Hold` state to the `On Hold` state as follows:
    1.  Click the transition from the `Credit Hold` state to the `On Hold` state that is initiated by the `putOnHoldAuto` action, and on the context menu that is displayed, click the Edit button.

        The **Transition** dialog box opens.

    2.  In the **Fields to Update After Transition** table of the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
        -   **Field Name**: *Credit Hold*
        -   **From Schema**: Selected
        -   **New Value**: Cleared
    3.  Click **OK** to close the dialog box.
    4.  On the page toolbar, click **Save**.

**Tip:** You do not modify the settings of the transitions from the `Awaiting Payment` and `Pending Processing` states to the `On Hold` state because the corresponding predefined transitions do not update any fields after the transition is completed.

## Step 4: Duplicating the Settings of the Predefined Action in the Added Action {#section_rvh_fqp_jhc .section}

Because the `putOnHoldAuto` action should put a sales order on hold, the `Hold` field should be set to *True* when this action is performed, as is the case in the predefined `putOnHold` action. Also, this action should not be visible to users, because it is an auxiliary action that the system uses to automatically put the sales order on hold on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form if it has an **Order Total** of greater than $800 and it has not been put on hold manually. To implement these settings, perform the following instructions:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Actions**.

    The SO301000 \(Sales Orders\) Actions page opens.

2.  In the table, click the *putOnHoldAuto* link.
3.  In the **Action Properties** dialog box, which opens, do the following:
    1.  In the **Hidden** box, select *True*.
    2.  On the **Field Update** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
        -   **Active**: Selected
        -   **Field**: *Hold*
        -   **From Schema**: Selected
        -   **New Value**: Selected
    3.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:

        -   **Active**: Selected
        -   **Field**: *Canceled*
        -   **From Schema**: Selected
        -   **New Value**: Cleared
        **Tip:** You can ensure that the predefined `putOnHold` action has the same settings on the **Field Update** tab.

4.  Click **Save** to close the dialog box and save your changes.

## Step 5: Automating the Execution of Actions {#section_tvh_fqp_jhc .section}

You need to add a condition for the `putOnHoldAuto` action so that this action is performed automatically. With this action, a sales order should not remain in the `Open` state if its **Order Total** is greater than $800 and it has not been put on hold manually.

To add a condition for the `putOnHoldAuto` action, perform the following instructions:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Workflows** &gt; **Sales Order**.

    The SO301000 \(Sales Orders\) State Diagram: Sales Order page opens.

2.  On the page toolbar, click **Diagram View**.
3.  Click the More button in the box with the `Open` state, and click **Edit State** on the context menu.

    The **State** dialog box opens.

4.  On the **Actions** tab of the dialog box, click the row with the `putOnHoldAuto` action, and select *TotalMoreThan800* in the **Auto-Run Condition** column.
5.  Click **OK** to close the dialog box.
6.  On the page toolbar, click **Save**.
7.  By using instructions that are similar to the last four instructions, add the TotalMoreThan800 condition for the `putOnHoldAuto` action in the `Pending Processing`, `Awaiting Payment`, `Credit Hold`, and `Back Order` states.

**Parent topic:**[Customizing Workflows with a Workflow-Identifying Field](../DeveloperGuide/WorkflowUI_WorkflowIdentifying_Mapref.md)

