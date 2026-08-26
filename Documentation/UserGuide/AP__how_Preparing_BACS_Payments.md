# To Prepare BACS Payments {#_660505c8-5c87-4bb2-97b2-a0ad1c544e4c .task}

To pay a vendor through Bankers Automated Clearing Service \(BACS\), you perform the following steps:

1.  Prepare payments for export by grouping them into a batch. You can create a batch for one BACS payment or for multiple payments. This topic discusses how you prepare BACS payments for export by using the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  Export the batch into a file, as described in [To Export BACS Payments](AP__how_Exporting_BACS_Payments.md).
3.  Email the file to the BACS operator for further processing.

## Before You Proceed {#section_jp4_njv_vxb .section}

Make sure the appropriate payment documents have been created on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) but not yet released. The payment method to be used for BACS payments must be associated with these payments.

Acumatica ERP provides the *Direct Debit* type for payment methods to be used for BACS payments. You should associate this payment method with each vendor that prefers BACS payments. In addition, the file export functionality must be set up in the system to export batches as a file. For more information, see [Processing BACS Payments](AP__con_BACS_Payment_Support.md).

## To Prepare BACS Payments for Export {#section_mp4_njv_vxb .section}

To prepare BACS payments for export, do the following:

1.  Open the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  In the **Payment Method** box of the Selection area, select a payment method used for BACS payments in your system.
3.  In the **Cash Account** box, select the cash account to be used as the source account for payment.
4.  If needed, in the **Next Check Number** box, enter the number for the payment.
5.  In the table, select the unlabeled check box in the row for each payment to be included in the batch for export.
6.  On the form toolbar, click **Process**.

    The system displays the [Batch Payments](AP_30_50_00.md) \(AP305000\) form with the created batch, which has a status of *On Hold* or *Balanced*. When the batch is created, the BACS payments included in the batch are assigned the *Printed* status.

7.  In the **Description** box of the form, enter the description of the batch.
8.  In the **Batch Seq. Number** box, enter the batch number.
9.  On the form toolbar, click **Save**.
10. Optional: If the batch status is *On Hold*, click **Remove Hold** on the form toolbar to give the batch the *Balanced* status.
11. On the form toolbar, click **Release** to release the batch.

**Parent topic:**[Processing BACS Payments](../UserGuide/AP__con_BACS_Payment_Support.md)

