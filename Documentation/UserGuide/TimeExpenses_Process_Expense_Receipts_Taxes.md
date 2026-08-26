# Expense Receipts: Taxes in Expense Receipts {#_4f9d9185-0bc4-43a0-aa03-d26b756e85a5 .concept}

In Acumatica ERP, you can configure the system to apply taxes to expense receipts that employees enter into the system on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. You can review the tax and taxable amounts that the system has calculated in the expense receipts, and adjust them, if needed.

Also, if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can specify whether the expense receipt amounts are tax-inclusive or tax-exclusive.

## Taxes That Are Applicable to Expense Receipts { .section}

When a user selects an expense item in the expense receipt created on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form, the system fills in the tax category and tax calculation mode of this item. The default tax zone in the expense receipt is copied from the settings of the **Claimed By** employee. If needed, you can change any of these default settings.

The system calculates the taxes to be applied to the expense receipt amount by using the settings of each tax that corresponds to both the tax category and the tax zone specified in the expense receipt. The total tax amount is shown in the **Tax Total** box of the Summary area.

The table on the **Taxes** tab of the [Expense Receipt](EP_30_10_20.md) form displays the details of all taxes that are applicable to the expense receipt.

## Tax-Exclusive and Tax-Inclusive Amounts in Expense Receipts { .section}

Before entering expense receipt amounts, consider the type of amounts specified in the original expense documents. An expense receipt can contain amounts that are either tax-inclusive \(gross\) or tax-exclusive \(net\). In Acumatica ERP, you can specify the tax calculation mode in the settings for a particular receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. The selected mode defines how the system will compute the tax and taxable amounts for the document.

**Tip:** The ability to specify whether the expense receipt amounts are tax-inclusive or tax-exclusive is available only if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you enter an expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form, the default tax calculation mode specified in the **Tax Calculation Mode** box is copied from the settings of the selected expense item. If needed, you can override this setting in the expense receipt. The following tax calculation modes are available:

-   *Gross*: The tax amount is included in the unit cost specified in the expense receipt. The system calculates the taxable amount for an expense receipt by subtracting the employee part and tax total from the amount.
-   *Net*: The unit cost specified in the expense receipt does not include the tax amount. The system calculates the taxable amount for an expense receipt by subtracting the employee part from the amount.
-   *Tax Settings*: Standard tax settings should be applied to the expense receipt. For details, see [Tax Calculation Methods: General Information](Taxes_Selecting_Tax_Calc_Methods_GeneralInfo.md).

## Discrepancies Between Reported and Calculated Tax Amounts { .section}

Due to different rounding settings in different systems, discrepancies may appear between the tax amount computed in Acumatica ERP and the tax amount specified in the original expense documents. You can manually correct the tax amount in the **Tax Amount** column of the **Taxes** tab of the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form for the expense receipt being entered so that the specified tax amount matches the tax amount in the original document.

Also, you can correct the tax amount in the **Document Taxes** dialog box on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form. You open this dialog box by clicking the link in the **Tax Amount** column on the **Details** tab. If the amounts of inclusive taxes differ from the calculated amounts, the discrepancy will be shown in the **Tax Discrepancy** box on the **Taxes** tab of both forms.

To be able to process an expense receipt with a discrepancy amount, you need to specify the maximum amount of the difference that can appear because of rounding in the **Rounding Limit** box on the [Currencies](CM_20_20_00.md) \(CM202000\) form. If the discrepancy amount is within the limit, the system will post this amount to the GL accounts specified in the **Rounding Gain Account** or **Rounding Loss Account** box on the [Currencies](CM_20_20_00.md) form. If the discrepancy exceeds the rounding limit, the expense receipt cannot be submitted for further processing. For more information, see [Purchases with Sales Taxes: Tax Amount Validation](TX__con_Tax_Amount_Validation.md).

## Tax Zone { .section}

The expense receipt's tax zone is specified in the **Tax Zone** box of the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form.

By default, the system inserts the tax zone by using the first applicable rule it finds from the following:

1.  If the expense receipt is related to a project \(that is, a project is selected in the **Project/Contract** box\) and the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the system copies the project's tax zone from the **Cost Tax Zone** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
2.  If the system hasn’t yet found an applicable rule, it copies the default tax zone of the employee. This tax zone is specified in the **Tax Zone** box on the **Financial** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form.

You can override the tax zone in the expense receipt. If you do, a confirmation box opens asking whether you want to save the newly entered tax zone as the default for the employee's expense claims and receipts. If you save it, the system applies this tax zone to new expense claims and receipts, even if it differs from the employee's tax zone. To remove the previously saved default tax zone, you can clear the **Tax Zone** box and save the empty value.

If you don't save the tax zone, the system applies the selected tax zone only to the current expense receipt.

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

