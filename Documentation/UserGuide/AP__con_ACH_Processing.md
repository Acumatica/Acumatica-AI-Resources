# Processing ACH Payments

In Acumatica ERP, the processing of ACH payments is built into the payment processing workflow in accounts payable, as described below.

When users create AP payments for vendors that want to receive ACH payments, they should assign the *ACH* payment method \(or another payment method that has been configured for ACH payments\) to the vendors as the default payment method.

When you click **Remove Hold** on the form toolbar of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form for an AP payment with the *ACH* payment method, the payment is assigned the *Pending Print* status by the system and appears on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form. On this form, you can create a batch of payments for ACH processing as follows:

1.  Select the payments by the cash account and the payment method that supports ACH payments. \(Optionally, you can set up a filter to display only specific payments.\)
2.  Specify a payment reference number in the **Next Payment Ref. Number** box of the Selection area. This number will be used as the **Payment Ref.** number for the batch that is created.
3.  Initiate batch creation by clicking **Process All** on the form toolbar or by selecting payments using the check boxes in the **Included** column and clicking **Process** on the form toolbar.

This creates a batch of payments for ACH processing. You can view this batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. All checks added to the batch are assigned the *Printed* status.

**Tip:** For each payment included in a batch payment, the system adds a link to the batch in the **Batch Payment Nbr.** box \(**Print Options** section\) on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) form. You click this link to open the batch on the [Batch Payments](AP_30_50_00.md) form.

The total number of payments included in the batch is displayed in the **Payment Count** box in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

Before you have released the batch payment, you can delete or reprint a payment on the [Release Payments](AP_50_52_00.md) \(AP505200\) form. If you reprint the payment on this form by selecting the *Reprint* action, the payment is assigned the *Pending Print* status and is deleted from the batch payment.

## Export of ACH Payments to a File

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you can view the generated batch of payments and export it to a file \(which will be further processed in the ACH payment system\) as follows:

1.  Locate the batch and release it.

    **Attention:** Depending on the state of the **Release Batch Payment Before Export** check box on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, a batch of payments can be exported before release.

2.  On the form toolbar, click **Export**, which generates a file whose name is based on the payment method, cash account, date of the batch, and date sequence number \(for example, `ACHP-10200-202502120A.txt`\).

    In the example, the file name consists of the following values:

    -   *ACHP*, the payment method.
    -   *10200*, the cash account.
    -   *20250212*, which is the date in *YYYYMMDD* format.
    -   *0A*, the date sequence number, which was converted according to the **File ID Modifier** setting. This ACH plug-in setting is specified on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

You perform the export either by using the export scenario specified for the payment method \(if *Export Scenario* is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form\) or by using the U.S. ACH plug-in \(if *U.S. ACH Plug-In* is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form\).

**Tip:** Once the system completes the export, it attaches the export file to the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. To view the exported file, you perform the following steps:

1.  Click the **Files** button to open the list of files attached to the form.
2.  Select the file by its name and click the **Download** button in the **Files** dialog box.

For each payment, the file contains all required information about payments, vendors, cash account, and remittance settings that are structured according to the ACH format.

**Attention:** The ACH file should be emailed to the ACH operator for further processing.

Depending on the state of the **Release Batch Payments Before Export** check box on the **Settings for Use in AP** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, a batch of payments can be exported in the following statuses:

-   If the **Release Batch Payments Before Export** check box is selected, a batch can be exported after it is released, that is, the batch must have the *Released* status.
-   If the **Release Batch Payments Before Export** check box is cleared \(the default value\), a batch can be exported before it is released, that is, the batch must have the *Balanced* status. In this case, if a bank rejects a payment or if there is an error in the payment details, you can roll back the batch status to *Balanced* and edit the batch by excluding the payment or updating the details. The batch can then be exported again.

**Parent topic:**[ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

