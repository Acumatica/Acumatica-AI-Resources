# Level 3 Data Validation and Adjustment

To help you comply with Visa's Commercial Enhanced Data Program \(CEDP\), Acumatica ERP validates and adjusts level 3 data before transmitting it to the processing center.

The changes described below apply to Visa payments. Although most also apply to Mastercard, it does not enforce the strict CEDP validation requirements, so the adjustments will not affect the data quality for those transactions.

## Pre-Transmission Validation

Before processing pending or failed items on the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form, Acumatica ERP checks for conditions that would cause the submission to fail CEDP verification. If an issue is found, you’ll see a clear, actionable description in the **Error Description** column for the affected record.

**Tip:** The **Error Description** column of the table is hidden by default. You can add it to the table by clicking the **Column Configuration** button.

The system checks for the following:

-   **Missing commodity codes**: If a stock or non-stock item in a document has no commodity code, the error message lists the inventory IDs that need to be updated. You can add the missing codes to the item records and then resend the document.
-   **Missing inventory IDs**: If one or more lines in a document have no inventory ID selected, the error message identifies the document and prompts you to either assign inventory IDs to all lines or specify a system item to be used as a fallback on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form. This system item must be defined on the [Non-Stock Items](IN_20_20_00.md) \(IN202500\) form. When a document line is missing an inventory item, the system item is then inserted so that its settings can be used.
-   **Unapplied payment balance**: If a payment has an unapplied balance, the error message prompts you to apply the full payment amount to documents.

    Only VISA payments with an unapplied balance will display this error message. For other payment types, the applied amount will be increased proportionally so that the total applied amount fully matches the payment amount.


## Automatic Corrections to Line Data

You don't need to manually correct most data issues—Acumatica ERP handles these adjustments automatically before transmitting your level 3 data. The system applies a series of corrections to the level 3 data before transmission to ensure that the data satisfies the CEDP verification formula, which is shown below.

```
payment_amount = Σ(quantity × unit_cost − discount) + tax + shipping
```

The system applies the corrections in a defined order because some depend on the results of earlier corrections. The following corrections are made:

1.  **Extended price mismatch**: If a line's extended price does not equal `quantity × unit price`, Acumatica ERP recalculates the unit cost from the extended price before transmission. If the quantity is *0*, it is set to *1*, and the unit cost is set to the extended price.
2.  **Inclusive tax**: For lines with inclusive taxes, the inclusive tax amount is subtracted from the line's extended price before level 3 totals are reconciled. The unit cost is then recalculated from the adjusted line amount. This keeps the tax term in the CEDP formula from being double-counted.
3.  **Negative lines**: Lines with a negative net amount—such as returned items in a replacement sales order—are not transmitted directly, because the processing center does not accept negative values. Instead, the total of all negative-net lines is distributed as an additional discount across the remaining positive lines, proportional to each line's available discount capacity \(extended price minus existing discount\).
4.  **Document and group discounts**: Document-level discounts are distributed across eligible positive lines based on each line’s remaining discount capacity. This prevents the level 3 total from exceeding the payment amount.
5.  **Negative discounts**: If a line discount or document-level discount has a negative value, the value is converted into an increase to the affected line's unit cost so that the transmitted data contains no negative discount values.
6.  **Partial payment application**: If a payment covers less than the full document amount, all quantities, discounts, tax, and shipping in the level 3 data are scaled by the ratio of the applied amount to the document total.
7.  **Cash discounts**: The portion of a cash discount allocated to a payment is applied to line discounts in the same way as a document-level discount is. When combined with the partial application, the cash discount amount is included in the numerator when calculating the application proportion.
8.  **Rounding errors**: After all other corrections are applied, Acumatica ERP calculates the difference between the payment amount and the total produced by the CEDP formula and adjusts the unit cost or discount of a line to compensate for the difference. This step ensures that rounding from multiplication and division across many lines doesn’t cause the submitted total to fail verification.

**Parent topic:**[Level 3 Data Transmission During Card Payments](../UserGuide/AR__con_Level3_Data_Transmission.md)

