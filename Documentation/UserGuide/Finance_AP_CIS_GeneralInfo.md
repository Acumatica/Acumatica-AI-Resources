# CIS: General Information

In Acumatica ERP, CIS processing runs through the accounts payable documents you already use. After you mark a vendor as a CIS subcontractor and assign a deduction rate, the system calculates the CIS deduction on each bill and updates it when you release payments. Because CIS is reported on a payment basis, a subcontractor's activity appears on the return for the tax month in which you pay the subcontractor, not the month you record the bill. At the close of each tax month, you submit a return to HMRC and give each subcontractor a statement of the amounts you deducted.

These capabilities become available when the *UK Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and a company's **Localization** box is set to *United Kingdom* on the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form.

## Applicable Scenarios

-   Your company hires subcontractors for construction work in the United Kingdom and must deduct tax from their payments and account for it to HMRC.
-   Your finance team needs to issue accurate deduction statements to subcontractors and file a compliant monthly return within HMRC's deadlines.
-   You need to correct amounts already reported to HMRC—for example, after a subcontractor's rate changes or a payment is adjusted—and resubmit an amended return.

## How CIS Processing Works

How much you deduct from a payment depends on the subcontractor's status with HMRC: 0% for a subcontractor with gross-payment status, 20% at the standard rate, and 30% at the higher rate for subcontractors you have not verified. You deduct only from the labor portion of a payment; the cost of materials is excluded. For how the deduction is calculated, including the effect of discounts and partial payments, see [CIS: Deduction Calculation](Finance_AP_CIS_Deduction_Calculation.md).

Before you process any documents, you configure the elements the scheme depends on:

-   The CIS withholding taxes for the three rates
-   The tax categories that classify amounts as labor, materials, or non-CIS
-   A dedicated CIS tax agency

You also enter your company's HMRC details on the **UK Tax Reporting** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form. For the full setup sequence, see [CIS: Configuration](Finance_AP_CIS_Configuration.md).

For how you prepare and submit the monthly return, pay HMRC, and issue each subcontractor's statement at the close of each tax month, see [CIS: Monthly Return and Deduction Statements](Finance_AP_CIS_Monthly_Returns.md).

## Workflow of CIS Processing

For a company that pays CIS subcontractors, the typical process involves the actions and generated documents shown in the following diagram.


**Parent topic:**[Construction Industry Scheme \(CIS\) for Subcontractor Payments](../UserGuide/Finance_AP_CIS_for_Subcontractors_Mapref.md)

