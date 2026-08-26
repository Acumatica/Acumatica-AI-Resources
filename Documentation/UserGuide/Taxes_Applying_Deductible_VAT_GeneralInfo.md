# Applying Deductible VAT: General Information {#_d033549a-318a-425a-bca7-16d820e6d2c5 .concept}

A partially deductible VAT is applied to documents when a company purchases goods or services to be used for business processes rather than for further sale.

Suppose that a hotel purchases cleaning supplies and towels for its business. The bill amount it pays to the supplier includes a 25% tax. It is allowed to deduct 40% of the tax amount paid on this purchase from the tax amount paid to the tax authority. This amount will be claimed from the tax agency. The non-deductible part of the tax amount will be recorded as expenses.

## Learning Objectives {#section_zx4_fjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Process an AP bill with a partially deductible VAT applied to it
-   Prepare a tax report and review the partially deductible VAT shown on the tax report

## Applicable Scenarios {#section_by4_fjv_vxb .section}

You apply a partially deductible VAT to documents if your company is VAT-registered and is allowed to deduct some part of the tax paid to vendors on purchases that are not intended for further resale from your own VAT liability to the government. The deducted amount is claimed from the agency, while the non-deductible tax amount is recorded as expenses.

## Settings for a Partially Deductible VAT {#section_dy4_fjv_vxb .section}

Non-deductible tax amounts should be recorded as expenses. In Acumatica ERP, you can configure the system to record them in one of the following ways:

-   To the dedicated GL account, which you specify in the **Tax Expense Account** box \(and the **Tax Expense Subaccount** box, if applicable\) on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form. To make the **Tax Expense Account** box \(and the **Tax Expense Subaccount** box, if applicable\) available for editing, you need to select the **Use Tax Expense Account** check box \(located above these boxes\).
-   To the expense account specified in the AP document line. In this case, you need to leave the **Use Tax Expense Account** check box cleared on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form.

    **Attention:** If the *Expense Reclassification* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the non-deductible tax amount will be posted first to the specified reclassification account during the pre-release process. As a result of the document release, the amount will be posted to the appropriate expense account.


**Parent topic:**[Applying a Deductible VAT](../UserGuide/Taxes_Applying_Deductible_VAT_Mapref.md)

