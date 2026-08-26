# Automatic Line Vendor Discounts: General Information {#_8402b34a-8edf-4141-b014-5d2ca5503724 .concept}

Vendor discounts are an effective tool that allows you to take advantage of special offerings provided by the vendors you work with. If your vendors offer discounts that are applicable to specific items, you can set up such discounts in Acumatica ERP so that they are automatically applied in AP bills and purchase orders.

## Learning Objectives { .section}

In this section, you will learn:

-   How to configure automatic line-level vendor discounts in Acumatica ERP
-   How automatic line-level vendor discounts are applied in documents

## Applicable Scenarios { .section}

To configure discounts for vendors, the *Vendor Discounts* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can configure vendor discounts that are automatically applied to lines of documents of various types, including AP bills and purchase orders. Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Application of Automatic Discounts { .section}

The system always applies automatic discounts in the following order when a user saves a document:

1.  Line-level discounts \(which are applied to each line of the document\): For each document line, the system checks the applicable line-level discounts and applies the one with the largest discount amount.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds the applicable group-level discounts and applies all of them.
3.  Document-level discounts: The system finds and applies the applicable document-level discount with the largest discount amount for a document. The system can apply only one \(the best\) document-level discount to the document.

For each line-level discount that you configure on the [Vendor Discount Codes](AP_20_40_00.md) form, you can select or clear the **Exclude from Discountable Amount** check box, which can affect the calculation and application of discounts. If this check box is selected, the discountable amount of the line-level discount is excluded from the discountable amount for higher-level \(group or document\) discounts. For example, suppose that your vendor provides a line-level clearance discount of 75% and a document-level discount of 5% for documents with a total of more than $2000. You select this check box if the vendor does not provide an additional document-level discount of 5% to the already-discounted line amounts.

**Parent topic:**[Automatic Line Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Line_Discounts_Mapref.md)

