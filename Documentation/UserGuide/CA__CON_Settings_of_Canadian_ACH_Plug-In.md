# RBC ACH094 Plug-In Settings {#_4fb1a376-5050-4a56-afd5-d4c6cae88390 .concept}

You can review the settings of the RBC ACH094 plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

**Tip:** All the settings listed in the table below are displayed on the tab if you select the **Show All Settings** check box on the tab.

The following table lists the settings of the RBC ACH094 plug-in.

|Setting|Type of Control|Description|Required|Default Value|
|-------|---------------|-----------|--------|-------------|
|**General Settings** section|
|**Include Remittance Addenda Record**|Check box|Indicates \(if selected\) that a remittance addenda record should be included in the ACH file.|No|Cleared|
|**Payment-Related Information**|Formula box|The formula is calculated once a payment is added to the batch payment. It allows you to retrieve information from payments, bills, applications, and vendors.|Yes|*= Concat\('Inv\*',\[Bill.InvoiceNbr\], '\\'\)*|
|**Block Filter**|Text box| | |*9*|
|**File Header Record** section|
|**File ID Modifier**|Drop-down menu|The numbering format of file ID. The following options are available:-   *A-Z, 0-9*
-   *0-9, A-Z*

|Yes|*A-Z, 0-9*|
|**Batch Header Record** section|
|**Service Class Code**|Drop-down list|The service class code. The available option is *220 - Credits Only*.|Yes|*220*|
|**Standard Entry Class Code**|Drop-down list|The code used in ACH transactions to specify the type of payment or transaction being processed. The available option is *IAT*. IAT is used for cross-border transactions involving the U.S. and other countries.|Yes|*IAT*|
|**Company Entry Description**|Text box|A brief description of the purpose or nature of the transaction being processed. You can enter an alphanumeric value of up to 10 characters.|Yes|*Payment*|
|**Originator Identification Number**|Lookup box|A unique identifier assigned to a company initiating ACH transactions. It typically consists of 10 digits.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|*Originator Identification Number*|
|**Company Name**|Lookup box|The company name.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|*Company Name*|
|**Originator Street/ Address**|Lookup box|The originator street/address. This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|Originator Street/ Address|
|**Originator City**|Lookup box|The originator city.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|*Originator City*|
|**Originator Province/State**|Lookup box|The originator province/state. This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|*Originator Province/State*|
|**Originator Country Code**|Text box|The originator country code.|Yes|*CA*|
|**Originator Postal/ZIP Code**|Lookup box|The originator postal/ZIP code.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

|Yes|*Originator Postal/ZIP Code*|
|**Originator Currency Code**|Text box|The originator currency code.|Yes|*USD*|
|**Destination Currency Code**|Text box|The destination currency code.|Yes|*USD*|
|**Destination Country Code**|Text box|The destination country code.|Yes|*US*|
|**Entry Detail Record** section|
|**Receiver Name**|Lookup box|The name of the party who has authorized the Originator to initiate ACH payments or debits to their bank account, which is processed through the RDFI.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Receiver Name*|
|**Receiving DFI Routing Number**|Lookup box|The routing number of the bank that receives the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Receiving DFI Routing Number*|
|**Account Number**|Lookup box|The unique identifier of the bank account of the receiver in an ACH transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Account Number*|
|**Transaction Code**|Lookup box|The transaction code. The following options are available:-   *22 Demand credit*
-   *32 Savings credit*

This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|No|*Transaction Code*|
|**Transaction Type Code**|Lookup box|A three-character code used to identify the type of transaction. The following options are available:-   *BUS \(Business/Commercial\)*
-   *DEP \(Deposit\)*
-   *MIS \(Miscellaneous\)*

This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|No|*Transaction Type Code*|
|**Destination Street/Address**|Lookup box|The address or street name of the party receiving the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Destination Street/Address*|
|**Destination City**|Lookup box|The city of the party receiving the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Destination City*|
|**Destination Province/State**|Lookup box|The province or state of the receiving party's address. This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Destination Province/State*|
|**Destination Postal Code/ZIP Code**|Lookup box|The postal code or ZIP code associated with the address of the party receiving the ACH payment or transaction. This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

|Yes|*Destination Postal Code/ZIP Code*|

**Parent topic:**[Setting Up U.S. and Canada ACH Cross-Border Payment Processing](../UserGuide/CA__CON_Setup_Canadian_ACH.md)

