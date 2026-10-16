# CIS: Deduction Calculation

When you record a bill and release a payment for a CIS subcontractor, Acumatica ERP calculates the CIS deduction for you. The amount depends on how much of the payment is for labor, the subcontractor's deduction rate, and any discounts on the bill.

## What the Deduction Is Based On

Each line of a bill carries a tax category, and every tax category has a CIS type of *Labour*, *Material*, or *None*. The deduction applies to labor only: the system withholds nothing from material lines, and it excludes lines with a CIS type of *None* from the CIS calculation entirely. For where the CIS type is defined, see [CIS: Configuration](Finance_AP_CIS_Configuration.md).

The rate comes from the CIS withholding tax assigned to the subcontractor on the **CIS Details** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form: 0% for gross-payment status, 20% for the standard rate, and 30% for the higher rate. When a bill has no discount and you pay it in full, the deduction is straightforward:

```
CIS deduction = amount liable to deduction (total labor) × subcontractor's rate
```

The CIS withholding tax is a document-level tax. The system sums the amounts liable to deduction for the whole bill and applies the rate to that total; it does not calculate a separate deduction for each line.

**Attention:** The cost of materials is never subject to deduction. Traveling expenses, fuel, and subsistence paid to the subcontractor are part of the amount liable to deduction, not materials.

## How Discounts Affect the Deduction

How a discount reduces the deduction depends on how the discount is applied to the bill.

-   A group discount applied at the line level is already reflected in that line's amount, so the system uses the discounted line amount as is. No further allocation is needed.
-   A group discount applied to the whole bill, or a document discount \(which always applies to the whole bill\), is allocated across the lines in proportion to each line's share of the total bill amount:

    ```
    Discounted labor amount = labor amount − [discount × (labor amount ÷ total bill amount)]
    ```

    ```
    Discounted material amount = material amount − [discount × (material amount ÷ total bill amount)]
    ```

-   A cash discount does not reduce the taxable amount on the bill: on a CIS withholding tax, the **Cash Discount** setting is always *Does Not Affect Taxable Amount*. The system accounts for the discount when you apply the payment, because the amount you pay is smaller by the discount. See *How Partial Payments Are Handled*.

The amount liable to deduction uses the discounted labor amount, and the cost of materials uses the discounted material amount. The total payment is the sum of the two.

**Attention:** A group discount amount also appears in the **Document Discounts** box in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) form.

## How Partial Payments Are Handled

When a payment covers only part of a bill, the system prorates the deductible amounts by the share of the bill being paid. You can express the result in a single step:

```
CIS deduction = amount paid × (total labor ÷ total bill) × rate
```

In this formula, *total labor* and *total bill* are post-discount amounts.

A cash discount taken at payment time is handled the same way. The system prorates the labor and material amounts by the amount you actually pay, which is the bill amount less the discount, and updates the deduction on the bill to the recalculated amount. Because the discount settles the rest of the bill, no withholding balance remains on the bill even though the payment is less than the bill total.

The system reaches the same result in two steps:

1.  Determines the post-discount labor and material amounts for the whole bill
2.  Scales each amount by the payment's share of the bill total

Because CIS is reported on a payment basis, each partial payment contributes its own prorated labor to the return for the tax month in which you release it.

## Examples

The first two examples use a bill with one labor line, one material line, and a document discount of £500, for a subcontractor at the standard 20% rate.

**Example 1: The bill is paid in full \(payment of £1,000\)**

|Bill component|Amount|
|--------------|------|
|Line 1 \(labor\)|1,000|
|Line 2 \(material\)|500|
|Document discount|500|

Amount liable to deduction = 1,000 − \(1,000 ÷ 1,500 × 500\) = 666.67

Cost of materials = 500 − \(500 ÷ 1,500 × 500\) = 333.33

Total payment = \(1,000 + 500\) − 500 = 1,000

CIS deduction = 666.67 × 20% = 133.33

**Example 2: The same bill is partially paid \(payment of £650\)**

1.  Post-discount amounts for the whole bill:
    -   Amount liable to deduction = 666.67
    -   Cost of materials = 333.33
    -   Total = 1,000
2.  Prorate by the payment's share \(650 ÷ 1,000\):
    -   Amount liable to deduction = 666.67 ÷ 1,000 × 650 = 433.33
    -   Cost of materials = 333.33 ÷ 1,000 × 650 = 216.67
    -   Total payment = 433.33 + 216.67 = 650
    -   CIS deduction = 433.33 × 20% = 86.67

**Example 3: A cash discount is taken**

This example uses a different bill: £800 of labor and £200 of materials, with no document discount, for a subcontractor at the standard 20% rate. The bill total is £1000, and the deduction calculated on the bill is £160. The subcontractor is paid early, so a cash discount of £100 is taken and the payment is £900.

-   Amount liable to deduction = 800 ÷ 1,000 × 900 = 720
-   Cost of materials = 200 ÷ 1,000 × 900 = 180
-   Total payment = 720 + 180 = 900
-   CIS deduction = 720 × 20% = 144
-   Amount paid to the subcontractor = 900 − 144 = 756

The deduction on the bill is updated from £160 to £144, and no withholding balance remains on the bill.

## When a Subcontractor's Rate Changes

If the identifier of the CIS withholding tax or the effective rate of the CIS withholding tax differs between the bill date and the payment date, the system does not recalculate the deduction automatically when you release the payment. Instead, it stops the release with a validation error. You must remove and re-enter the payment application, and the system recalculates the deduction at the current rate. The same validation applies when you release the payment as part of a batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. For the release procedure, see [CIS: Document Processing](Finance_AP_CIS_Document_Processing.md).

**Parent topic:**[Construction Industry Scheme \(CIS\) for Subcontractor Payments](../UserGuide/Finance_AP_CIS_for_Subcontractors_Mapref.md)

