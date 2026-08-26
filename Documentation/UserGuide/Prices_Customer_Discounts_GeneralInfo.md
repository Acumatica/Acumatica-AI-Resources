# Customer Discounts: General Information {#_fcb8c6cc-1b39-4f5b-9742-ddf86a477710 .concept}

Acumatica ERP provides you with the ability to configure customer discounts to meet the needs of your organization.

## Learning Objectives { .section}

You will learn how to configure customer discounts of different types in Acumatica ERP and how the system applies the discounts in AR invoices and sales orders.

## Applicable Scenarios { .section}

Customer discounts can be used as an effective tool of your organization’s overall marketing strategy—for example, to stimulate sales of new products, promote new branches of the organization, and accelerate the sales of items that are becoming obsolete. In Acumatica ERP, your company can configure various types of customer discounts: unconditional or condition-based, simple or tiered, and automatically or manually applied .

## Discount Configuration { .section}

In Acumatica ERP, any configurable customer discount is defined by a combination of the settings specified for a discount code and a discount sequence. You configure these entities as follows:

-   You design *discount codes* by using the [Discount Codes](AR_20_90_00.md) \(AR209000\) form, where for each discount code, you specify the type of the discount \(automatic or manual\), the level on which the discount is applied \(a particular line, a group of lines, or the entire document\), and the type of conditions under which the discounts of the discount code are applied. For more information about discount codes, see [Customer Discounts: Discount Codes](Discount_Codes_Prices_and_Discounts.md).
-   You create *discount sequences* for each discount code by using the [Discounts](AR_20_95_00.md) \(AR209500\) form. A discount sequence defines the particular discount percent, fixed amount, or quantity of a free item; the sequence also defines the particular conditions of discount application. For more information about discount sequences, see [Customer Discounts: Discount Sequences](Discount_Sequences_Prices_and_Discounts.md).

**Attention:** The ability to configure customer discounts is available if the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## GL Accounts for Customer Discounts { .section}

Line discounts are not accounted for in a separate GL account. The discount amount is simply deducted from the amount to be paid by the customer, and the reduced amount is debited to the accounts receivable account specified in the **AR Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

Discounts applied to a group of lines or to a document as a whole are debited to a separate expense account specified that is for the customer in the **Discount Account** box on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

