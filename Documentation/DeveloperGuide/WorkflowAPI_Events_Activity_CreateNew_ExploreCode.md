# Step 3: Exploring the Acumatica ERP Source Code {#_f6910fb1-d67d-4370-9283-36e01739e6dc .task}

In this step, you will explore the source code of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) and [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) forms of Acumatica ERP. You will explore the code of these forms to learn the field names and methods you need to use in order to determine where and when to fire the event that triggers the transition from the `PendingPayment` state to the `ReadyForAssignment` state.

## Learning Field Names { .section}

To determine whether an invoice has been prepaid and whether the workflow event that triggers the transition from the `PendingPayment` workflow state to the `ReadyForAssignment` workflow state should be fired, you need to calculate the percentage of the invoice amount that has been prepaid.

To calculate this percentage, you need the outstanding amount of the invoice and the original amount of the invoice. These values are displayed in the **Balance** and **Amount** boxes, respectively, of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. Thus, to calculate the percentage, you should learn the field names of these boxes by doing the following:

1.  In Acumatica ERP, open the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.
2.  To open the Element Inspector for the **Balance** box, press Ctrl + Alt and click the box.

    In the **Element Properties** dialog box, which opens, notice that the **Balance** box is defined by the `CuryDocBal` field of the `ARInvoice` data access class.

3.  To open the Element Inspector for the **Amount** box, press Ctrl + Alt and click the box.

    In the **Element Properties** dialog box, which opens, notice that the **Amount** box is defined by the `CuryOrigDocAmt` field of the `ARInvoice` data access class.

    **Tip:** If you do not see the **Amount** box on the form, you need to select the **Validate Document Totals on Entry** check box on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, open or refresh the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, and then perform this instruction.


## Exploring the Source Code of the Release Method { .section}

To fire the workflow event that triggers the transition from the `PendingPayment` to `ReadyForAssignment` workflow state, you need to first override the method where the outstanding amount of the invoice \(which you just explored\) is calculated and updated. This recalculation is performed on release of the prepayment that is applied to an invoice. Thus, to find the method to override, you need to explore the code of the action that is associated with the **Release** button on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form.

If you explore the code of the **Release** button \(as described in [Step 3: Exploring and Debugging the Code](WorkflowAPI_Events_Activity_UseExisting_ExploreAndDebug.md)\), you can notice in the code that the amounts of the invoice, including the `CuryDocBal` field value, are recalculated in the `UpdateBalances` method of the `ARReleaseProcess` class. To make sure this is the right method to override, add a breakpoint to the `UpdateBalances` method, run the application in debug mode, and trace how the `CuryDocBal` value is changed in the method.

As a result of this debugging, you can see that `UpdateBalances` is the method that you should override to calculate the prepaid percentage of the invoice and to fire the workflow event that triggers the transition from the `PendingPayment` workflow state to the `ReadyForAssignment` workflow state.

**Parent topic:**[Workflow Events: To Create a Workflow Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew.md)

