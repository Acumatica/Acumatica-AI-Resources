# Step 1: Exploring the Acumatica ERP Source Code {#_1de140fa-4479-4e44-9464-350449ec9079 .task}

To learn whether you can use the code of a predefined workflow in your customization project, you need first to explore this code. In this step, you will explore the source code of Acumatica ERP and search for the workflow event that you can use.

To change the status of a repair work order whose invoice has been paid, you need to use a workflow event that is fired when the invoice is fully paid and closed. The change of the invoice's status occurs as a result of the release of a payment. Therefore, to find the event, you should first learn the code location of the `Release` action on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form. In this step, you will locate the `Release` action.

To locate the `Release` action, do the following:

1.  In Acumatica ERP, open the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form.
2.  To inspect the **Release** command on the More menu, press Ctrl + Alt, and click **Release**.
3.  In the **Element Properties** dialog box, which opens, learn the name of the graph where the action is defined: ARPaymentEntry.
4.  Click **Actions** &gt; **View Business Logic Source**.

    The Source Code browser opens.

5.  In the **Graph Name** box, learn the full name of the graph: PX.Objects.AR.ARPaymentEntry.

    You will need this name later to find the graph in the source code.


**Parent topic:**[Workflow Events: To Use an Existing Event](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting.md)

