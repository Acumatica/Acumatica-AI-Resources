# Setup of Canadian EFT {#_f78fc488-3326-4211-aa4e-57c566c1986f .concept}

In Acumatica ERP, you can export batch payments to a CPA-005 file by using a Canadian EFT plug-in. CPA-005 is an electronic funds transfer \(EFT\) file format accepted by the major Canadian banks.

The Canadian EFT plug-in provides the following capabilities for users and administrators:

-   Users can generate a production document that is CPA-005 compatible and a test EFT file for batch payments.
-   Users can edit the automatically generated sundry information for a payment.
-   An administrator can specify what information is exported in the *Originator's Cross Reference No* and *Originator's Sundry Information* fields of the file.
-   An administrator can change the mapping for EFT fields. For example, it is possible to export different account numbers in the *Payee Account No.* and *Account No. for Returns* fields of the file. \(By default, these fields are mapped to one value.\)

The EFT file generated for the Royal Bank of Canada includes the *RBC Header* record. Only transaction amounts greater than 0 are listed in the EFT file. If an EFT file cannot be exported, the system shows a clear error message to the user.

This functionality is available if the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Setup of Batch Payment Processing by Using the Canadian EFT Plug-In { .section}

To start paying your vendors by using the Canadian EFT plug-in, you should perform the following general steps:

1.  You sign up for the EFT services with EFT Canada. As part of the sign-up process, you receive the credentials with which your company is registered in the EFT network, such as the account number, bank routing number, and company identification.
2.  You set up agreements with your vendors covering EFT transaction authorization, and you get information about their accounts in the EFT network.
3.  You set up the payment method to be used for EFT payments. For details, see [To Add a Payment Method for the Canadian EFT Plug-In](CA__HOW_Add_PM_for_Canadian_EFT_Plug-In.md).
4.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you specify the payment method intended for EFT payments as the default payment method for each vendor that will accept EFT payments. By using the EFT-related information that you collected from each vendor in Step 2, you fill in the settings of the payment method on the **Payment** tab. For details, see [To Add a Payment Method for the Canadian EFT Plug-In](CA__HOW_Add_PM_for_Canadian_EFT_Plug-In.md).

## Export of Batches via the Canadian EFT Plug-In { .section}

When a user exports a batch of payments on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, the system uses the Canadian EFT plug-in if on the **Settings For Use in AP** tab of the [Payment Methods](CA_20_40_00.md)\(CA204000\) form, the *Canadian EFT Plug-in* option is selected in the **Export Method** box.

The EFT file exported from the [Batch Payments](AP_30_50_00.md) form by using the Canadian EFT plug-in has the following structure.

|EFT Record|Comment|
|----------|-------|
|**Header Record**|This record is generated only for the Royal Bank of Canada \(RBC\). Only one header record can be included in the EFT file.|
| |A: File Header Record|This header is required because only one record of type *A* can be included in the file.|
| | |C: Detail Deposit Record 1|For each payment included in a batch of payments, a separate *Detail Deposit Record* is included in the EFT file.|
| | |C: Detail Deposit Record 2| |
| | |C: Detail Deposit Record N| |
| |Z: Control Totals \(End Record\)|This record is required because only one record of type *Z* can be included in the EFT file.|

The names of the EFT files that the system generates have the following format:

-   EFT production file: `{PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-{BatchSeqNbr:0000}.txt`
-   EFT test file: `{PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-{BatchSeqNbr:0000}-Test.txt`

    **Attention:** The system selects the date that it inserts in the file name based on the **Creation Date** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form for the payment method:

    -   If *Current Date* is selected, the system inserts the current business date.
    -   If *Batch Date* is selected, the system inserts the date specified in the **Batch Date** box on the [Batch Payments](AP_30_50_00.md) form.

If the remittance setting mapped to the **Institutional ID Number for Returns \(Bank\)** box on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA204000\) form is *003* or *0003*, which corresponds to the RBC bank code, the generated EFT file will include the following predefined header record:

-   EFT production file: *$$AA01CPA1464\[PROD\[NL$$*
-   EFT test file: *$$AA01CPA1464\[TEST\[NL$$*

The system applies the following general rules to each EFT field if another mapping is not specified for the field:

-   An alphanumeric field is left-justified and padded with trailing spaces.
-   A numeric field is right-justified and padded with leading zeros.
-   If a numeric field is not needed, it is filled entirely with zeros. If an alphanumeric field is not needed, it is filled entirely with spaces.

For details on how to prepare payments and export them to a file, see [Processing Canadian EFT Payments](AP__con_Canadian_EFT_Payment_Support.md).

## Setup of Email Notifications { .section}

You can set up email notifications that will be sent to vendors after EFT files are generated. To set up email notifications in the system, you perform the following general instructions:

1.  On the **Mailing &amp; Printing** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, you set up the default source of email notifications. You specify the following settings in the **Default Sources** table:
    -   **Mailing ID**: *PAYMENTNOTICE*
    -   **Report**: Empty
    -   **Email Template**: *PaymentNotice*. This is a predefined email template available in the system.
2.  In the **Default Recipients** table, you specify the needed recipients.
3.  On the **Mailing &amp; Printing** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, for each vendor that needs email notifications, in the **Mailing ID** column, you select the mailing ID that you set up on the [Accounts Payable Preferences](AP_10_10_00.md) form and save the changes.

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you initialize sending of email notifications by clicking **Send Notifications by Email** on the More menu.

## Limitations { .section}

The following limitations are applied to the Canadian EFT plug-in:

-   The plug-in does not support offset records for HSBC bank. The support for these records will be added in a later version of Acumatica ERP. \(Export scenarios do not support offset records either.\)
-   The plug-in does not support the processing of payroll batches.

-   **[Settings of the Canadian EFT Plug-In](../UserGuide/CA__CON_Settings_of_Canadian_EFT_Plug-In.md)**  

-   **[Settings of the Canadian EFT Export Scenario](../UserGuide/CA__CON_Settings_of_CanadianEFT_Export_Scenario.md)**  

-   **[Settings of the EFT Export Scenario for Canadian Payroll](../UserGuide/CA__CON_Settings_of_CanadianEFT_Export_Scenario_PR.md)**  

-   **[To Add a Payment Method for the Canadian EFT Plug-In](../UserGuide/CA__HOW_Add_PM_for_Canadian_EFT_Plug-In.md)**  

-   **[To Add a Payment Method for the Canadian EFT Export Scenario](../UserGuide/CA__HOW_Add_PM_for_Canadian_EFT_Export_Scenario.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

