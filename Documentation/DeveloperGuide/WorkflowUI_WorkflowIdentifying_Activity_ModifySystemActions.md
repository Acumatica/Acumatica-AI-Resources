# Workflow-Identifying Fields: To Make System Actions Modify Custom Fields {#_b298b956-d4cd-4966-8829-f5f981c2f19c .task}

The following activity will walk you through the process of making system actions modify custom fields.

## Story { .section}

In the inherited workflow, if a sales order has been manually removed from hold once, it should not be possible to put this sales order on hold again, even if its **Order Total** has been increased. Therefore, when a user clicks the **Hold** or **Remove Hold** button on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you need to indicate to the system that the sales order has been manually put on hold or removed from hold, respectively. To save this information, you will use the custom fields that you have added in [Workflow-Identifying Fields: To Add Conditions with User-Defined Fields](WorkflowUI_WorkflowIdentifying_Activity_AddConditions.md). The system actions should update the values of these fields.

## Process Overview { .section}

By using the [Actions](../UserGuide/AU_20_10_50.md) page, you will modify the `Remove Hold` and `Hold` actions.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to modify actions, as described in [Action Configuration: General Information](WorkflowUI_Actions_GeneralInfo.md).
3.  Make sure that you have completed the [Workflow-Identifying Fields: To Automate Transitions by Using Conditions \(in the Tree View\)](WorkflowUI_WorkflowIdentifying_Activity_AddTransitions.md) activity.

## Step 1: Modifying the Remove Hold Action { .section}

You need to modify the `Remove Hold` system action so that the system selects the `SO Reviewed` flag for a sales order if the sales order on the [Sales Orders](../UserGuide/SO_30_10_00.md) form has been removed from hold manually and its **Order Total** is greater than or equal to $800. If the **Order Total** is less than $800, the system does not select any flag for the sales order \(that is, if the **Order Total** then increases and becomes greater than or equal to $800, the sales order is put on hold automatically\).

To modify the `Remove Hold` system action, perform the following instructions:

1.  In the navigation pane of the Customization Project Editor, select **Screens** &gt; **SO301000** &gt; **Actions**.

    The SO301000 \(Sales Orders\) Actions page opens.

2.  In the table, click the *releaseFromHold* link in the **Action Name** column.

    The **Action Properties** dialog box opens.

3.  On the **Field Update** tab of the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field**: *SO Reviewed*
    -   **From Schema**: Cleared
    -   **New Value**: `=IIf( [CuryOrderTotal]>=800, True, False)`

        These settings will prevent the system from putting a sales order on hold again if the **Order Total** is greater than or equal to $800. \(The formula makes the system set the flag to *True* only if the **Order Total** is greater than $800 when the sales order is removed from hold.\)

4.  Click **Save** to save your changes and close the dialog box.

For details on how to use formulas, see [Functions](../UserGuide/IS__con_IS_Functions.md) and [Operators](../UserGuide/IS__con_IS_Operators.md).

## Step 2: Modifying the Hold Action { .section}

The `Hold` system action is used to put a sales order on hold manually. You need to set the `SO Reviewed` flag to *False* \(that is, clear the **SO Reviewed** check box\) for the sales order in this case, because the system will set the flag to *True* when the sales order is removed from hold. You also need to set the `SO On Hold` flag to *True* for the sales order to indicate that it has been put on hold manually.

To modify the `Hold` system action, while you are still working on the SO301000 \(Sales Orders\) Actions page of the Customization Project Editor, perform the following instructions:

1.  In the table, click the *putOnHold* link.

    The **Action Properties** dialog box opens.

2.  On the **Field Update** tab of the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field**: *SO Reviewed*
    -   **From Schema**: Selected
    -   **New Value**: Cleared
3.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:

    -   **Field**: *SO On Hold*
    -   **From Schema**: Selected
    -   **New Value**: Selected
    These settings indicate that a sales order has been put on hold manually.

4.  Click **Save** to save your changes and close the dialog box.

**Parent topic:**[Customizing Workflows with a Workflow-Identifying Field](../DeveloperGuide/WorkflowUI_WorkflowIdentifying_Mapref.md)

