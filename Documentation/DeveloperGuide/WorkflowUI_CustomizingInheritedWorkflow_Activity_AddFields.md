# Diagram View: To Specify Combo Box Values for States {#_a6294acd-ce41-4c7f-9328-541a1ee351c4 .task}

The following activity will walk you through the process of modifying the list of combo box values that are available for particular states of the workflow. \(Users will be able to select these values in certain boxes on the form when an opportunity has a particular status.\) You will use the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page to modify the workflow.

## Story { .section}

Acting as the technical specialist, you need to add to the workflow of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form a new field for the **Reason** box and add new combo box values for this field.

## Process Overview { .section}

By using the [Fields](../UserGuide/AU_20_10_60.md) page, you will add to your customization project the Resolution field, which corresponds to the **Reason** box of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form. You will also add new combo box values for this box on the same page, and specify these values for the `Open` and `New` states on the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to configure fields, as described in [Workflow Elements: General Information](WorkflowUI_ConfiguringWorkflowElements_GeneralInfo.md).
3.  Make sure that you have completed the [Diagram View: To Add the Auto-Run Action](WorkflowUI_CustomizingInheritedWorkflow_Activity_AddAutoRunAction.md) activity.

## Step 1: Adding a New Field { .section}

To add the Resolution field, which corresponds to the **Reason** box of the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, do the following in the Customization Project Editor for the *Opportunities* customization project:

1.  In the navigation pane, click **Screens** &gt; **CR304000** &gt; **Fields**.

    The CR304000 \(Opportunities\) Fields page opens.

2.  On the page, notice that the table contains the STATUS field.

    The system added this field automatically when you created the `Assigned` state in [Diagram View: To Add a New State](WorkflowUI_CustomizingInheritedWorkflow_Activity_AddStates.md).

3.  On the page toolbar, click **Add New Record**.
4.  In the **Add Field** dialog box, which is opened, specify the following settings:
    1.  **Container**: *Opportunity \(Opportunity Summary\)*
    2.  **DAC**: *PX.Objects.CR.CROpportunity \(Opportunity\)* \(specified automatically\)
    3.  **Field Name**: *Reason*
5.  Select the unlabeled check box in the added row.
6.  Click **Add &amp; Close** to save your changes and close the dialog box.

    The added field appears in the table on the CR304000 \(Opportunities\) Fields page.

7.  On the page toolbar, click **Save**.

## Step 2: Adding Combo Box Values { .section}

While you are still on the CR304000 \(Opportunities\) Fields page, add new combo box values for the added field as follows:

1.  In the table, click the row with the added Resolution field.
2.  On the page toolbar, click **Combo Box Values**.
3.  In the **Combo Box Values** dialog box, which opens, click **Add Row** on the table toolbar, and enter the following settings in the added row:
    -   **Value**: `SV`
    -   **Description**: `Service`
4.  Click **Add Row** on the table toolbar again, and enter the following settings in the added row:
    -   **Value**: `DD`
    -   **Description**: `Delivery Date`
5.  Make sure the **Active** check box is selected in both of the rows you have added.
6.  Click **Save** to close the dialog box.
7.  On the page toolbar, click **Save**.

## Step 3: Specifying the Combo Box Values for the Open State { .section}

Add the new combo box values to the `Open` state as follows:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR304000** &gt; **Workflows** &gt; **OpportunitiesAssigned**.

    The CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page opens.

2.  On the page toolbar, click **Diagram View** to switch to the diagram view of the workflow.
3.  In the diagram, double-click the `Open` state.
4.  On the **Fields** tab of the **State** dialog box, which opens, click the row with the *Reason* field name.
5.  On the table toolbar, click **Combo Box Values**.
6.  Select the **Active** check box in the row with the *SV* value, and click **Save** to close the dialog box.
7.  Click **OK** in the **State** dialog box.
8.  On the page toolbar, click **Save**.

## Step 4: Specifying the Combo Box Values for the New State { .section}

While you are still in the diagram view of the CR304000 \(Opportunities\) State Diagram: OpportunitiesAssigned page, add the new combo box values to the `New` state as follows:

1.  In the diagram, double-click the `New` state.
2.  On the **Fields** tab of the **State** dialog box, which opens, click the row with the Reason field name.
3.  On the table toolbar, click **Combo Box Values**.
4.  Select the **Active** check box in the row with the *DD* value, and click **Save** to close the dialog box.
5.  Click **OK** in the **State** dialog box.
6.  On the page toolbar, click **Save**.

**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

