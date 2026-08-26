# Processing ACH Payments {#_2b2df838-363f-43fb-bdf7-787b870a3357 .concept}

ACH payments are electronic payments made through the Automated Clearing House \(ACH\) network in the United States. With Acumatica ERP, you can automate payments to vendors by making ACH payments. You export a batch of payments to a file that is then processed in the ACH system. For each paid bill, the specified amount is automatically pulled out from a company bank account and transferred to the payment recipient electronically.

The National Automated Clearing House Association \(NACHA\) has developed rules and standards about ACH transactions. To set up ACH payments, you need an agreement and an account with the financial institution providing ACH services \(that is, the ACH operator\). Also, you need agreements with your vendors covering ACH transaction authorization and information about their accounts in the ACH network. Accounts are identified by the financial institution routing number and the account number within that institution.

Using ACH payments helps you reduce errors, while eliminating the hassles of check preparation, printing, and emailing. You also can always get available cash discounts for prompt payments and increase the speed of settlements.

For detailed information on how to set up ACH payments, see [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md) or [Setting Up U.S. and Canada ACH Cross-Border Payment Processing](CA__CON_Setup_Canadian_ACH.md).

## Configuration of ACH Payments {#section_jh4_njv_vxb .section}

Acumatica ERP provides the functionality for setting up ACH payments to your vendors. Acumatica ERP demo data has the *ACH* and *ACHBA* payment methods, which you can modify to meet your specifications. You can configure multiple payment methods for ACH payments by using the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

Alternatively, you can use the U.S. ACH plug-in when you are configuring ACH payments. For details, see [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md).

On the form, make sure that each payment method intended for ACH payments has a list of allowed cash accounts and that the following check boxes are selected for it:

-   **Use in AP** \(in the Summary area\)
-   **Require Remittance Information for Cash Account** \(in the Summary area\)
-   **Create Batch Payments** \(on the **Settings for Use in AP** tab\)

A payment method for ACH payments should have additional user-defined elements to collect the vendor information required for processing of ACH payments. For example, the *ACHBA* payment method provides the following elements:

-   **Beneficiary Account No.**: For the vendor's account number with the ACH system.
-   **Beneficiary Name**: For the name of the vendor as it is used in the ACH system.
-   **Bank Routing Number \(ABA\)**: For the routing number of the bank where the vendor has an account.
-   **Bank Name**: For the name of the bank where the vendor has an account.

These elements will appear on the [Vendors](AP_30_30_00.md) \(AP303000\) form, so that this information can be entered for each vendor.

The export of payments is based on built-in functionality, and is performed in accordance with one of the following:

-   A scenario specified for the ACH payment method if the *Export Scenario* option is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form
-   The U.S. ACH plug-in settings specified for the payment method if the *U.S. ACH Plug-In* option is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form

When you are using the predefined payment method *ACH* or *ACHBA*, the export is performed in accordance with the *Export AP Payments to ACH v2* or *Export AP Payments to ACH Balanced v2* export scenario, respectively. If necessary, these scenarios can be adjusted according to a bank's requirements.

The *Export AP Payments to ACH v2* scenario uses the `ACHExportProvider` provider.

**Important:** Do not delete the *ACHExportProvider* provider. If you have accidentally deleted it, you can restore it from the appropriate automation definition.

## Configuration of Cross-Border ACH Payments {#section_obl_ysd_m2c .section}

The ACH094 file format, based on the ACH IAT standard, is accepted by the Royal Bank of Canada \(RBC\) for cross-border payments. In Acumatica ERP, the RBC ACH094 plug-in is available to configure payment methods to process cross-border payments from a USD account in Canada to a USD account in the United States.

For details, see [Setting Up U.S. and Canada ACH Cross-Border Payment Processing](CA__CON_Setup_Canadian_ACH.md).

## Setup of Quick Batch Processing {#section_wh4_njv_vxb .section}

You can set up quick processing of batch payments if you need to quickly generate payments to vendors and export them as a payment batch for further bank processing. You set up quick batch processing as follows:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you create a payment method with the **Create Batch Payment** option button selected on the **Settings for Use in AP** tab.
2.  On the **Allowed Cash Accounts** tab, you add a cash account to the payment method and select the **Quick Batch Generation** check box for this cash account.

When you create and release AP documents \(bills, specific lines of a bill, debit and credit adjustments, and prepayments\) for which the configured cash account is specified, you can generate AP payments for them on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form, include them in one batch, and export the batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. For details, see [To Quickly Prepare a Batch of Payments](AP__how_Quickly_Prepare_a_Batch_of_Payments.md).

## Collecting of Vendor Data {#section_zh4_njv_vxb .section}

Once the payment method is defined and configured to export batches of AP payments to an ACH file \(through either an export scenario or the ACH plug-in\), you assign the payment method intended for ACH payments to each vendor that will accept ACH payments. You also need to collect appropriate ACH-related information from each vendor and enter it into the user-defined elements on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

## Processing of ACH Payments {#section_b34_njv_vxb .section}

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

## Export of ACH Payments to a File {#section_j34_njv_vxb .section}

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

## Correction of ACH Payment Batches {#section_t34_njv_vxb .section}

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you can do the following to correct batches of ACH payments:

-   Click **Correct** on the More menu to correct an exported batch. This will roll back the batch status to *Balanced* so that incorrect payments can be excluded from the batch. You can also change the vendors' payment details and reexport the batch.
-   Add payments to an existing batch by clicking **Add Payments** on the table toolbar.
-   Click **Cancel** on the More menu to cancel a batch and void all released payments in the batch at once.
-   Click **Void** on the More menu to void a released batch payment, which causes all the payments in the batch to be voided at once.

For details, see [To Correct a Batch of ACH Payments](CA__how_Correct_Batch_of_ACH_Payments.md).

-   **[To Prepare ACH Payments](../UserGuide/AP__how_Preparing_ACH_Payments.md)**  

-   **[To Quickly Prepare a Batch of Payments](../UserGuide/AP__how_Quickly_Prepare_a_Batch_of_Payments.md)**  

-   **[To Export a Batch of ACH Payments](../UserGuide/AP__how_Exporting_a_Batch_of_ACH_Payments.md)**  

-   **[To Correct a Batch of ACH Payments](../UserGuide/CA__how_Correct_Batch_of_ACH_Payments.md)**  


