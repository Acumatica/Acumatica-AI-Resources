# Manual Customer Discounts: Application of Manual Discounts {#_a5005981-9590-42b9-a021-461d5a72250e .concept}

In this topic, you will read about application of manual discounts in Acumatica ERP. If your organization provides discounts that do not have formal conditions for automatic application \(that is, document-specific discounts\), you can enter line, group, and document discounts manually in each document on the following forms:

-   [Invoices and Memos](AR_30_10_00.md) \(AR301000\)
-   [Cash Sales](AR_30_40_00.md) \(AR304000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)
-   [Invoices](SO_30_30_00.md) \(SO303000\)

## Application of Manual Line Discounts { .section}

You can apply manual line discounts to a document on the **Details** tab of the document’s creation form as follows:

-   If the *Customer Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you type the appropriate percent or amount in the **Discount Percent** or **Discount Amount** column.
-   If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can do either of the following:
    -   Select an existing discount code in the **Discount Code** column.
    -   Type the appropriate percent or amount in the **Discount Percent** or **Discount Amount** column, and select the **Manual Discount** check box.

## Application of Manual Group Discounts { .section}

If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can apply a manual group discount to a document. To do this, on the **Discounts** tab, you select the appropriate discount code in the **Discount Code** column and then select the appropriate discount sequence for this code in the **Sequence ID** column.

If the *Customer Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, you cannot configure or apply group discounts.

## Application of Manual Document Discounts { .section}

You can apply manual document discounts on the appropriate form as follows:

-   If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can apply a discount on the **Discounts** tab in either of the following ways:
    -   To use an existing discount code, in the **Discount Code** column, you select the existing discount code, and in the **Sequence ID** column, you select the appropriate discount sequence for this code.
    -   To enter a document discount manually, you type the percent or amount in the **Discount Percent** or **Discount Amt.** column. The system will automatically select the **Manual Discount** check box.
-   If the *Customer Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can enter a manual document discount in the **Document Discounts** box in the Summary area of the appropriate form.

## Recalculation of Discounts after Updating Item Quantities { .section}

If you change the line quantities after adding manual discounts, manual discounts will be recalculated. They will not, however, be replaced by automatic discounts, even if the automatic discounts would result in a greater discount amount. Recalculation rules apply as follows:

-   *Line discounts*: Once you have applied a line discount to a line, its percentage value becomes fixed. If you update the quantity of the line item or its discountable amount, the discount amount will be recalculated automatically even if you initially specified the discount as a specific amount.
-   *Document discounts*: When you save the document to which you have applied a document discount, its amount value becomes fixed. If anything changes in the document lines, the discount amount will remain the same unless you manually change its value.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

