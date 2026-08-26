# Step 7: Testing the Transition {#_b114523a-508c-482b-8e31-624f01002c53 .task}

To test the transition from the `Completed` workflow state to the `Paid` workflow state, do the following:

1.  Rebuild the `PhoneRepairShop_Code` project.
2.  In Acumatica ERP, on the Repair Work Orders \(RS301000\) form, open a repair work order that has the *Completed* status.
3.  On the form toolbar, click **Create Invoice**.

    Note the invoice number shown in the **Invoice Nbr** box.

4.  On the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, open the invoice created in the previous instruction.
5.  On the form toolbar, click **Remove Hold** and then **Release**.

    The invoice is assigned the *Open* status.

6.  On the More menu, click **Pay**.

    The [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form opens.

7.  On the form toolbar, click **Remove Hold** and then **Release**.

    The invoice is now fully paid.

8.  On the Repair Work Orders \(RS301000\) form, open the repair work order for which you have created the invoice in this step. Make sure that it has the *Paid* status, as shown in the following screenshot.




**Parent topic:**[Workflow Events: To Use an Existing Event](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting.md)

