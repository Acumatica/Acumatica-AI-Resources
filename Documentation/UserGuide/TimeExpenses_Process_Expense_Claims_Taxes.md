# Expense Claims: Taxes in Expense Claims {#_3fb38614-e6fa-4bdf-8376-550ff8833191 .concept}

In Acumatica ERP, you can configure the system to apply taxes to expense claims on the [Expense Claim](EP_30_10_00.md) \(EP301000\) forms.

For a newly created claim, the tax zone is copied from the employee's settings. If the expense claim is created from an expense receipt, the tax zone is copied from the expense receipt. You can override the tax zone in a specific claim. The overridden tax zone can be saved and used as the default tax zone in new expense claims and receipts of the employee.

In expense claims, the system specifies *Tax Settings* as the default tax calculation mode in the **Tax Calculation Mode** box on the **Financial** tab on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form. The tax calculation mode specified for the expense claim is used by default in expense claim lines that are entered directly on the **Details** tab of the form.

**Tip:** If the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select whether the amounts in the expense claim are tax-exclusive \(net\) or tax-inclusive \(gross\). For more information, see [Expense Receipts: Taxes in Expense Receipts](TimeExpenses_Process_Expense_Receipts_Taxes.md).

## Expense Receipts with Mixed Tax Settings { .section}

By default, you can add to an expense claim only expense receipts with the same tax zone and tax calculation modes. When the expense claim is released, the system generates an AP document for all expense receipts that have been added to the expense claim.

If you need to create an expense claim for expense receipts with different tax settings, you have to select the **Allow Mixed Tax Setting in Claims** check box on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form. On release of an expense claim that includes expense receipts with different tax settings, the system generates multiple AP documents, each of which contains expense receipts with the same tax zone and tax calculation mode.

## Tax Zone { .section}

The expense claim's tax zone is specified in the **Tax Zone** box of the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.

The tax zone specified in this box provides the default value for the expense receipts created from the expense claim.

By default, the system inserts the tax zone by using the first applicable rule it finds from the following:

1.  If the expense claim is related to a project and the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the system copies the project's tax zone from the **Cost Tax Zone** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
2.  If the expense claim is created from an expense receipt, the tax zone is copied from the **Taxes** tab of the expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form.
3.  If the system hasn’t yet found an applicable rule, it uses the default tax zone of the employee claiming the expenses. This tax zone is specified in the **Tax Zone** box on the **Financial** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form.

You can override the tax zone in the expense claim. If you do, a confirmation box opens asking whether you want to save the newly entered tax zone as the default for the employee's expense claims and receipts. If you save it, the system applies this tax zone to new expense claims and receipts, even if it differs from the employee's tax zone. To remove the previously saved default tax zone, you can clear the **Tax Zone** box and save the empty value.

If you don't save the tax zone, the system applies the selected tax zone only to the current expense claim.

If the **Allow Mixed Tax Settings in Claims** check box is selected on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, a user can combine receipts with different tax zones into one expense claim.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

