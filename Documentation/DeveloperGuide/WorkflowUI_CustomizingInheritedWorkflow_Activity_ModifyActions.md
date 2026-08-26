# Diagram View: To Modify the Added Actions {#_1aa1e5c0-3853-439d-9af8-14ddb436eb93 .task}

The following activity will walk you through the process of modifying the actions so that these actions display dialog boxes, modify field values, and be available on the processing forms.

## Story { .section}

In the HardwareViewpoint company, a salesperson should add additional information when performs the following actions with an opportunity on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form of Acumatica ERP:

-   While accepting the opportunity, specify the reason and the stage of the opportunity
-   While rejecting the opportunity, select the reason and provide additional details for it
-   While assigning the opportunity, select the owner of the opportunity

Acting as the technical specialist, you need to add the dialog boxes that prompt users for this information to the `Accept`, `Reject`, and `Assign` actions and modify the actions so that they use the information specified in the dialog boxes. You also need to display the actions on the [Update Opportunities](../UserGuide/CR_50_31_20.md) \(CR503120\) form for mass-processing of opportunities. You need to make the buttons that correspond to the `Assign` and `Accept` actions be displayed on the form toolbar.

## Process Overview { .section}

In the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page, you will make the button that corresponds to `Assign` action be displayed on the page toolbar. On the [Actions](../UserGuide/AU_20_10_50.md) page, for each of the `Reject`, `Accept`, and `Assign` actions, you will add a dialog box. You will also add the action to the list of actions available for mass-processing of opportunities. You will then define how the action should use the values specified in the dialog box.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to add actions, as described in [Action Configuration: General Information](WorkflowUI_Actions_GeneralInfo.md).
3.  Make sure that you have completed the [Diagram View: To Add Dialog Boxes](WorkflowUI_CustomizingInheritedWorkflow_Activity_AddDialogBox.md) activity.

## Step 1: Making the Buttons Displayed on the Form Toolbar { .section}

You will now modify the `Assign` and `Accept` actions so that the associated buttons appear on the form toolbar of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form. In the Customization Project Editor for the *Opportunities* customization project, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to switch to the diagram view of the workflow.
3.  Modify the `Assign` action as follows:
    1.  In the diagram, click the More button in the box with the `New` state, and click **Edit State** on the More menu.
    2.  On the **Actions** tab of the **State** dialog box, which opens, in the row with the `Assign` action, select the check box in the **Duplicate on Toolbar** column.

        This will make the button associated with the `Assign` action be displayed on the form toolbar of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form when an opportunity has the `New` status.

    3.  Click **OK** to close the dialog box.
4.  Modify the `Accept` action as follows:
    1.  In the diagram, double-click the `Assigned` state.
    2.  On the **Actions** tab of the **State** dialog box, which opens, in the row with the `Accept` action, select the check box in the **Duplicate on Toolbar** column.

        This will make the button associated with the `Accept` action be displayed on the form toolbar of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form when an opportunity has the *Assigned* status.

    3.  Click **OK** to close the dialog box.
5.  On the page toolbar, click **Save**.

## Step 2: Making the Reject Action Work with the Dialog Box { .section}

Now you will add the dialog box to the `Reject` action. You will also add the action to the list of actions available on the [Update Opportunities](../UserGuide/CR_50_31_20.md) \(CR503120\) form for mass-processing of opportunities. You will then define how the action should use the values specified in the dialog box.

In the Customization Project Editor for the *Opportunities* customization project, do the following:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Actions**.
2.  In the table on the CR304000 \(Opportunities\) Actions page, which opens, click the *Reject* link.
3.  In the **Action Properties** dialog box, which opens, select *Details\(FormReject\)* as the **Dialog Box**.
4.  In the **Processing Screen** box, select *CR503120 - Update Opportunities*.
5.  On the **Field Update** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field**: *Reason*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormReject.Reason\]*
6.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:
    -   **Field**: *Details*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormReject.Details\]*
7.  Click **Add Row** on the table toolbar again, and specify the following settings in the added row:

    -   **Field**: *Owner*
    -   **From Schema**: Cleared
    -   **New Value**: `=Null`
    The **New Value** setting is required to clear the **Owner** box when the status of an opportunity changes to *New*.

8.  Click **Save** to save your changes and close the dialog box.

## Step 3: Making the Accept Action Work with the Dialog Box—Self-Guided Exercise { .section}

In this self-guided exercise, by using the CR304000 \(Opportunities\) Actions page, you will add the dialog box to the `Accept` action. You will also add the action to the list of actions available on the [Update Opportunities](../UserGuide/CR_50_31_20.md) \(CR503120\) form for mass-processing of opportunities and define how the action should use the values specified in the dialog box.

For the `Accept` action, you need to specify the following settings in the **Action Properties** dialog box:

-   **Dialog Box**: *Details\(FormAccept\)*
-   **Processing Screen**: *CR503120 - Update Opportunities*.
-   On the **Field Update** tab, Row 1:
    -   **Field**: *Reason*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormAccept.Reason\]*
-   On the **Field Update** tab, Row 2:
    -   **Field**: *Stage*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormAccept.Stage\]*

## Step 4: Making the Assign Action Work with the Dialog Box—Self-Guided Exercise { .section}

In this self-guided exercise, by using the CR304000 \(Opportunities\) Actions page, you will add the dialog box to the `Assign` action. You will also add the action to the list of actions available on the [Update Opportunities](../UserGuide/CR_50_31_20.md) \(CR503120\) form for mass-processing of opportunities and define how the action should use the values specified in the dialog box.

For the `Assign` action, you need to specify the following settings in the **Action Properties** dialog box:

-   **Dialog Box**: *Details\(FormAssign\)*
-   **Processing Screen**: *CR503120 - Update Opportunities*.
-   A row on the **Field Update** tab:
    -   **Field**: *Owner*
    -   **From Schema**: Cleared
    -   **New Value**: *\[FormAssign.Owner\]*

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

