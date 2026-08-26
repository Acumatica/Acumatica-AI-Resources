# To Prepare ACH Payments {#_e1776318-012a-4944-816d-d113f0853409 .task}

To pay a vendor through the Automated Clearing House \(ACH\) network, you perform the following steps:

1.  Prepare AP payments \(and any other payment documents to be paid through ACH\) for export by grouping them into a batch. You can create a batch for one ACH payment or for multiple payments. This topic discusses how you prepare ACH payments for export by using the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  Export the batch into a file, as described in [To Export a Batch of ACH Payments](AP__how_Exporting_a_Batch_of_ACH_Payments.md).
3.  Email the file to the ACH operator for further processing.

## Before You Proceed {#section_z34_njv_vxb .section}

Make sure the appropriate payment documents have been created in the system but not yet released. The payment method to be used for ACH payments must be associated with these payments.

Make sure that the payment method to be used for ACH payments has been configured in Acumatica ERP; associate it with each vendor that prefers ACH payments. In addition, the file export functionality must be set up in the system to export batches as a file to be processed within the ACH network. For more information, see [Processing ACH Payments](AP__con_ACH_Payment_Support.md).

## To Prepare ACH Payments for Export {#section_cj4_njv_vxb .section}

1.  Open the [Process Payments / Print Checks](../Shared/../UserGuide/AP_50_50_00.md) \(AP505000\) form.
2.  In the **Payment Method** box of the Selection area, select a payment method used for ACH payments in your system \(for example, *ACH*\).
3.  In the **Cash Account** box, select the cash account to be used as the source account for payment.
4.  If needed, in the **Next Check Number** box, enter the number for the payment.
5.  In the table, select the unlabeled check box in the row for each payment to be included in the batch for export.
6.  On the form toolbar, click **Process**.

    The system displays the [Batch Payments](../Shared/../UserGuide/AP_30_50_00.md) \(AP305000\) form with the created batch, which has a status of *Balanced*. \(This status is assigned to a new batch if the **Hold Documents on Entry** check box is cleared on the [Accounts Payable Preferences](../Shared/../UserGuide/AP_10_10_00.md) \(AP101000\) form.\) When the batch is created, the ACH payments included in the batch are assigned the *Printed* status.

7.  In the **Description** box of the form, enter the description of the batch.
8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Release** to release the batch or **Export** to export the batch.

    **Tip:** If the **Release Batch Payment Before Export** check box is selected for the payment method on the [Payment Methods](../Shared/../UserGuide/CA_20_40_00.md) \(CA204000\) form, the batch must be released before it can be exported. If this check box is cleared, the batch can be released after is has been exported.


**Parent topic:**[Processing ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

