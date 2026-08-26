# To Prepare Canadian EFT Payments {#_3c120d1b-041c-44a8-a02c-14fe411f98cf .task}

To pay a vendor through Canadian EFT, you perform the following steps:

1.  Prepare payments for export by grouping them into a batch. You can create a batch for one EFT or for multiple EFT payments. This topic describes how you prepare EFT payments for export by using the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  Export the batch into a file, as described in [To Export Canadian EFT Payments](AP__how_Exporting_Canadian_EFT_Payments.md).

## Before You Proceed {#section_jp4_njv_vxb .section}

Make sure that the appropriate payment documents have been created on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) but not yet released. The payment method to be used for Canadian EFT payments must be selected in the **Payment Method** box for these payments.

Acumatica ERP provides the *Direct Debit* type for payment methods to be used for Canadian EFT payments. You should associate this payment method with each vendor that prefers EFT. In addition, the file export functionality must be set up in the system to export batches as a file. For more information, see [Processing Canadian EFT Payments](AP__con_Canadian_EFT_Payment_Support.md).

## To Prepare Canadian EFT Payments for Export {#section_mp4_njv_vxb .section}

1.  Open the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  In the **Payment Method** box of the Selection area, select a payment method that is defined to be used for Canadian EFT payments in your system.
3.  In the **Cash Account** box, select the cash account to be used as the source account for payment.
4.  If needed, in the **Next Check Number** box, enter the number for the payment.
5.  In the table, select the unlabeled check box in the row of each payment to be included in the batch for export.
6.  On the form toolbar, click **Process**.

    The system goes to the [Batch Payments](AP_30_50_00.md) \(AP305000\) form with the created batch, which has a status of *On Hold* or *Balanced*. When the batch is created, the Canadian EFT payments included in the batch are assigned the *Printed* status.

7.  In the **Description** box of the [Batch Payments](AP_30_50_00.md) form, enter the description of the batch.
8.  In the **Batch Seq. Number** box, enter the batch number.
9.  On the form toolbar, click **Save**.
10. Optional: If the batch status is *On Hold*, click **Remove Hold** on the form toolbar to give the batch the *Balanced* status.
11. On the form toolbar, click **Release** to release the batch.

    **Note:** This instruction is required if the **Release Batch Payment Before Export** check box is selected for the payment method on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

    If the **Release Batch Payment Before Export** check box is cleared, you need to export the batch first by clicking **Export** on the form toolbar, and then release the batch.


**Parent topic:**[Processing Canadian EFT Payments](../UserGuide/AP__con_Canadian_EFT_Payment_Support.md)

