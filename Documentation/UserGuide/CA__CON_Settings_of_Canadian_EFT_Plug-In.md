# Settings of the Canadian EFT Plug-In

You can specify the settings of the Canadian EFT plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

**Tip:** All the settings listed in the table below are displayed on the tab if you select the **Show All Settings** check box on the tab.

The following table lists the settings of the Canadian EFT plug-in.

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

**Compress to ZIP format**

</td><td>

Lookup box

</td><td>

The lookup table \(which opens when you click the magnifier button\) displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

No

</td><td>

 

</td></tr><tr><td colspan="5">

**A: File Header Record** section

</td></tr><tr><td>

**Originator's ID**

</td><td>

Lookup box

</td><td>

The originator of the file. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Originator ID*

</td></tr><tr><td>

**Destination Data Center**

</td><td>

Lookup box

</td><td>

The data center to which the file is being delivered. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Data Center*

</td></tr><tr><td>

**Creation Date**

</td><td>

Drop-down list

</td><td>

The creation date of the file, which can be one of the following options:-   *Batch Date*
-   *Current Date*

</td><td>

Yes

</td><td>

*Current Date*

</td></tr><tr><td colspan="5">

**C: Entry Detail \(Deposit\) Record** section

</td></tr><tr><td>

**Institutional Identification No. \(Bank\)**

</td><td>

Lookup box

</td><td>

The financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Bank*

</td></tr><tr><td>

**Institutional Identification No. \(Branch\)**

</td><td>

Lookup box

</td><td>

The branch of the financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Branch*

</td></tr><tr><td>

**Payee Account No.**

</td><td>

Lookup box

</td><td>

The payee's account with the financial institution. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Account*

</td></tr><tr><td>

**Payee Name**

</td><td>

Lookup box

</td><td>

The payee’s name. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Beneficiary Name*

</td></tr><tr><td>

**Originator's Short Name**

</td><td>

Lookup box

</td><td>

The short name of the originator of the transaction. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Short Name*

</td></tr><tr><td>

**Originator's Long Name**

</td><td>

Lookup box

</td><td>

The long name of the originator of the transaction. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Name*

</td></tr><tr><td>

**Originating Direct Clearer's User ID**

</td><td>

Lookup box

</td><td>

The identification code assigned to the user by the company’s direct clearer. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

No

</td><td>

*Originator ID*

</td></tr><tr><td>

**Originator's Cross Reference No.**

</td><td>

Formula box

</td><td>

The formula used by the originator to identify the transaction.

 This is a standard formula box. You can edit the value by using the Formula Editor dialog box. The list of fields that can be added to the formula \(together with static text, operations, and functions\) include the following:

 -   *\[APPayment.Reference Nbr\]*
-   *\[APPayment.Description\]*
-   *\[APPayment.Payment Date\]*
-   *\[APPayment.Payment Ext Ref\]*
-   *\[APPayment.Payment Amount\]*
-   *\[APPayment.Vendor Name\]*
-   *\[Bill.Reference Nbr\]*
-   *\[Bill.Vendor Ref\]*
-   *\[Bill.Description\]*
-   *\[Bill.Date\]*

</td><td>

Yes

</td><td>

*\[APPayment.Payment Ext Ref\]*

</td></tr><tr><td>

**Institutional ID Number for Returns \(Bank\)**

</td><td>

Lookup box

</td><td>

The bank number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

Yes

</td><td>

*Bank*

</td></tr><tr><td>

**Institutional ID Number for Returns \(Branch\)**

</td><td>

Lookup box

</td><td>

The branch number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

No

</td><td>

*Branch*

</td></tr><tr><td>

**Account No. for Returns**

</td><td>

Lookup box

</td><td>

The account number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td><td>

No

</td><td>

*Account*

</td></tr><tr><td>

**Originator's Sundry Information**

</td><td>

Formula box

</td><td>

The formula used by the originator to further identify the transaction.

 This is a formula box. You can edit the value by using the Formula Editor dialog box.

</td><td>

No

</td><td>

 

</td></tr></tbody>
</table>

## Modification of the Payment-Related Information Formula

On the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md)\(CA204000\) form, you can edit the formula specified for the **Originator's Cross Reference No.** and **Originator's Sundry Information** settings of the plug-in by performing the following general steps:

1.  You double-click the formula in the **Value** column.
2.  You click the Edit button to open the Formula Editor dialog box \(described in [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md)\), where you update the formula.

    For details on working with formulas, see [The Use of Formulas](IS__con_Formulas_in_Mapping.md).

3.  When you have finished editing the formula, click **OK**.

The following fields, which are available in the Component Selection pane of the Formula Editor dialog box, can be used to calculate the **Originator's Cross Reference No.** and **Originator's Sundry Information** settings for the record:

-   *\[APPayment.Reference Nbr\]*: The **Reference Nbr.** of the AP payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form
-   *\[APPayment.Description\]*: The **Description** of the AP payment on the [Checks and Payments](AP_30_20_00.md) form
-   *\[APPayment.Payment Date\]*: The **Payment Date** of the AP payment on the [Checks and Payments](AP_30_20_00.md) form
-   *\[APPayment.Payment Ext Ref\]*: The **Payment Ref.** of the AP payment on the [Checks and Payments](AP_30_20_00.md) form
-   *\[APPayment.Payment Amount\]*: The **Payment Amount** of the AP payment on the [Checks and Payments](AP_30_20_00.md) form
-   *\[APPayment.Vendor Name\]*: The ID and **Account Name** of the vendor specified for the AP payment; these values can be found in the **Vendor ID** element in the Summary area of the [Vendors](AP_30_30_00.md) \(AP303000\) form and the **Account Name** specified on the **General** tab of the form
-   *\[Bill.Reference Nbr\]*: The **Reference Nbr.** of the bill to which the AP payment is applied; this value can be found on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form
-   *\[Bill.Vendor Ref\]*: The **Vendor Ref.** number of the bill to which the AP payment is applied; this value can be found on the [Bills and Adjustments](AP_30_10_00.md) form
-   *\[Bill.Description\]*: The **Description** of the bill to which the AP payment is applied; this value can be found on the [Bills and Adjustments](AP_30_10_00.md) form
-   *\[Bill.Date\]*: The **Date** of a bill to which the AP payment is applied; this value can be found on the [Bills and Adjustments](AP_30_10_00.md) form

In the dialog box, you can use standard functions and operators along with the fields. You can manually edit the formula in the Formula Text pane.

**Tip:** If you want to insert the `\` character in the formula, use `\\` instead.

**Parent topic:**[Setup of Canadian EFT](../UserGuide/CA__CON_Setup_Canadian_EFT.md)

