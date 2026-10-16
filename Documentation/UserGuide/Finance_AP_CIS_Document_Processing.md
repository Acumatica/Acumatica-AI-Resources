# CIS: Document Processing

After you configure CIS and set up your subcontractors, the CIS deduction is calculated and withheld through the accounts payable documents you already use: you create a bill, and you release a payment against it. This topic describes how to record and pay a bill for a CIS subcontractor, and it notes where the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) and [Checks and Payments](AP_30_20_00.md) \(AP302000\) forms behave differently for CIS subcontractors. For how the deduction amount is calculated, see [CIS: Deduction Calculation](Finance_AP_CIS_Deduction_Calculation.md).

## Creating a Bill for a CIS Subcontractor

You create a bill for a CIS subcontractor on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form in the usual way. The **CIS Type** of each line's tax category determines how the line is treated:

-   A line with the CIS type of *Labour* is liable to deduction
-   A line with the CIS type of *Material* is excluded
-   A line with the CIS type of *None* is outside the CIS calculation

When you add a labor line, the system calculates the CIS deduction as a document-level tax: it sums the amounts of all labor lines on the bill, subtracts any document discount, and applies the subcontractor's rate to that total. The system shows the result as the withholding tax on the **Taxes** tab and in the **Tax Total** box in the Summary area. The amount recalculates in real time as you add or change lines. As with other withholding taxes, the deduction is calculated but not posted when you enter the bill.

If you select an inventory ID on a line, this item's default tax category is copied to the line. If you do not select an inventory ID, the tax category is copied by default from the vendor's tax zone, and you may need to change it. A line with no tax category is treated as non-CIS and is excluded from the CIS calculation.

For example, on a bill without discount with £800 of labor and £200 of materials for a subcontractor at the 20% rate, the CIS deduction is 800 × 20% = 160, shown as the withholding tax on the **Taxes** tab.

For a CIS subcontractor, the form behaves differently in two ways:

-   You cannot add a regular \(non-CIS\) withholding tax to the bill. The CIS deduction comes only from the CIS withholding tax assigned to the vendor. If you try to add a withholding tax that is not marked as a CIS deduction, or one that does not match the vendor's CIS withholding tax, the system prevents the action and displays an error. For a vendor that is not a CIS subcontractor, regular withholding taxes work as before.
-   After you release the bill, you can no longer change a line's tax category or edit the CIS deduction amount.

**Tip:** Enter the cost of materials inclusive of VAT when the subcontractor is not registered for VAT, and exclusive of VAT when the subcontractor is registered.

**Important:** Bills that have the **Pay by Line** check box selected on the [Bills and Adjustments](AP_30_10_00.md) form are not supported for CIS.

## Paying a Bill for a CIS Subcontractor

You pay a CIS subcontractor's bill on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form by creating a payment and applying it to the bill. The CIS deduction is finalized when you release the payment, and the payment is reported on the CIS return for the tax month in which you release it. For the return process, see [CIS: Monthly Return and Deduction Statements](Finance_AP_CIS_Monthly_Returns.md).

For a CIS subcontractor, the form behaves differently in these ways:

-   You cannot change the CIS deduction amount manually in the **With. Tax** column on the **Documents to Apply** tab for the payment.
-   If you change the **Amount Paid**—for example, for a partial payment—the CIS deduction recalculates automatically on both the payment and the bill, prorated by the labor share of the amount paid. See [CIS: Deduction Calculation](Finance_AP_CIS_Deduction_Calculation.md) for the formula.
-   If a cash discount is taken for the payment, the system recalculates the CIS deduction from the amount you actually pay, in the same way as for a partial payment, and updates the deduction on the bill. See *CIS: Deduction Calculation* for an example.

**Attention:** If you select a document with the *Debit Adj.*, *Prepayment*, or *Refund* type for a CIS subcontractor, the system displays a warning that the transaction will not be included in the CIS return and is processed outside CIS.

## Releasing a Payment After a Rate Change

The CIS deduction is finalized for a payment when you release it. If the subcontractor's withholding tax ID or effective rate differs between the bill date and the payment date, the system does not recalculate the deduction automatically; it stops the release with a validation error. Remove and re-enter the payment application so the system recalculates the deduction at the current rate, and then release the payment. Re-entering the application also updates the tax ID, rate, taxable amount, tax amount, and the **Tax Total** box on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for the bill.

If you release the payment as part of a batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, the system runs the same validation on every payment in the batch and stops the release of the whole batch if any payment is affected. Each affected payment is highlighted in the table with an error indicator; when you point at or select the payment, the system displays the validation message. To resolve the error, remove the affected payments from the batch, which changes their status from *Printed* to *Pending Print*. Then open each payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, remove and re-enter the application, and reprocess the payment. When all the affected payments have been reprocessed, release the batch again.

**Parent topic:**[Construction Industry Scheme \(CIS\) for Subcontractor Payments](../UserGuide/Finance_AP_CIS_for_Subcontractors_Mapref.md)

