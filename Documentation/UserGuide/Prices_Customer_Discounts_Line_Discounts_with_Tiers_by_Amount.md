# Customer Discounts: Calculation of Line Discounts with Tiers by Amounts {#_7d23ec12-4167-4b02-bfb7-ba37c484a2be .concept}

## Calculation of Line-Level Discounts for Tiers Defined by Amounts { .section}

The tiers for line-level discounts can be defined by amounts or by quantities. The method of calculation of line-level discounts depends on the option you select in the **Line Discount Basis** box on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. You can apply the discounts to the unit prices of items or the extended prices of items \(the line amounts without taxes\), and the selected option affects the discount calculation. Both methods are described in this section.

**Line Discounts Applied to Unit Prices**

If the system is configured to apply line discounts to the unit prices of items, for discounts with break points defined as amounts \(rather than quantities\), you should specify the break points to be compared to prices. In this case, the system calculates discounts as follows:

1.  The line item's price is compared to the first break point. If the item price is less than the first break point in the sequence, the discount equals $0, and no further comparison is performed.
2.  The item price is compared to the next break point. If the price is greater than or equal to this break point but less than the next break point \(or greater than the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount for this tier is deducted from the item's unit price, and the extended price is recalculated.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the unit price is calculated and deducted from the item's unit price.
3.  Comparison continues similarly, with Step 2 repeated until a discount is found or the last break point has been reached.

If the system is configured to apply line discounts to item prices and a sequence is divided by the quantity of the item, the line quantity of the item is compared to the quantities selected as break points, and the discount is calculated as follows:

-   If the discount is defined as a percentage, the specified percent is deducted from the item price, and then the discounted price is multiplied by the item quantity.
-   If the discount is defined as a fixed amount, the specified fixed amount is deducted from the item price and then the discounted price is multiplied by the item quantity.

**Example 4:** Suppose that a customer buys multiple items with prices of $95, $210, and $600. If a sequence for a line-level discount has tiers defined by amounts with the discounts expressed as percentages, the discount amount \(calculated as the percent defined for the appropriate tier\) of the item price is subtracted from the price. Suppose that the sequence is specified with the following break points:

-   $100: 5%
-   $200: 10%
-   $500: 20%

For a line with 10 units of the item priced at $95, the discount will be $0. For a line with 20 units of the item priced at $210, the discount will be $21 per unit with the discount for the line of $420. And for a line with one item priced at $600, the discount will be $120.

**Line Discounts Applied to Extended Prices**

If the system is configured to apply line discounts to the extended prices of items and the tiers are defined by line amounts, the system calculates discounts as follows:

1.  The line amount \(that is, the extended price of the item\) is compared to the first break point. If the amount is less than the first break point in the sequence, the discount equals $0, and no further comparison is performed.
2.  The line amount is compared to the next break point. If the amount is greater than or equal to this break point but less than the next break point \(or greater than the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount for this tier is deducted from the line amount. No further comparison is performed.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the line amount is calculated and deducted from the line amount. No further comparison is performed.
3.  Comparison continues similarly, with Step 2 repeated until a discount is found or the last break point has been reached.

**Example 3:** Suppose that a customer buys an item whose unit cost is $95. If the sequence for the line-level discount has tiers defined by amounts and the discounts are expressed as percentages, the discount amount \(calculated by using the percent defined for the appropriate tier\) of the item's extended price is subtracted from the extended price. Suppose that the sequence is specified with the following break points:

-   $1000: 5%
-   $2000: 10%
-   $5000: 20%

For a line with 10 items \(which means that the extended price is $950\), the discount is $0. For a line with 20 items \(for an extended price of $1900\), the discount is $95 \(5%\). For the line with 60 items \(and an extended price of $5700\), the discount is $1140 \(20%\).

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

