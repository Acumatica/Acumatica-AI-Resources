# Customer Discounts: Discount Codes {#_6d414677-feb3-40f4-9022-b4c368b053ee .concept}

In Acumatica ERP, a customer discount is defined by the combination of settings specified for the following:

-   A discount code on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form. A discount code is a template that provides the following general information about the discount:
    -   Which level the discounts of this document type are applied to: a specific line, a group of lines, or the entire document
    -   Whether the discounts are applied automatically or manually
    -   Whether the discounts are applied unconditionally or based on a set of conditions
-   A discount sequence specified on the [Discounts](AR_20_95_00.md) \(AR209500\) form. The discount sequence specifies exactly how the discount is calculated, based on the amount or quantity of the line item or on the amount of the document.

In this topic, you will read about discount codes you create in Acumatica ERP.

## Line, Group, and Document Discounts { .section}

For a discount code that you create on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form, in the **Discount Type** column, you select the level at which this discount is applied, which is one of the following:

-   *Line*: The discount applies to a document line. A line-level discount may be based on the line amount or quantity, and it can be expressed as a percentage or a fixed amount.

    A line-level discount can be applied to the unit price of an item or the extended price of the item \(that is, the line amount\), depending on the option in the **Line Discount Basis** box on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

-   *Group*: This discount applies to multiple lines of the same document. A group-level discount may be based on the amount or quantity that is in the sum of multiple lines, and the discount can be expressed as a percentage, fixed amount, or specific quantity of free items.

    **Tip:** Because some group discounts may be free items, the system cannot determine which of the applicable group discounts is the best, so it applies all the group discounts that are applicable based on the discount rules.

-   *Document*: This discount applies to and is based on the document total, and it can be expressed as a percentage or as a fixed amount.

**Important:** Document and group discounts are not applicable to the following orders:

-   Transfer orders
-   Orders of an order type that has the *RMA Order* automation behavior and *No Update* selected in the **AR Document Type** box on the **Template** tab of the [Order Types](../Shared/../UserGuide/SO_20_10_00.md) \(SO201000\) form

## Automatic and Manual Discounts { .section}

For a discount code, you can specify if the system should apply this discount automatically or a user needs to apply the discount manually.

To mark the discount as manual, you select the **Manual** check box on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form in the row with the discount. You can use manual discounts, for example, for rebates or coupons. You can apply a manual discount to a document on one of the following forms:

-   [Invoices and Memos](AR_30_10_00.md) \(AR301000\)
-   [Cash Sales](AR_30_40_00.md) \(AR304000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)
-   [Invoices](SO_30_30_00.md) \(SO303000\)

You can view the details of the automatic or manual document-level and group-level discounts, that were applied to the document on the **Details** tab of the [Cash Sales](AR_30_40_00.md) form as well as on the **Discounts** tab of the [Sales Orders](SO_30_10_00.md), [Invoices and Memos](AR_30_10_00.md), and [Invoices](SO_30_30_00.md) forms.

For details, see [Manual Customer Discounts: Application of Manual Discounts](Prices_Customer_Discounts_Application_of_Manual_Discounts.md) and [Automatic Customer Discounts: Application of Automatic Discounts](Prices_Customer_Discounts_Application_of_Automatic_Discounts.md).

## Conditional and Unconditional Discounts { .section}

In the table of the [Discount Codes](AR_20_90_00.md) \(AR209000\) form \(**Applicable To** column\), for each discount code, you can specify whether the discount is applicable to an entity or multiple entities \(that is, the discount is conditional\) or it is applicable to any entity \(that is, the discount is unconditional\).

For a line-level or group-level discount, you can select one of the following options in this column to apply the discount to the corresponding entity or combination of entities:

-   *Customer*
-   *Item*
-   *Item Price Class*
-   *Customer and Item*
-   *Customer Price Class*
-   *Customer and Item Price Class*
-   *Customer Price Class and Item*
-   *Customer Price Class and Item Price Class*
-   *Warehouse*
-   *Warehouse and Item*
-   *Warehouse and Customer*
-   *Warehouse and Item Price Class*
-   *Warehouse and Customer Price Class*
-   *Branch*

You can instead select *Unconditional* in the **Applicable To** column, to create a discount code for an unconditional line or group discount.

For a document-level discount, you can select one of the following options in the **Applicable To** column of the [Discount Codes](AR_20_90_00.md) form to apply the discount to the corresponding entity or combination of entities:

-   *Customer*
-   *Customer and Branch*
-   *Customer Price Class*
-   *Customer Price Class and Branch*

In this case, too, you can select *Unconditional* in the **Applicable To** column, to create a discount code for an unconditional document discount.

**Attention:**

-   The *Warehouse*, *Warehouse and Item*, *Warehouse and Customer*, *Warehouse and Item Price Class*, and *Warehouse and Customer Price Class* options are available if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The *Branch* option is available if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

After defining the discount codes on the [Discount Codes](AR_20_90_00.md) form, you create discount sequences on the [Discounts](AR_20_95_00.md) \(AR209500\) form and specify the values for entities \(that is, select a particular records to which the discounts will be applied\). For more information, see [Customer Discounts: Discount Sequences](Discount_Sequences_Prices_and_Discounts.md).

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

