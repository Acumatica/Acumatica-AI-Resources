# Setting Up the RBC ACH094 Plug-In for Cross-Border Payment Processing {#_52b01ce0-4e91-4ab8-913a-0aeeac188bbf .concept}

The ACH094 file format, based on the ACH IAT standard, is accepted by the Royal Bank of Canada \(RBC\) for cross-border payments. In Acumatica ERP, the RBC ACH094 plug-in is available to configure payment processing from Canada to the United States.

**Important:** The plug-in is available in the system when the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Overview of the RBC ACH094 Plug-In Configuration {#section_zs4_hmm_k2c .section}

The RBC ACH094 plug-in in Acumatica ERP has been adjusted to meet the requirements of both customers and banks. It supports only the following ACH094 format setup:

-   Origin country: Canada \(CA\)
-   Origin currency: USD
-   Destination country: United States \(US\)
-   Destination currency: USD

The ACH file in RBC ACH094 plug-in has following record structure:

1.  File Header Record
2.  IAT Batch Header Record
3.  IAT Entry Records
4.  Addendum Records 1, 2, 3, 6, 7, and Remittance Information Record
5.  Batch Control Record
6.  File Control Record

The RBC ACH094 plug-in offers flexibility to adjust ACH export settings according to known variations in customer and bank requirements for exported ACH files. This key capabilities include the following:

-   You can add the IAT addenda record for remittance information by selecting the **Include Remittance Information Addenda Record** check box.
-   The format of the **File ID Modifier** field of the ACH094 file can be adjusted. It can be set to either *0-9, A-Z* or *A-Z, 0-9*\).

For details, see [RBC ACH094 Plug-In Settings](CA__CON_Settings_of_Canadian_ACH_Plug-In.md).

**Important:** The RBC ACH094 plug-in doesn't have an equivalent export scenario.

## Setup of the RBC ACH094 Plug-In Payment Processing {#section_cc4_qmt_k2c .section}

To initiate payment processing by using the RBC ACH094 plug-in, you need to complete the following configuration tasks:

-   Configure a payment method that uses the RBC ACH094 plug-in.
-   Assign this payment method to each vendor that accepts cross-border ACH payments and specify the vendor-specific ACH credentials for these parameters.
-   Specify the ACH-specific remittance information for each cash account you plan to use as the source for vendor payments.

Specifically, you need to do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, create a new payment method.
2.  In the Summary area, specify the following settings:

    -   **Means of Payment**: *Direct Deposit*
    -   **Direct Deposit File Format**: *RBC ACH094*
    Once these settings are specified, the following check boxes will be selected automatically in the Summary area of the form:

    -   **Use in AP**
    -   **Require Remittance Information for Cash Account**
    Additionally, the following payment method settings will be specified:

    -   On the **Settings for Use in AP** tab, the *RBC ACH094 Plug-In* is selected in the **Export Method** box. In the **Payment Method Details** table, payment parameters are automatically added. These parameters will appear on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form when this payment method is specified for a vendor in the **Payment Method** box on the [Vendors](AP_30_30_00.md) form. You will need to enter the ACH credentials that are specific to the particular vendor for these parameters on the [Vendors](AP_30_30_00.md) form.
    -   On the **Remittance Settings** tab, the list of remittance parameters with plug-in-specific settings are automatically added. These parameters will appear on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for each cash account selected on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form. You will need to enter your company's ACH credentials for these parameters for each cash account on the [Cash Accounts](CA_20_20_00.md) form.
    -   On the **Plug-In Settings** tab, the system specifies the default parameters for this plug-in. For the details of the listed plug-in parameters, see [RBC ACH094 Plug-In Settings](CA__CON_Settings_of_Canadian_ACH_Plug-In.md). The default values can be adjusted if needed.
3.  On the **Allowed Cash Accounts** tab, specify cash accounts that you are going to use as a source for ACH cross-border payments.
4.  On the [Vendors](AP_30_30_00.md) form, specify the created payment method to each vendor intended for cross-border ACH payments, and specify the ACH credentials specific to a vendor on the **Payment** tab of this form.
5.  On the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, enter your company's ACH credentials for each cash account specified in the payment method settings \(in Step 3 of the current instruction\).

For detailed steps, see [To Add a Payment Method for the RBC ACH094 Plug-In](CA__HOW_Add_PM_for_Canadian_ACH_Plug-In.md).

**Parent topic:**[Setting Up U.S. and Canada ACH Cross-Border Payment Processing](../UserGuide/CA__CON_Setup_Canadian_ACH.md)

