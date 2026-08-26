# Settings of the Canadian EFT Export Scenario {#_5a87a4d5-8739-4b52-812a-3ba8b779d3cb .concept}

In addition to the Canadian EFT plug-in, you can use the Canadian EFT export scenario to export batch payments to a CPA-005 file. On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, when setting up a payment method for Canadian EFT, you select the following options on the **Settings for Use in AP** tab:

-   **Export Method**: *Export Scenario*
-   **Export Scenario**: *Export AP Payment to Payments \(Canadian Localization\)* \(inserted by default\)

## Settings of the Canadian EFT Export Scenario { .section}

When you select the *Export AP Payment to Payments \(Canadian Localization\)* export scenario, the system fills in the **Payment Method Details** table on the **Settings for Use in AP** tab with the following settings.

|ID|Description|Entry Mask|Validation Reg. Exp.|
|---|-----------|----------|--------------------|
|1|*Bank*|*0000*|*^\\d\{3,3\}$*|
|2|*Branch*|*00000*|*^\\d\{5,5\}$*|
|3|*Account*|*AAAAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,12\}$*|
|4|*Beneficiary Name*|*AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA*|*^\(\[\\w\]\|\\s\)\{1,30\}$*|

The **Remittance Settings** tab is populated with the following settings.

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

When the system generates a file on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, the following rules are applicable:

-   If *003* \(RBC bank code\) is specified for the **Bank** row of the **Remittance Details** table \(**Remittance Settings** tab\) on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for a cash account, the generated EFT production file for a released batch payment will include the following predefined header record: *$$AA01CPA1464\[PROD\[NL$$*.

    **Attention:** The **Bank** row corresponds to the bank code or institution number. The **Bank Code** format is specified on the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.

-   If the bank code for the test file is *003* \(RBC bank code\), the following conditions will apply:
    -   The RBC EFT test file will have the following header record: *$$AA01CPA1464\[TEST\[NL$$*
    -   The **File Creation Number** values will be set to *TEST* for logical records A, C, and Z
-   If the bank code for the test file is not *003* \(all other banks\), the **File Creation Number** will be set to *0000*.

**Parent topic:**[Setup of Canadian EFT](../UserGuide/CA__CON_Setup_Canadian_EFT.md)

