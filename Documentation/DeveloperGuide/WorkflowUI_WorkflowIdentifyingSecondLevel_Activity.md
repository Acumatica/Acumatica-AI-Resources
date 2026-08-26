# Workflow-Identifying Fields of the Second Level: Process Activity {#_215a0156-1820-4636-ac34-fa9b5efabac9 .task}

The following activity will walk you through the process of creating workflows for custom order types.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you want to give users the ability to create sales orders of the *In-Store Retail Order* and *Phone Order* types, and you do not want users to put the orders of the *In-Store Retail Order* type on hold. Further suppose that the orders of the *Phone Order* type should be confirmed. This means that when a user creates a phone order, its status should change to *Pending Confirmation*, and that the user should confirm the order to open it. You need to create separate workflows for these order types.

## Process Overview { .section}

By using the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you will create two order types. By using the [Workflows](../UserGuide/AU_20_10_20.md) page of the Customization Project Editor, you will create separate workflows for these order types. On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you will then test the customized workflow.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure you have learned how to perform workflow customization, as described in [Inherited Workflows: General Information](WorkflowUI_InheritedWorkflows_GeneralInfo.md).
3.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create a customization project named *SalesOrderTypes*.

## Step 1: Creating Order Types { .section}

To add new order types, do the following:

1.  In Acumatica ERP, open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, and add a new record.
2.  In the Summary area, specify the following settings:
    -   **Order Type**: `IS`
    -   **Description**: `In-Store Retail Order`
    -   **Order Template**: *SO*
3.  On the **General** tab, specify the following settings:
    -   **Order Numbering Sequence** \(**Order Settings** section\): *SOORDER*
    -   **Calculate Freight** \(**Order Settings** section\): Cleared
    -   **Freight Account** \(**Posting Settings** section\): *40010 \(Sales – Freight\)*
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Order Type**: `PH`
    -   **Description**: `Phone Order`
    -   **Order Template**: *SO*
6.  On the **General** tab, specify the following settings:
    -   **Order Numbering Sequence** \(**Order Settings** section\): *SOORDER*
    -   **Calculate Freight** \(**Order Settings** section\): Cleared
    -   **Freight Account** \(**Posting Settings** section\): *40010 \(Sales – Freight\)*
7.  On the form toolbar, click **Save**.

## Step 2: Creating the Workflow for the In-Store Retail Order Type { .section}

To create a workflow for the *In-Store Retail Order* type, which you have added in the previous step, do the following:

1.  Open the *SalesOrderTypes* customization project, and add the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form to the list of customized screens. \(For details, see [Workflow Creation: To Add a Workflow](WorkflowUI_CreatingWorkflow_Activity_CreateWorkflow.md).\)
2.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Workflows**.

    The SO301000 \(Sales Orders\) Workflows page of the Customization Project Editor opens. Notice that the table on the page contains multiple workflows. Also notice that the value in the **Subtype Identifier** box is *Order Type* and that this box is read-only.

3.  On the More menu \(under **Actions**\), click **Add Workflow**.
4.  In the **Add Workflow** dialog box, which opens, specify the following settings:
    -   **Operation**: *Extend System Workflow*

        You select this operation when you want to create an inherited workflow based on another workflow.

    -   **Base Workflow**: *SO Workflow*

        This is the specific workflow that will be extended for the inherited workflow that you are creating.

    -   **Workflow Type**: *SO*

        This setting indicates that the created workflow will be used for sales orders that have the have the *Sales Order* automation behavior.

    -   **Workflow Subtype**: *IS*

        This setting indicates that the workflow will be applied to the sales orders of the *In-Store Retail Order* order type.

    -   **Workflow Name**: *Sales Order: IS* \(inserted automatically\)
5.  Click **OK** to close the dialog box.

    A row for the workflow appears in the table on the [Workflows](../UserGuide/AU_20_10_20.md) page. Notice that the workflow’s status is *Inherited*. Also notice that the value in the **Base System Workflow** column is *SO Workflow*.

6.  Select the **Active** check box in the row with the created workflow.

    Notice that the **Active** check box is still selected for the predefined workflow \(*SO Workflow*\). The system will use the *Sales Order: IS* workflow for sales orders of the *In-Store Retail Order* type. Also, the system will use the predefined *SO Workflow* for sales orders of the *Sales Order*, *eCommerce Order*, and *Sales Order with Allocation* types.

7.  On the page toolbar, click **Save**.

## Step 3: Creating the Workflow for the Phone Order Type { .section}

To create a workflow for the *Phone Order* type, which you have added in Step 1, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Workflows**.

    The SO301000 \(Sales Orders\) Workflows page of the Customization Project Editor opens. Notice that the **Subtype Identifier** box is unavailable for editing and that the value in this box is *Order Type*.

2.  On the More menu \(under **Actions**\), click **Add Workflow**.
3.  In the **Add Workflow** dialog box, which opens, specify the following settings:
    -   **Operation**: *Extend System Workflow*
    -   **Base Workflow**: *SO Workflow*
    -   **Workflow Type**: *SO*
    -   **Workflow Subtype**: *PH*

        This setting indicates that the workflow will be used for sales orders of the *Phone Order* order type.

    -   **Workflow Name**: *Sales Order: PH* \(inserted automatically\)
4.  Click **OK** to close the dialog box.

    A row for the workflow appears in the table on the Workflows page. Notice that the workflow’s status is *Inherited*.

5.  Select the **Active** check box for the created workflow.

    Notice that the **Active** check box is still selected for the predefined workflow \(*SO Workflow*\) and for the *Sales Order: IS* workflow you have created in the previous step. This means that when you create a sales order of the *Phone Order* type, the system will use this new workflow and not the *SO Workflow* or *Sales Order: IS* workflow.

6.  On the page toolbar, click **Save**.

## Step 4: Specifying Settings for the Sales Order: IS Workflow { .section}

Now that you have created the workflows for each of the new order types, you can specify different settings for these workflows. Do the following:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Workflows** &gt; **Sales Order: IS**.

    The SO301000 \(Sales Orders\) State Diagram: Sales Order: IS page opens.

2.  In the **States and Transitions** pane, click the *Open* state.
3.  On the **Actions** tab, clear the check box in the row with the *Hold \(putOnHold\)* action.

    This setting indicates that this action will not be available when the order is in the *Open* state.

4.  In the Transitions node of the *Open* state, click the transition the *On Hold* state.
5.  On the **Transitions** tab, clear the **Active** check box for the transition.

    This setting indicates that the user will not be able to change the status of the order from *Open* to *Hold*.

6.  Save your changes.
7.  Publish the customization project.

## Step 5: Specifying Settings for the Sales Order: PH Workflow { .section}

Specify the settings for the *Sales Order: PH* workflow as follows:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO301000** &gt; **Workflows** &gt; **Sales Order: PH**.

    The SO301000 \(Sales Orders\) State Diagram: Sales Order: PH page opens.

2.  On the page toolbar, click **Add State**, and specify the following settings in the dialog box that opens:
    -   **Identifier**: `W`
    -   **Description**: `Pending Confirmation`
3.  Click **OK** to close the dialog box, and save your changes.
4.  On the **States and Transitions** pane, click the *Pending Confirmation* state, and on the page toolbar, click **Add Transition**.
5.  In the **Add Transition** dialog box, which is opened, click **Create** to the right of the **Trigger Name** box, and specify the following settings in the dialog box that opens:
    -   **Action Name**: `Confirm`
    -   **Display Name**: `Confirm`
6.  Click **OK** to close the dialog box.
7.  In the **Add Transition** dialog box, to which you return, select *Open* in the **Target State** box, and click **OK**.

    The system adds the transition to the *Pending Confirmation* state.

8.  On the **States and Transitions** pane, click the *Pending Confirmation* state again, and on the page toolbar, click **Add Transition**.
9.  In the **Add Transition** dialog box, which is opened, specify the following settings:
    -   **Trigger Name**: *Cancel Order \(cancelOrder\)*
    -   **Target State**: *Cancel*
10. Click **OK** to close the dialog box, and save your changes.
11. On the **States and Transitions** pane, expand the **Transitions** node for the *\_* initial state, and click the transition to the *Open* state.
12. On the **Transition Properties** tab, select *Pending Confirmation* in the **Target State** box, and save your changes.
13. Publish the customization project.

## Step 6: Testing the Customization { .section}

In Acumatica ERP, test your changes as follows:

1.  Open the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO30100\) form. If you already have the form open, refresh it.
2.  Create a sales order, and specify the following settings in the Summary area:
    -   **Order Type**: *IS*
    -   **Customer**: *CANDYY*
    -   **Description**: `Jam order`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the row:
    -   **Inventory ID**: *CHERJAM32*
    -   **Quantity**: `5`
4.  Save your changes.

    Notice that the status of the sales order is *Open*, and that **Hold** command is not available on the More menu.

5.  Add a new sales order, and specify the following settings in the Summary area:
    -   **Order Type**: *PH*
    -   **Customer**: *COFFEESHOP*
    -   **Description**: `Fruit order`
6.  On the **Details** tab, click **Add Row**, and specify the following settings in the row:
    -   **Inventory ID**: *GRAPEFRUIT*
    -   **Quantity**: `5`
7.  Save your changes.

    Notice that the status of the sales order is *Pending Confirmation*, and that on the More menu, only the **Confirm** and **Cancel Order** commands are available.

8.  On the More menu \(under **Actions**\), click **Confirm**.

    The status of the sales order changes to *Open*.


**Parent topic:**[Using Workflow-Identifying Fields of the Second Level](../DeveloperGuide/WorkflowUI_WorkflowIdentifyingSecondLevel_Mapref.md)

