# Step 4: Testing the New Action {#_5663fb48-07ec-4401-acbf-dc72cffaab54 .task}

In this step, you will test the **View Repair Work Order** command. Do the following:

1.  Rebuild the `PhoneRepairShop_Code` project.
2.  In Acumatica ERP, open a repair work order with the *Completed* status. Create an invoice for this order by clicking **Create Invoice** on the form toolbar.
3.  On the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, open the invoice that you have created for the repair work order.

    The invoice has the *Open* status.

4.  On the More menu, find the **View Repair Work Order** command. Notice that it is displayed under the **Repair Work Orders** category, as shown in the following screenshot.



5.  Click the **View Repair Work Order** command.

    In a new window, the Repair Work Orders \(RS301000\) form opens with the repair work order for which the opened invoice was created.

6.  Return to the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.
7.  Select an invoice with the *Closed* status. Notice that the **View Repair Work Order** command is unavailable on the More menu because this invoice has the *Closed* status.

**Parent topic:**[Workflow Customization: To Add an Action to an Existing Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md)

