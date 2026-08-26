# Applying Payments to Particular Lines: Support of Taxes {#_f882ab1b-3d0b-4d73-b639-6b4ed6ad5e2e .concept}

Acumatica ERP supports the ability to enter and release an AP document with automatically calculated taxes if the document can be paid by line. These taxes may include value-added taxes \(VATs\), sales taxes, and use taxes. For taxes at both the line level and the document level, the document tax amount is split proportionally between document lines and is included in the line balance on document release. These tax amounts are shown in the **Tax Amount** column, which appears on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form after the document has been released.

The following table shows how the system treats taxes of each tax type. For each type, you can see whether taxes of the type are included in the line balance \(in this case, the **Balance** column contains the sum of the taxable amount and the tax amount\) and whether these taxes are included in the **Tax Amount**column.

|Tax Type|Included in the Line Balance|Shown in the Tax Amount Column|
|--------|----------------------------|------------------------------|
|*VAT*|Yes|Yes|
|*Partially Deductible VAT*|Yes|Yes|
|*Reversed VAT*|Yes, with the opposite sign|Yes, with the opposite sign|
|*Sales Tax*|Yes|Yes|
|*Use Tax*|No|No|

When an AP document is posted to the general ledger, the **Use Tax Expense Account** check box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form is selected for all use and sales taxes included in the AP document. The system inserts the project, project task, cost code, inventory ID, and account values for each line's tax amount posted to the tax expense account specified for the tax ID if the tax expense account is included in an account group.

For details on configuring a sales tax used in AP, see [Sales Taxes: To Configure a Sales Tax for Use in AP](../ImplementationGuide/SalesTaxes_Implem_Activity_AP.md).

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

