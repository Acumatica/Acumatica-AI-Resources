# Customer Discounts: Calculation of Document Discounts with Tiers by Amounts {#_955a6761-efe1-4d74-bef6-62a96f2d7db5 .concept}

For document-level discounts, the discount tiers can be created only by break points defined as amounts, and the discount can be defined as a fixed amount or a percentage of the document amount. When the system processes a sales order or an invoice and finds a qualifying discount \(based on the application conditions\), the system compares the discountable amount to the break points in the discount sequence as follows:

1.  The document amount is compared to the first break point. If the document amount is less than the amount of the first break point in the sequence, the discount equals zero, and no further comparison is performed.
2.  The document amount is compared to the next break point. If the document amount is greater than or equal to the amount of this break point but less than the amount of the next break point \(or greater than the amount of the last break point\), the system calculates the discount as follows:
    -   If the discount is a fixed amount, the fixed amount for this tier is deducted from the document amount.
    -   If the discount is a percentage, the percent \(specified for this tier\) of the document amount is calculated and deducted from the document amount.
    -   If the discount is a quantity of a free item, the quantity defined for this tier is added to the order or invoice with no additional cost.
3.  Comparison continues similarly, with Step 2 repeated until a discount is found or the last break point is reached.

The examples below illustrate the way these document-level discounts are calculated.

**Example 1**: If a sequence for a document-level discount has tiers defined by amounts and the discounts are expressed as percentages, the discount amount corresponding to the appropriate tier is subtracted from the document total. Suppose that the sequence is specified with the following break points:

-   $1000: 5%
-   $2000: 7%
-   $5000: 10%

For a document with a $900 total, the discount is $0. For a document with a $2500 total, the discount is $175 \(7%\), and for a document with a total of $9000, the discount is $900 \(10%\).

**Example 2**: Suppose that a sequence for a document-level discount is broken down by amount, with the discounts expressed as fixed amounts that are subtracted from the total amount of the document. Further suppose that the sequence is specified with the following break points:

-   $1000: $100
-   $2000: $225
-   $3000: $350

Customers receive a discount of $0 for orders with amounts less than $1000. The discount for an order with a total between $1000 and $1999.99 is $100, the discount for an order between $2000 and $2999.99 is $225, and the discount for an order of $3000 or more is $350.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

