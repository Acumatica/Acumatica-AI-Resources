# Processing BACS Payments {#_96e68b8b-9140-4c07-8a9b-38740868de7a .concept}

Bankers Automated Clearing Service \(BACS\) is used by companies doing business in the United Kingdom. With Acumatica ERP, you can automate payments to vendors by making BACS payments. You export a batch of payments to a file that is then processed in the BACS system. For each paid bill, the specified amount is automatically debited from a company bank account and transferred to the payment recipient electronically.

This functionality is available in the system if the *UK Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Support of BACS Standard 18 {#section_o44_njv_vxb .section}

To generate a batch of payments in Standard 18 for HSBC or Lloyds bank, you perform the following configuration steps:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you define a payment method with the following settings:
    -   **Means of Payment**: *Direct Deposit*
    -   **Direct Deposit File Format**: *BACS HSBC Payment* or *BACS Lloyds Payment*
    -   **Use in AP** \(in the Summary area\): Selected
    -   **Require Remittance Information for Cash Account** \(in the Summary area\): Selected
    -   **Create Batch Payments** \(on the **Settings for Use in AP** tab\): Selected
    -   **Export Scenario** \(on the **Settings for Use in AP** tab\): *BACS HSBC Payment* or *BACS Lloyds Payment*

        **Note:** Depending on the option selected in the **Direct Deposit File Format** box, this setting is filled in by the appropriate export scenario by default.

        With these settings selected, the table on the **Remittance Settings** table will be automatically filled in with predefined settings.

        Alternatively, you can set up a payment method that uses the BACS HSBC plug-in or BACS Lloyds plug-in. To do this, you select *BACS HSBC Plug-In* or *BACS Lloyds Plug-In* in the **Export Method** box on the **Settings for Use in AP** tab. For more details, see [To Add a Payment Method for BACS HSBC Plug-In](CA__HOW_Add_PM_for_BACS_HSBC_Plug-In.md) and [To Add a Payment Method for BACS Lloyds Plug-In](CA__HOW_Add_PM_for_BACS_Lloyds_Plug-In.md).

2.  On the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, you set up or add a cash account to be used in BACS payments.
3.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, for the *Direct Debit* payment method and the cash account that you added on the [Payment Methods](CA_20_40_00.md) form, you define the remittance details on the **Remittance Settings** tab.

    For BACS HSBC payments, these details are: *Originating Sort Code Number*, *Originating Account Number*, *Originating Account Name*, and *Service User Number \(SUN\)*.

    For BACS Lloyds payments, these details are *Originating Sort Code Number* and *Originating Account Number*.

4.  On the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, you assign the payment method intended for BACS payments to each vendor that will accept these payments. In the **Payment Instructions** table, you specify the following details for BACS HSBC payments: *Destination Sort Code Number*, *Destination Account Number*, *Destination Account Name*, and *Destination Payment Ref*.

    For BACS Lloyds payments, you specify the following details: *Destination Sort Code Number*, *Destination Account Number*, and *Destination Account Name*.


## Processing of BACS Payments {#section_v44_njv_vxb .section}

In Acumatica ERP, the processing of BACS payments is built into the payment processing workflow in accounts payable, as described below.

When users create payments for vendors that want to receive BACS payments, they should assign the *Direct Debit* payment method that has been configured for BACS payments to the vendors as the default payment method.

When you click **Remove Hold** on the form toolbar of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form for an AP payment with the *Direct Debit* payment method, the payment is assigned the *Pending Print* status by the system and appears on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form. On this form, you can create a batch of payments for BACS processing as follows:

1.  Select the payments by the cash account and the payment method that supports BACS payments. \(Optionally, you can set up a filter to display only specific payments.\)
2.  Specify a payment reference number in the **Next Check Number** box of the Selection area. This number will be used as the **Payment Ref.** number for the batch that is created.
3.  Initiate batch creation by clicking **Process All** on the form toolbar or by selecting payments using the check boxes in the **Included** column and clicking **Process** on the form toolbar.

This creates a batch of payments for BACS processing. You can view this batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. All checks added to the batch are assigned the *Printed* status.

**Tip:** For each payment included in a batch payment, the system adds a link to the batch in the **Batch Payment Nbr.** box \(**Print Options** section\) on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) form. You click this link to open the batch on the [Batch Payments](AP_30_50_00.md) form.

Before you have released the batch payment, you can delete or reprint a payment on the [Release Payments](AP_50_52_00.md) \(AP505200\) form. If you reprint the payment on this form by selecting the *Reprint* action, the payment is assigned the *Pending Print* status and is deleted from the batch payment.

## Export of the Payments to a File {#section_cp4_njv_vxb .section}

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you can view the generated batch of payments and export it to a file \(which will be further processed in the BACS payment system\) as follows:

1.  Locate the batch and release it.
2.  On the form toolbar, click **Export**, which generates a file whose name is based on the payment method, cash account, and the date of the batch. The format of the file name is `<Payment Method>-<Cash account number>-<Payment date>.txt`.

Export is performed by using the *BACS HSBC Payment*, *BACS Lloyds Payment* scenario, BACS HSBC plug-in, or BACS Lloyds plug-in that exports to the file all vendor information required for BACS payment.

**Tip:** Once the system completes the export, it attaches the export file to the [Batch Payments](AP_30_50_00.md) form. To view the exported file, perform the following steps:

1.  Click **Files** to open the list of files attached to the form.
2.  Select the file by its name \(shown as the **File Name**\) and double-click it.

For each payment, the file contains the vendor details that you specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form and the originating details that you specified on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

-   **[To Prepare BACS Payments](../UserGuide/AP__how_Preparing_BACS_Payments.md)**  

-   **[To Export BACS Payments](../UserGuide/AP__how_Exporting_BACS_Payments.md)**  


