# Customer Discounts: Calculation of Prorated Discounts {#_80d08a11-b08e-4a09-a1fe-59750d0664f9 .concept}

You can prorate discount sequences if the **Prorate Discounts** check box is selected on the [Discounts](AR_20_95_00.md) \(AR209500\) form. For prorated discount sequences, the system prevents customers from attempts to split a sales order to get greater discount amount or a larger quantity of free items. The functionality of prorated discounts is applicable to discount sequences with discountable quantities or discountable amounts, such as when you want to give your customers a discount of $5 for every 10 units purchased.

For example, to determine the discount for a discountable quantity larger than one break point but less than the next break point, the system treats the discountable quantity as a combination of break point quantities and uses the largest possible break point quantities. It then calculates the discount according to the break points used.

**Example 5:** Consider a prorated group-level discount with tiers based on quantity. The sequence defines the discount with the following tiers:

-   10 units: 1 unit of the free item
-   20 units: 2 units of the free item
-   40 units: 3 units of the free item

A sales order for 50 units would yield 4 units of the free item, computed as 3 \(for 40 units\) plus 1 \(for 10 units\). For an order of 70 units, the discount is calculated as 6 units of the free item: 3 as the discount for 40 units, plus 2 as the discount for 20 units, plus 1 as the discount for 10 units.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

