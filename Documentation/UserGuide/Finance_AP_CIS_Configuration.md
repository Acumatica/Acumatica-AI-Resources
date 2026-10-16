# CIS: Configuration

Before you can calculate CIS deductions and file returns, you configure a set of related elements: a general ledger account, a tax agency, reporting settings, the three CIS withholding taxes, the tax categories that classify bill amounts as labor, materials, or non-CIS, and your company's HMRC details. Steps 1 through 5 each depend on the ones before them, so perform them in order. For an overview of how these pieces fit together, see [CIS: General Information](Finance_AP_CIS_GeneralInfo.md).

## Prerequisites

Before you begin, make sure the following are in place:

-   The *UK Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, *United Kingdom* is selected in the **Localization** box on the **Company Details** tab for the company. Only transactions of companies with this setting are included in CIS processing.

## Configuring CIS

Perform the following steps in order.

1.  **Create a separate tax payable account for CIS withholding tax**. On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, add an account with the following settings:
    -   **Account Class**: *TAXESPAY*
    -   **Type**: *Liability*
    -   **Description**: A descriptive name such as `Pending CIS Tax Payable`
    -   **Control Account Module**: *TX*
2.  **Create a tax agency dedicated to CIS**. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, add a vendor with *Tax Agency* selected in the **Vendor Class** box. Select the **Vendor Is Tax Agency** check box, and on the **Tax Agency** tab specify and verify these settings:

    -   **Tax Payable Account**: The account you created in Step 1
    -   **Default Tax Period Type**: *Month* \(selected by default and read-only\)
    -   **Automatically Generate Tax Bill**: Selected
    -   **CIS Tax Agency**: Selected
    **Attention:** The CIS tax agency designation is what makes the system generate tax periods on the CIS cycle.

3.  **Configure the reporting settings for the tax agency**. On the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form, select the tax agency, and then:

    -   On the **Report Lines** tab, add a line with the following settings:
        -   **Description**: `CIS Withholding Tax`
        -   **Update With**: *Tax Amount*
        -   **Update Rule**: *+Output-Input*
    -   On the same tab, add a second line with the following settings:
        -   **Description**: `Purchases Subject to Withholding Tax`
        -   **Update With**: *Taxable Amount*
        -   **Update Rule**: *+Output-Input*
    -   On the **Reporting Groups** tab, add a group named `Withholding` with *Output* selected in the **Group Type** column.
    On the [Reporting Groups](TX_20_52_00.md) \(TX205200\) form, for the *Withholding* reporting group, add the following report lines:

    -   *1 - CIS Withholding Tax*
    -   *2 - Purchases Subject to Withholding Tax*
4.  **Create the three CIS withholding taxes**. On the [Taxes](TX_20_50_00.md) \(TX205000\) form, add one tax for each rate. On the **Tax Settings** tab of each tax, specify:

    -   **Tax Type**: *Withholding*
    -   **CIS Deduction**: Selected. When you select this check box, the system sets **Calculation Rule** to *Inclusive Document-Level* and **Cash Discount** to *Does Not Affect Taxable Amount*, and makes both boxes unavailable.
    -   **Tax Agency**: The CIS tax agency that you created in Step 2
    The **Tax ID**, **Description**, and rate differ as follows:

    |Tax ID|Description|Rate \(%\)|
    |------|-----------|----------|
    |CIS WTH 0|CIS Withholding Tax 0%|0|
    |CIS WTH 20|CIS Withholding Tax 20%|20|
    |CIS WTH 30|CIS Withholding Tax 30%|30|

    For each tax, on the **Tax Schedule** tab add a row with *1/1/1900* selected by default in the **Start Date** column, the rate shown above, and *Withholding* selected in the **Reporting Group** column. On the **GL Accounts** tab, in the **Tax Payable Account** box, select the account you created in Step 1.

5.  **Create the CIS tax categories**. You need at least three tax categories on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form:

    -   One with the **CIS Type** of *Labour*
    -   One with the **CIS Type** of *Material*
    -   One with the **CIS Type** of *None*
    You can create new categories or set the **CIS Type** for existing ones.

    **Tip:** If a tax category has the **Exclude Listed Taxes** check box selected on the [Tax Categories](TX_20_55_00.md) form, add all three CIS withholding taxes to it. If the check box is cleared, do not add the CIS withholding taxes. Do not set the **CIS Type** of *Labour* or *Material* on a category that contains a withholding tax whose **CIS Deduction** check box is cleared.

6.  **Enter your company's HMRC details**. On the [Companies](CS_10_15_00.md) \(CS101500\) form or the [Branches](CS_10_20_00.md) \(CS102000\) form \(if you file taxes by branch\), on the **UK Tax Reporting** tab, complete both sections:
    -   **CIS and Tax References** section: the **Employer's PAYE Ref. Nbr.**, **Accounts Office Ref. Nbr.**, **Unique Taxpayer Ref. Nbr.**, and **Contractor's Business Type** boxes are all required, each in its expected format.
    -   **HMRC Credentials** section: the **HMRC User ID** and **HMRC Password** boxes are required to submit CIS returns.

## Additional Settings

On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, in the **Retainage Settings** section, the **Retain Taxes** check box must be selected so that CIS withholding taxes are calculated correctly on both the original bill and the retainage bill. For more information on bills with retainage, see [Processing AP Documents with Retainage](AP__MNG_Managing_Bills_with_Retainage.md).

**Attention:** Refunds, debit adjustments, and prepayments are not included in the CIS return, and CIS withholding taxes do not appear on purchase orders.

**Parent topic:**[Construction Industry Scheme \(CIS\) for Subcontractor Payments](../UserGuide/Finance_AP_CIS_for_Subcontractors_Mapref.md)

