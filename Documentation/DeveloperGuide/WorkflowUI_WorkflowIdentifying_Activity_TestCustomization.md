# Workflow-Identifying Fields: To Test the Inherited Workflow with a Workflow-Identifying Field {#_7ef39d6c-e4fe-49cd-acfe-6d6e1e57ee26 .task}

The following activity will walk you through the process of testing the inherited workflow that has a workflow-identifying field.

## Story { .section}

Acting as the technical specialist, you need to publish your customization project and then test your changes on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form to make sure that the inherited workflow works as expected.

## Process Overview { .section}

By starting on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of Acumatica ERP, you will go to the Customization Project Editor for your customization project and publish it. On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you will then test the customized workflow.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to test a customization, as described in [Testing of the Customization Project: General Information](WorkflowUI_TestingCustomization_GeneralInfo.md).
3.  Make sure that you have completed the [Workflow-Identifying Fields: To Make System Actions Modify Custom Fields](WorkflowUI_WorkflowIdentifying_Activity_ModifySystemActions.md) activity.

## Step 1: Publishing the Customization Project { .section}

Publish your customization project as follows:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the *SalesOrdersCheckHold* project name to open the customization project.
2.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.
3.  After the system finishes updating the required data, click **Close Compilation Pane**.

## Step 2: Testing the Automated Transitions { .section}

Test the automated transitions in the workflow of sales orders as follows:

1.  Open the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. If you already have the form open, refresh it.
2.  Add a new record.

    Notice that for the *SO* order type, which is selected by default, the status of the document is *Open*. This is because in the workflow for the sales orders, you have implemented the automatic transition from the `On Hold` state to the `Open` state if **Order Total** is less than $800.

3.  Specify the following settings for the new sales order:
    -   **Order Type**: *SO*
    -   **Customer**: *CITRUS*
    -   **Description**: `Equipment order`
4.  On the **Details** tab, click **Add Row**, and specify the following settings in the row:
    -   **Inventory ID**: *BLADE12*
    -   **Quantity**: `9`
5.  Save your changes.

    Notice that the status of the sales order has changed to *On Hold* because the **Order Total** is now greater than $800.

6.  In the row, change the quantity to `3`.
7.  Save your changes.

    Notice that the system has changed the status to *Open* because the **Order Total** is less than $800.


## Step 3: Testing the Modified System Actions { .section}

While you are still on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, test the modified system actions as follows:

1.  Open the sales order that you have created in the previous step.
2.  On the form toolbar, click **Hold**.

    You have manually changed the status to *On Hold*.

3.  On the **Details** tab, in the row with *BLADE12* inventory item, change the quantity to `9`.
4.  On the form toolbar, click **Remove Hold**.

    You have manually changed the status to *Open*.

5.  On the **Details** tab, in the row with the *BLADE12* inventory item, change the quantity to `10`.
6.  Save your changes.

    Make sure that the status has not changed to *On Hold* because the sales order was already removed from hold manually when the amount was greater than $800.


## Step 4: Making Sure That the Workflow Is Applied Only to Sales Orders { .section}

Because you have customized the workflow with a workflow-identifying field, you need to make sure that your changes are not applied to the documents other than sales orders. While you are still on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, do the following:

1.  On the form toolbar, click **Add New Record**.
2.  Create a new invoice with the following settings:
    -   **Order Type**: *IN*
    -   **Customer**: *CITRUS*
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the row:
    -   **Inventory ID**: *BLADE12*
    -   **Quantity**: `9`
4.  Save your changes.

    Notice that the status of the invoice remains *Open* although the **Order Total** is now greater than $800, which indicates that the workflow for invoices has not been changed.


**Parent topic:**[Customizing Workflows with a Workflow-Identifying Field](../DeveloperGuide/WorkflowUI_WorkflowIdentifying_Mapref.md)

