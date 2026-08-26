# Automatic Group Vendor Discounts: General Information {#_84107c45-6ac0-4db4-ae6b-873c94b8c05a .concept}

Vendor discounts are an effective tool that allows you to take advantage of special offerings provided by the vendors you work with. If your vendors offer discounts that are applicable to specific items, you can set up such discounts in Acumatica ERP so that they are automatically applied in AP bills and purchase orders. An automatic group discount, as the name suggests, is applied automatically to a specific document line or a group of lines that match the criteria defined for this discount.

## Learning Objectives { .section}

In this section, you will learn:

-   How to configure automatic group-level vendor discounts
-   How automatic group-level vendor discounts are applied in documents

## Applicable Scenarios { .section}

To configure discounts for vendors, the *Vendor Discounts* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can configure vendor discounts that can be manually applied to multiple lines of documents of various types, including AP bills and purchase orders. Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Application of Automatic Discounts { .section}

The system always applies automatic discounts in the following order when a user saves a document:

1.  Line-level discounts \(which are applied to each line of the document\): For each document line, the system checks the applicable line-level discounts and applies the one with the largest discount amount.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds the applicable group-level discounts and applies all of them.
3.  Document-level discounts: The system finds and applies the applicable document-level discount with the largest discount amount for a document. The system can apply only one \(the best\) document-level discount to the document.

For each group-level discount that you configure on the [Vendor Discount Codes](AP_20_40_00.md) form, you can select or clear the **Skip Document Discount** check box, which can affect the calculation and application of discounts. If this check box is selected, the system does not apply document-level discounts to a document when this group discount is applied to the document. For example, suppose that the following discounts have been defined: a group-level discount that is applicable to multiple lines and significantly reduces the document total, and a document-level discount. You select this check box if you do not want to apply the document-level discount to the documents to which this group-level discount has been applied.

**Parent topic:**[Automatic Group Vendor Discounts](../UserGuide/Vendor_Discount_Auto_Group_Mapref.md)

