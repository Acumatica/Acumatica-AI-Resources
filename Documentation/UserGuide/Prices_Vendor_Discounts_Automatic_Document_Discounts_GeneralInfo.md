# Automatic Document Vendor Discounts: General Information {#_1977e09f-cad5-4973-a590-89df7f5cea23 .concept}

Vendor discounts are an effective tool that allows you to take advantage of special offerings provided by the vendors you work with. If your vendors offer discounts that are applicable to specific items, you can set up such discounts in Acumatica ERP so that they are automatically applied in AP bills and purchase orders. An automatic document discount, as the name suggests, is applied automatically to an entire document.

## Learning Objectives { .section}

In this section, you will learn:

-   How to configure automatic document-level vendor discounts
-   How automatic document-level vendor discounts are applied to documents

## Applicable Scenarios { .section}

To configure discounts for vendors, the *Vendor Discounts* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can configure customer discounts that are automatically applied to lines of documents of various types, including AP bills and purchase orders. Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Other Configuration Settings { .section}

Make sure that the following settings are configured in the system:

The vendors for which you plan to define discounts in Acumatica ERP have been configured on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

For item-specific discounts, the non-stock and stock items for which you plan to define discounts have been configured on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and [Stock Items](IN_20_25_00.md) \(IN202500\) form, respectively.

## Application of Automatic Discounts { .section}

The system always applies automatic discounts in the following order when a user saves a document:

1.  Line-level discounts \(which are applied to each line of the document\): For each document line, the system checks the applicable line-level discounts and applies the one with the largest discount amount.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds the applicable group-level discounts and applies all of them.
3.  Document-level discounts: The system finds and applies the applicable document-level discount with the largest discount amount for a document. The system can apply only one \(the best\) document-level discount to the document.

**Parent topic:**[Automatic Document Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Document_Discounts_Mapref.md)

