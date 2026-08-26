# Settings of the EFT Export Scenario for Canadian Payroll {#_5a78a4d5-7893-4b25-821a-3ba8b779d3cb .concept}

You can export payroll batch payments to a CPA-005 file on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form by using the Canadian EFT plug-in.

**Attention:** This functionality becomes available if the *Canadian Payroll* and *Canadian Localization* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To configure the export of batch payments for Canadian payroll, you need to set up a *Direct Deposit* payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. In the Summary area, they specify the following settings for the payment method:

-   **Use in PR**: Selected
-   **Require Remittance Information for Cash Account**: Selected
-   **Direct Deposit File Format**: *CPA005*

On the **Settings for Use in PR** tab, you specify the following settings:

-   **Create Batch Payments**: Selected
-   **Export Scenario**: *Export PR Payments to EFT*
-   **Skip Payments with Zero Amounts**: Cleared \(the default value\)

    You select this check box if you want the system to exclude payments with zero amount from the exported file.


The **Remittance Settings** tab is populated with the settings listed in the following table. These remittance settings will be required for the cash accounts linked to the payment method on the **Allowed Cash Accounts** tab.

|ID|Description|Entry Mask|Validation Reg. Exp.|
|---|-----------|----------|--------------------|
|1|*Name*|*AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,30\}$*|
|2|*Short Name*|*AAAAAAAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,15\}$*|
|3|*Bank*|*0000*|*^\\d\{3,3\}$*|
|4|*Branch*|*00000*|*^\\d\{5,5\}$*|
|5|*Account*|*AAAAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,12\}$*|
|6|*Originator ID*|*AAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,10\}$*|
|7|*Data Center*| |*^\\d\{5,5\}$*|
|8|*Compress to ZIP format*|*0*|*^\(1\|0\)$*|

The *Compress to ZIP format* setting determines whether the system should compress the exported file. You set the entry mask for this setting to *1* to make the system perform the compression.

**Parent topic:**[Setup of Canadian EFT](../UserGuide/CA__CON_Setup_Canadian_EFT.md)

