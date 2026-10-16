# U.S. ACH Plug-In Settings

You can specify the settings of the U.S. ACH plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

**Tip:** All the settings shown in the table are displayed if you select the **Show All Settings** check box on the **Plug-In Settings** tab.

The following table lists the settings of the U.S. ACH plug-in, grouped according to the specifics of the U.S. ACH file structure.

<table id="_4d6ed97e-53b7-46ec-9d39-0f8d32f1d930"><thead><tr><th>

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

*General Settings* section

</td></tr><tr><td>

**Include Offset Record**

</td><td>

Check box

</td><td>

Indicates \(if selected\) that an offset record should be included in the ACH file.

 If this check box is selected, the system generates balanced ACH files. When you select this check box, the system displays a dialog box that prompts you confirm that remittance settings should be added for the offset record.

</td><td>

No

</td><td>

Selected

</td></tr><tr><td>

**Include Addenda Records**

</td><td>

Check box

</td><td>

Indicates \(if selected\) that addenda records should be included in the ACH file.

 If this check box is selected, ACH records of type 7 \(addenda records\) will be included in the exported ACH file. The system will calculate *Payment-Related Information* field of the addenda records by using the formula specified in the **Payment-Related Information** setting of the plug-in. On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, when you are creating a batch with a payment method that has the **Include Addenda Records** check box selected, the **Payment-Related Info \(Addenda\)** column is displayed in the table so that you can review and manually edit the addenda description.

</td><td>

No

</td><td>

Selected

</td></tr><tr><td>

**Payment-Related Information**

</td><td>

Text box for a formula

</td><td>

A formula to generate payment-related information for Addenda records. This setting is displayed and becomes required if the **Include Addenda Records** check box is selected.

 For details, see [Modification of the Payment-Related Information Formula](#_61f76be3-ff1d-4f9b-8804-c5894fc8c6c4).

</td><td>

No

</td><td>

*= Concat\('Inv\*',\[Bill.InvoiceNbr\], '\\\\'\)*

</td></tr><tr><td>

**Block Filler**

</td><td>

Text

</td><td>

A character that will be used to fill in the *File Padding* section of the exported file. If you want the *File Padding* section to be empty, you should insert a blank in this setting.

</td><td>

No

</td><td>

*9*

</td></tr><tr><td colspan="5">

*File Header Record* section

</td></tr><tr><td>

**Immediate Destination**

</td><td>

Lookup box

</td><td>

A nine-digit bank routing and transit number. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Routing Number \(ABA\)*

</td></tr><tr><td>

**Immediate Origin**

</td><td>

Lookup box

</td><td>

The routing number or a company ID. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Company Identification*

</td></tr><tr><td>

**File ID Modifier**

</td><td>

Drop-down list

</td><td>

The numbering format of file ID. The following options are available:-   *A-Z, 0-9*
-   *0-9, A-Z*

</td><td>

Yes

</td><td>

*A-Z, 0-9*

</td></tr><tr><td>

**Immediate Destination Name**

</td><td>

Lookup box

</td><td>

The bank name. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Bank Name*

</td></tr><tr><td>

**Immediate Origin Name**

</td><td>

Lookup box

</td><td>

The beneficiary \(company\) name. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Beneficiary Name*

</td></tr><tr><td colspan="5">

*Batch Header Record* section

</td></tr><tr><td>

**Service Class Code**

</td><td>

Drop-down list

</td><td>

The service class code. The following options are available:-   *200 - Mixed Debits and Credits*
-   *220 - Credits Only*

</td><td>

Yes

</td><td>

*220 - Credits Only*

</td></tr><tr><td>

**Company Name**

</td><td>

Lookup box

</td><td>

The short company name, which needs to be recognizable by the receiver. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Company Short Name*

</td></tr><tr><td>

**Company Discretionary Data**

</td><td>

Text

</td><td>

Information that optionally can be specified for the company's internal use. You can enter an alphanumeric value of up to 20 characters.

</td><td>

No

</td><td>

 

</td></tr><tr><td>

**Company Identification**

</td><td>

Lookup box

</td><td>

A 10-digit company ID number. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Company Identification*

</td></tr><tr><td>

**Standard Entry Class Code**

</td><td>

Drop-down list

</td><td>

The entry class code. The following options are available:-   *CCD*: Corporate credit or debit
-   *PPD*: Prearranged payment or deposit

</td><td>

Yes

</td><td>

*CCD*

</td></tr><tr><td>

**Company Entry Description**

</td><td>

Text

</td><td>

The description of the entry's purpose. You can enter an alphanumeric value of up to 10 characters.

 This value will be exported to the ACH file by default if on the [Batch Payments](AP_30_50_00.md) form, the **Description** box is empty for the exported batch.

</td><td>

Yes

</td><td>

*Payment*

</td></tr><tr><td>

**Originator Status**

</td><td>

Text

</td><td>

The originator status. An originator status of *1* identifies the company as a non-federal government entity. You can enter an alphanumeric value of one character.

</td><td>

Yes

</td><td>

*1*

</td></tr><tr><td>

**Originating DFI ID \(first 8 digits\)**

</td><td>

Lookup box

</td><td>

The bank routing number \(only the first eight digits are used\). The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Routing Number \(ABA\)*

</td></tr><tr><td colspan="5">

*Entry Detail Record* section

</td></tr><tr><td>

**Receiving DFI ID \(first 8 digits\)**

</td><td>

Lookup box

</td><td>

The routing and transit number of the receiving bank. The lookup table displays a list of payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Routing Number \(ABA\)*

</td></tr><tr><td>

**DFI Accounting Nbr.**

</td><td>

Lookup box

</td><td>

The recipient's account number. The lookup table displays a list of payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Beneficiary Account No*

</td></tr><tr><td>

**Receiving Inv./Comp. Name**

</td><td>

Lookup box

</td><td>

The recipient's name. The lookup table displays the list of payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Beneficiary Name*

</td></tr><tr><td>

**Transaction Code**

</td><td>

Lookup box

</td><td>

The type of the recipient's account, which affects the calculation of the transaction code. The lookup table displays the list of payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

 For example, if *Savings Account* is selected for a vendor in the **Account Type** row in the **Payment Instructions** table on the **Payment** tab of the [Vendors](AP_30_30_00.md) form, the *23* transaction code is exported to the ACH file for the vendor's payments. If *Checking Account* is selected for a vendor on the [Vendors](AP_30_30_00.md) form, the *22* transaction code is exported for this vendor's payments. If no value is specified for this setting, the transaction code will always be *22* for credit transactions.

</td><td>

No

</td><td>

*Account Type*

</td></tr><tr><td>

**Offset: Receiving DFI ID**

</td><td>

Lookup box

</td><td>

The routing number of the offset entry. The lookup table displays a list of the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 This setting is displayed and is required only if the **Include Offset Record** check box is selected on the **Plug-in Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Offset ABA/Routing \#*

</td></tr><tr><td>

**Offset: DFI Accounting Nbr.**

</td><td>

Lookup box

</td><td>

The account number for the offset entry. The lookup table displays a list of the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 This setting is displayed and is required only if the **Include Offset Record** check box is selected on the **Plug-in Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Offset Account \#*

</td></tr><tr><td>

**Offset: Receiving Ind./Comp. Name**

</td><td>

Lookup box

</td><td>

The description of the offset entry. The lookup table displays a list of the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 This setting is displayed and is required only if the **Include Offset Record** check box is selected on the **Plug-in Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Offset Description*

</td></tr></tbody>
</table>

## Modification of the Payment-Related Information Formula

You edit the formula specified for the **Payment-Related Information** setting of the plug-in by performing the following steps:

1.  You double-click the formula in the **Value** column.
2.  You click the Edit button to open the [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md), where you update the formula.

    For details on working with formulas, see [The Use of Formulas](IS__con_Formulas_in_Mapping.md).

3.  When you have finished editing the formula, click **OK**.

The following fields are available in the Component Selection pane of the [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md) and can be used to calculate the **Payment-Related Information** setting for the addenda record:

-   *\[Payment.RefNbr\]*: The **Reference Nbr.** of an AP payment
-   *\[Payment.DocDesc\]*: The **Description** of an AP payment
-   *\[Payment.DocDate\]*: The **Payment Date** of an AP payment
-   *\[Payment.CuryOrigDocAmt\]*: The **Payment Amount** of an AP payment
-   *\[Bill.RefNbr\]*: The **Reference Nbr.** of a bill to which the AP payment is applied
-   *\[Bill.InvoiceNbr\]*: The **Vendor Ref.** number of a bill to which the AP payment is applied
-   *\[Bill.DocDesc\]*: The **Description** of a bill to which the AP payment is applied
-   *\[Bill.DocDate\]*: The **Date** of a bill to which the AP payment is applied
-   *\[Adjustment.CuryAdjgAmt\]*: The AP payment amount applied to a specific bill
-   *\[Vendor.AcctName\]*: The **Account Name** of an AP payment vendor

The payment-related information will be calculated separately for each payment application if both of the following are true:

-   An AP payment is applied to multiple bills.
-   The formula specified for the **Payment-Related Information** setting contains such fields as *\[Bill.RefNbr\]*, *\[Bill.InvoiceNbr\]*, *\[Bill.DocDesc\]*, *\[Bill.DocDate\]*, and *\[Adjustment.CuryAdjgAmt\]*.

The standard functions and operations available in the corresponding sections, as well as static text, can be used along with the fields.

If you want to insert the `\` character in the formula, use `\\` instead. \(You can see its use in the default formula specified in the **Payment-Related Information** setting.\)

If you leave the default formula, `= Concat('Inv*',[Bill.InvoiceNbr], '\\')`, the payment-related information generated for an AP payment will look like this: *Inv\*VendorRef1\\Inv\*VendorRef2*. In this information, note the following:

-   *VendorRef1* is the **Vendor Ref.** number specified for one bill to which the AP payment is applied.
-   *VendorRef2* is the **Vendor Ref.** number specified for another bill to which the AP payment is applied.

**Parent topic:**[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)

