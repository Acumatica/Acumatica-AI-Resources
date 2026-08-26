# Step 4: Testing the Workflow {#_237aec17-9609-4baa-9fa4-aee5169d056d .task}

To test the implemented workflow, do the following:

1.  In Acumatica ERP, open the Repair Work Orders \(RS301000\) form and create a repair work order.
2.  In the **Order Type** box, select *Simple*
3.  Specify the following values:

    -   **Customer ID**: *C000000001*
    -   **Service**: *Battery Replacement*
    -   **Device**: *Nokia 3310*
    -   **Description**: `Battery replacement, Nokia 3310`
    Note that the button on the form toolbar changes to **Complete**.

4.  On the form toolbar, click **Complete**.

    The record is saved. The status of the record changes to *Completed*.

5.  On the form toolbar, click **Create Invoice**.

    When the invoice is created, note the number of the created invoice.

6.  On the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, open the created invoice.
7.  On the form toolbar, click **Remove Hold**, and then **Release**.
8.  In the More menu, click **Pay**.

    The [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form opens.

9.  On the form toolbar, click **Remove Hold**, and then **Release**.
10. Open the repair work order that you have created in this step.

    Make sure that its status has changed to *Paid*.


**Parent topic:**[Workflow-Identifying Fields: To Add a Workflow for a Value of the Workflow-Identifying Field](../DeveloperGuide/WorkflowAPI_WorkflowIdentifying_Add_Activity.md)

