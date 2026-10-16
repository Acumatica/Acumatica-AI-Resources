# RBC ACH094 Plug-In Settings

You can review the settings of the RBC ACH094 plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

**Tip:** All the settings listed in the table below are displayed on the tab if you select the **Show All Settings** check box on the tab.

The following table lists the settings of the RBC ACH094 plug-in.

<table id="_8c48b5a9-2387-4296-bb9f-10786fb8a451"><thead><tr><th>

Setting

</th><th>

Type of Control

</th><th>

Description

</th><th>

Required

</th><th>

Default Value

</th></tr></thead><tbody><tr><td colspan="5">

**General Settings** section

</td></tr><tr><td>

**Include Remittance Addenda Record**

</td><td>

Check box

</td><td>

Indicates \(if selected\) that a remittance addenda record should be included in the ACH file.

</td><td>

No

</td><td>

Cleared

</td></tr><tr><td>

**Payment-Related Information**

</td><td>

Formula box

</td><td>

The formula is calculated once a payment is added to the batch payment. It allows you to retrieve information from payments, bills, applications, and vendors.

</td><td>

Yes

</td><td>

*= Concat\('Inv\*',\[Bill.InvoiceNbr\], '\\'\)*

</td></tr><tr><td>

**Block Filter**

</td><td>

Text box

</td><td>

 

</td><td>

 

</td><td>

*9*

</td></tr><tr><td colspan="5">

**File Header Record** section

</td></tr><tr><td>

**File ID Modifier**

</td><td>

Drop-down menu

</td><td>

The numbering format of file ID. The following options are available:-   *A-Z, 0-9*
-   *0-9, A-Z*

</td><td>

Yes

</td><td>

*A-Z, 0-9*

</td></tr><tr><td colspan="5">

**Batch Header Record** section

</td></tr><tr><td>

**Service Class Code**

</td><td>

Drop-down list

</td><td>

The service class code. The available option is *220 - Credits Only*.

</td><td>

Yes

</td><td>

*220*

</td></tr><tr><td>

**Standard Entry Class Code**

</td><td>

Drop-down list

</td><td>

The code used in ACH transactions to specify the type of payment or transaction being processed. The available option is *IAT*. IAT is used for cross-border transactions involving the U.S. and other countries.

</td><td>

Yes

</td><td>

*IAT*

</td></tr><tr><td>

**Company Entry Description**

</td><td>

Text box

</td><td>

A brief description of the purpose or nature of the transaction being processed. You can enter an alphanumeric value of up to 10 characters.

</td><td>

Yes

</td><td>

*Payment*

</td></tr><tr><td>

**Originator Identification Number**

</td><td>

Lookup box

</td><td>

A unique identifier assigned to a company initiating ACH transactions. It typically consists of 10 digits.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Originator Identification Number*

</td></tr><tr><td>

**Company Name**

</td><td>

Lookup box

</td><td>

The company name.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Company Name*

</td></tr><tr><td>

**Originator Street/ Address**

</td><td>

Lookup box

</td><td>

The originator street/address. This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

Originator Street/ Address

</td></tr><tr><td>

**Originator City**

</td><td>

Lookup box

</td><td>

The originator city.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Originator City*

</td></tr><tr><td>

**Originator Province/State**

</td><td>

Lookup box

</td><td>

The originator province/state. This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Originator Province/State*

</td></tr><tr><td>

**Originator Country Code**

</td><td>

Text box

</td><td>

The originator country code.

</td><td>

Yes

</td><td>

*CA*

</td></tr><tr><td>

**Originator Postal/ZIP Code**

</td><td>

Lookup box

</td><td>

The originator postal/ZIP code.This parameter is displayed on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form if the cash account is specified on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form, You must specify you company's specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Originator Postal/ZIP Code*

</td></tr><tr><td>

**Originator Currency Code**

</td><td>

Text box

</td><td>

The originator currency code.

</td><td>

Yes

</td><td>

*USD*

</td></tr><tr><td>

**Destination Currency Code**

</td><td>

Text box

</td><td>

The destination currency code.

</td><td>

Yes

</td><td>

*USD*

</td></tr><tr><td>

**Destination Country Code**

</td><td>

Text box

</td><td>

The destination country code.

</td><td>

Yes

</td><td>

*US*

</td></tr><tr><td colspan="5">

**Entry Detail Record** section

</td></tr><tr><td>

**Receiver Name**

</td><td>

Lookup box

</td><td>

The name of the party who has authorized the Originator to initiate ACH payments or debits to their bank account, which is processed through the RDFI.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Receiver Name*

</td></tr><tr><td>

**Receiving DFI Routing Number**

</td><td>

Lookup box

</td><td>

The routing number of the bank that receives the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Receiving DFI Routing Number*

</td></tr><tr><td>

**Account Number**

</td><td>

Lookup box

</td><td>

The unique identifier of the bank account of the receiver in an ACH transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Account Number*

</td></tr><tr><td>

**Transaction Code**

</td><td>

Lookup box

</td><td>

The transaction code. The following options are available:-   *22 Demand credit*
-   *32 Savings credit*

This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

No

</td><td>

*Transaction Code*

</td></tr><tr><td>

**Transaction Type Code**

</td><td>

Lookup box

</td><td>

A three-character code used to identify the type of transaction. The following options are available:-   *BUS \(Business/Commercial\)*
-   *DEP \(Deposit\)*
-   *MIS \(Miscellaneous\)*

This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

No

</td><td>

*Transaction Type Code*

</td></tr><tr><td>

**Destination Street/Address**

</td><td>

Lookup box

</td><td>

The address or street name of the party receiving the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Destination Street/Address*

</td></tr><tr><td>

**Destination City**

</td><td>

Lookup box

</td><td>

The city of the party receiving the ACH payment or transaction.This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Destination City*

</td></tr><tr><td>

**Destination Province/State**

</td><td>

Lookup box

</td><td>

The province or state of the receiving party's address. This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Destination Province/State*

</td></tr><tr><td>

**Destination Postal Code/ZIP Code**

</td><td>

Lookup box

</td><td>

The postal code or ZIP code associated with the address of the party receiving the ACH payment or transaction. This parameter is displayed on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form if the payment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter.

</td><td>

Yes

</td><td>

*Destination Postal Code/ZIP Code*

</td></tr></tbody>
</table>

**Parent topic:**[Setting Up U.S. and Canada ACH Cross-Border Payment Processing](../UserGuide/CA__CON_Setup_Canadian_ACH.md)

