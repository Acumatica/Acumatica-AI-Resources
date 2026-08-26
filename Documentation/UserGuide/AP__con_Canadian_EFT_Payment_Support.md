# Processing Canadian EFT Payments {#_0074786c-262a-4860-843c-c884ed02171c .concept}

Processing electronic funds transfer \(EFT\) payments is crucial for businesses in Canada. With Acumatica ERP, you can simplify this process by using a built-in Canadian EFT plug-in or a predefined Canadian EFT export scenario.

For details on the configuration and settings of the plug-in, see [Setup of Canadian EFT](CA__CON_Setup_Canadian_EFT.md), [Settings of the Canadian EFT Plug-In](CA__CON_Settings_of_Canadian_EFT_Plug-In.md), and [To Add a Payment Method for the Canadian EFT Plug-In](CA__HOW_Add_PM_for_Canadian_EFT_Plug-In.md). For details on the configuration and settings of the export scenario, see [Settings of the Canadian EFT Export Scenario](CA__CON_Settings_of_CanadianEFT_Export_Scenario.md) and [To Add a Payment Method for the Canadian EFT Export Scenario](CA__HOW_Add_PM_for_Canadian_EFT_Export_Scenario.md).

## Processing of Canadian EFT Payments { .section}

In Acumatica ERP, the processing of Canadian EFT payments is built into the payment processing workflow in accounts payable, as described below.

When you create payments for vendors that want to receive EFT payments, on the [Vendors](AP_30_30_00.md) \(AP303000\) form, you should assign the predefined *Direct Debit* payment method that has been configured for Canadian EFT payments to the vendors as the default payment method.

When you click **Remove Hold** on the form toolbar of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form for an AP payment with the *Direct Debit* payment method \(or another payment method configured for Canadian EFT payments\), the payment is assigned the *Pending Print* status by the system and appears on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form. On this form, you can create a batch of payments for EFT processing as follows:

1.  To narrow the list of payments, select the cash account and the payment method that supports Canadian EFT. \(Optionally, you can set up a filter to display only specific payments.\)
2.  Specify a payment reference number in the **Next Check Number** box of the Selection area. This number will be used as the **Payment Ref.** number for the batch that is created.
3.  Initiate batch creation by clicking **Process All** on the form toolbar or by selecting payments by using the check boxes in the **Included** column and clicking **Process** on the form toolbar.

This creates a batch of payments that you can view on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. All checks added to the batch are assigned the *Printed* status.

**Tip:** For each payment included in a batch payment, the system adds a link to the batch in the **Batch Payment Nbr.** box \(**Print Options** section\) on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) form. You click this link to open the batch on the [Batch Payments](AP_30_50_00.md) form.

Before you release the batch payment, you can delete or reprint a payment on the [Release Payments](AP_50_52_00.md) \(AP505200\) form. If you reprint the payment on this form by selecting the *Reprint* action, the payment is assigned the *Pending Print* status and is deleted from the batch payment.

## Export of Payments to a File { .section}

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you can view the generated batch of payments and export it to a CPA005 file as follows:

1.  Locate the batch and release it.
2.  On the form toolbar, click **Export**, which generates a file whose name is based on the payment method, cash account, and the date of the batch. The format of the file name is one of the following:

    -   EFT production file: `{PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-{BatchSeqNbr:0000}.txt` \(for example, `EFT-10600-20240206-0898.txt`\)
    -   EFT test file: `{PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-{BatchSeqNbr:0000}-Test.txt` \(for example, `EFT-10600-20240206-0898-Test.txt`\)
    **Attention:** The system selects the date it inserts in the file name based on the option selected in the **Creation Date** box on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method:

    -   If *Current Date* is selected, the current business date is inserted.
    -   If *Batch Date* is selected, the date specified in the **Batch Date** box on the [Batch Payments](AP_30_50_00.md) form is inserted.

**Tip:** Once the system completes the export, it attaches the export file to the [Batch Payments](AP_30_50_00.md) form. To view the exported file, perform the following steps:

1.  Click **Files** on the form title bar to open the list of files attached to the form.
2.  Select the file by its name \(shown as the **File Name**\) and double-click it.

For each payment, the file contains the vendor details that you specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form and the originating details that you specified on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

-   **[To Prepare Canadian EFT Payments](../UserGuide/AP__how_Preparing_Canadian_EFT_Payments.md)**  

-   **[To Export Canadian EFT Payments](../UserGuide/AP__how_Exporting_Canadian_EFT_Payments.md)**  


