# Volume Vendor Discounts: General Information {#_57733e25-09aa-4708-91e8-36d4467dd112 .concept}

Vendors you purchase from can offer *simple* discounts, which are applicable to any amount or quantity, or *volume \(or tiered\)* discounts, which may apply based on the quantities of items or on the amounts in documents.

## Learning Objectives { .section}

In this section, you will learn:

-   How to configure volume vendor discounts based on the ordered quantities or amounts
-   How automatic volume vendor discounts are applied when you save new documents

## Applicable Scenarios { .section}

To configure discounts for vendors, the *Vendor Discounts* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can configure customer discounts that are automatically applied to lines of documents of various types, including AP bills and purchase orders. Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Tiered Discounts { .section}

In a sequence, you can configure a simple discount, which is applicable to any amount or quantity, or a tiered discount, for which you can specify different percents or fixed amounts based on the quantities of items or on the amounts. To configure tiers for a discount, you specify the break points that define the ranges of amounts or quantities for which different discount percentages, amounts, or quantities of free items are applicable.

On the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form, the following parameters can be used as a basis for break points for discounts applied at different levels:

-   For line- or group-level discounts, you can configure tiers based on the amounts or quantities.
-   For document-level discounts, tiers can only be based on the document amounts.

Below you can find examples of discount sequences. For these examples, assume that the appropriate discount codes have been defined.

**Example 1: A Simple Discount Sequence**

Suppose that Vendor A gives your organization a permanent discount of 10% per order. To set up this discount in Acumatica ERP, you create a discount sequence and on the **Discount Breakpoints** tab of the [Vendor Discounts](AP_20_50_00.md) form, you add a break point with the following values.

|Break Amount|Discount Percent|
|------------|----------------|
|0|10|

**Example 2: A Discount Sequence Based on Quantity**

Suppose that your organization buys computer equipment from Vendor B, and this vendor provides your organization with a discount for keyboards based on the ordered quantity. You create a discount sequence, and you add break points with the following settings on the **Discount Breakpoints** tab.

|Break Quantity|Discount Percent|
|:------------:|:--------------:|
|100|5|
|200|7|
|300|10|

**Example 3: A Discount Sequence Based on Amount**

Suppose that Vendor C provides your organization with a fixed-amount discount based on the document total; that is, it does not matter which goods or services you buy from this vendor. You create a discount sequence, and you add the break points with the following settings on the **Discount Breakpoints** tab.

|Break Amount|Discount Amount|
|:----------:|:-------------:|
|$1000|$10|
|$2000|$25|
|$3000|$40|

## Calculation of Document-Level Discounts with Tiers Defined by Amounts { .section}

For document-level discounts, which are unconditional, the discount tiers can be created only by break points defined as amounts, and the discount can be defined as a percentage of the document amount or as a fixed amount. When the system processes a purchase order or bill and finds a qualifying discount sequence, the discountable amount is compared to the break points in the discount sequence as follows:

1.  The document amount is compared to the first break point. If the document amount is less than the amount of the first break point in the sequence, the discount equals zero, and further comparison is not performed.
2.  The document amount is compared to the next break point. If the document amount is greater than or equal to the amount of this break point but less than the amount of the next break point \(or greater than the amount of the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount specified as a discount for this tier is deducted from the document amount.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the document amount is calculated and deducted from the document amount.
3.  Comparison continues similarly, with Step 2 repeated until a discount is found or the last break point is checked.

The examples below illustrate the way these document-level discounts are calculated.

**Example 1**: If a sequence for a document-level discount has tiers defined by amounts and the discounts are expressed as percentages, the discount amount corresponding to the appropriate tier is subtracted from the document total. Suppose that the sequence is specified with the following break points:

-   $1000: 5%
-   $2000: 7%
-   $5000: 10%

For a document with a $900 total, the discount is $0. For a document with a $2500 total, the discount is $175 \(7%\), and for a document with a total of $9000, the discount is $900 \(10%\).

**Example 2**: Suppose that a sequence for a document-level discount has tiers defined by amounts, with the discounts expressed as fixed amounts that are subtracted from the total amount of the document. Further suppose that the sequence is specified with the following break points:

-   $1000: $100
-   $2000: $225
-   $3000: $350

For purchase orders with amounts less than $1000, your company receives a discount of $0. The discount for an order with a total between $1000 and $1999.99 is $100, the discount on an order between $2000 and $2999.99 is $225, and the discount for an order of $3000 or more is $350.

## Calculation of Line-Level Discounts for Tiers Defined by Amounts { .section}

The tiers for line-level discounts can be defined by amounts or by quantities. The method of calculation of line-level discounts depends on whether the discount should be applied to the unit prices of items or to the extended prices of the items. Based on the information received from each vendor, you select the appropriate option in the **Apply Line-Discounts to** box on the **Calculation Settings** tab of the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form for this vendor.

**Line Discounts Applied to Unit Prices**

The system calculates line discounts applied to unit prices as follows:

1.  The line item's price is compared to the first break point. If the item price is less than the first break point in the sequence, the discount equals $0, and further comparison is not performed.
2.  The item price is compared to the next break point. If the price is greater than or equal to this break point but less than the next break point \(or greater than the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount specified as a discount for this tier is deducted from the item price, and the extended price is recalculated.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the item price is calculated and deducted from the item price.
3.  Comparison continues similarly, with Step 2 repeated until a discount is found or the last break point has been reached.

For the particular vendor, if the discounts should be applied to item prices and a sequence is broken down by the quantity of the item, the line quantity of the item is compared to the quantities selected as break points, and the discount is calculated as follows:

-   If the discount is defined as a percentage, the specified percent is deducted from the item price, and then the discounted price is multiplied by the line quantity.
-   If the discount is defined as a fixed amount, the specified fixed amount is deducted from the item price and then the discounted price is multiplied by the line quantity.

**Example 4**: Your company buys different items with the prices $95, $210, and $600 from the same vendor in the same purchase order. If a sequence for a line-level discount has tiers defined by amounts with the discounts expressed as percentages, the discount amount is calculated as the percent \(defined for the appropriate tier\) of the item price and is subtracted from the price. Suppose that the sequence is specified with the following break points:

-   $100: 5%
-   $200: 10%
-   $500: 20%

For a line with 10 units of the item priced at $95, the discount will be $0. For a line with 20 units of the item priced at $210, the discount will be $21.0 \(10%\) per unit with a discount for the line of $420. And for a line with one $600 item, the discount will be $120.

**Line Discounts Applied to Extended Prices**

If the system is configured to apply line discounts to the extended prices of items and the tiers are defined by line amounts, the system calculates discounts as follows:

1.  The line amount \(that is, the extended price of the item\) is compared to the first break point. If the amount is less than the first break point in the sequence, the discount equals $0, and no further comparison is performed.
2.  The line amount is compared to the next break point. If the amount is greater than or equal to this break point but less than the next break point \(or greater than the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount for this tier is deducted from the line amount. No further comparison is performed.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the line amount is calculated and deducted from the line amount. No further comparison is performed.
3.  Comparison continues similarly, with Step 2 repeated until a discount is calculated or the last break point has been checked.

**Example 3**: Your company buys an item for $95. If a sequence for a line-level discount has tiers defined by amounts and the discounts are expressed as percentages, the discount amount \(calculated by using the percent defined for the appropriate tier\) of the extended price of the item is subtracted from the extended price. Suppose that the sequence is specified with the following break points:

-   $1000: 5%
-   $2000: 10%
-   $5000: 20%

For a line with 10 items \(which means that the extended price is $950\), the discount is $0. For a line with 30 items \(for an extended price of $2850\), the discount is $285 \(10%\). And for a line with a total of 60 items \(the extended price is $5700\), the discount is $1140 \(20%\).

**Parent topic:**[Volume Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Volume_Discounts_Mapref.md)

