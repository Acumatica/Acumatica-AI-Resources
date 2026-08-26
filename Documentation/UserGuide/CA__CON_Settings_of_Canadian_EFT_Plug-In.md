# Settings of the Canadian EFT Plug-In {#_1e6ea20f-8020-4496-a9c5-f37e3620ba28 .concept}

You can specify the settings of the Canadian EFT plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

**Tip:** All the settings listed in the table below are displayed on the tab if you select the **Show All Settings** check box on the tab.

The following table lists the settings of the Canadian EFT plug-in.

|Setting|Type of Control|Description|Required|Default Value|
|-------|---------------|-----------|--------|-------------|
|**General Settings** section|
|**Compress to ZIP format**|Lookup box|The lookup table \(which opens when you click the magnifier button\) displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|No| |
|**A: File Header Record** section|
|**Originator's ID**|Lookup box|The originator of the file. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Originator ID*|
|**Destination Data Center**|Lookup box|The data center to which the file is being delivered. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Data Center*|
|**Creation Date**|Drop-down list|The creation date of the file, which can be one of the following options:-   *Batch Date*
-   *Current Date*

|Yes|*Current Date*|
|**C: Entry Detail \(Deposit\) Record** section|
|**Institutional Identification No. \(Bank\)**|Lookup box|The financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Bank*|
|**Institutional Identification No. \(Branch\)**|Lookup box|The branch of the financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Branch*|
|**Payee Account No.**|Lookup box|The payee's account with the financial institution. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Account*|
|**Payee Name**|Lookup box|The payee’s name. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Beneficiary Name*|
|**Originator's Short Name**|Lookup box|The short name of the originator of the transaction. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Short Name*|
|**Originator's Long Name**|Lookup box|The long name of the originator of the transaction. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Name*|
|**Originating Direct Clearer's User ID**|Lookup box|The identification code assigned to the user by the company’s direct clearer. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|No|*Originator ID*|
|**Originator's Cross Reference No.**|Formula box|The formula used by the originator to identify the transaction.

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

|Yes|*\[APPayment.Payment Ext Ref\]*|
|**Institutional ID Number for Returns \(Bank\)**|Lookup box|The bank number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|Yes|*Bank*|
|**Institutional ID Number for Returns \(Branch\)**|Lookup box|The branch number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|No|*Branch*|
|**Account No. for Returns**|Lookup box|The account number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|No|*Account*|
|**Originator's Sundry Information**|Formula box|The formula used by the originator to further identify the transaction.

 This is a formula box. You can edit the value by using the Formula Editor dialog box.

|No| |

## Modification of the Payment-Related Information Formula {#_61f76be3-ff1d-4f9b-8804-c5894fc8c6c4 .section}

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

