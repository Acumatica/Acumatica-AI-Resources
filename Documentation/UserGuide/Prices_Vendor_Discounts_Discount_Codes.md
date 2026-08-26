# Vendor Discount Codes {#_efd1b97d-b74c-4d95-8246-a5956a102695 .concept}

In Acumatica ERP, any customer discount is defined by a combination of parameters specified for a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and for a discount sequence specified on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

When you create a discount code on the *Vendor Discount Codes* form, you specify the following:

-   The level on which the discounts of this document type are applied: a specific line, group of lines or the entire document
-   Whether the discounts are applied automatically or manually
-   Whether the discounts are applied unconditionally or based on a set of conditions

## Line, Group, and Document Discounts { .section}

For a discount code that you create on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form, you select one of the following levels at which this discount is applied:

-   *Line*: This discount applies to a document line. A line-level discount may be based on the line amount or quantity of the line, and the discount can be expressed as a percentage or a fixed amount. A line-level discount can be applied to the unit cost of an item or the extended cost of the item \(line amount\), depending on the option selected in the **Apply Line Discounts To** box on the **Calculation Settings** tab of this form.
-   *Group*: This discount applies to multiple lines of the same document. A group-level discount may be based on the total amount or quantity that is in these lines, and the discount can be expressed as a percentage or a fixed amount.
-   *Document*: This discount applies to the document total. A document-level discount is based on the document total, and the discount can be expressed as a percentage or a fixed amount.

## Automatic and Manual Discounts { .section}

For a discount code, you can specify if the system should apply this discount automatically or a user will apply the discount manually. To mark the discount as manual, you select the **Manual** check box on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form. You can use manual discounts, for example, for rebates or coupons.

The system applies automatic discounts when a user saves a document. You can apply a manual discount to a particular document by using the appropriate form, which can be one of the following:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)

For details, see [Application of Vendor Discounts](Prices_Vendor_Discounts_Application_of_Vendor_Discounts.md).

On the **Discounts** tab of the [Bills and Adjustments](AP_30_10_00.md) form or **Discounts** tab of the [Purchase Orders](PO_30_10_00.md) form, you can view the details of the document-level and group-level discounts, automatic or manual, that were applied to the document.

## Conditional and Unconditional Discounts { .section}

On the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form, for each discount code, you can specify whether a line-level or group-level discount is applicable to a specified entity or multiple specified entities \(that is, the discount is conditional\) or it is applicable to any entity \(that is, the discount is unconditional\). Document-level discounts are always unconditional and apply to the document total.

You can apply the line-level and group-level discounts to one of the following entity types or combinations of entity types:

-   Item
-   Item Price Class
-   Location
-   Item and Location

**Note:** The *Location* and *Item and Location* options are available if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

After you have defined the discount codes, when you create discount sequences on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form, you can specify particular values for entities. For example, if a vendor provides a significant discount on a new product to promote it, you can create a line-level discount that will be applied to this particular product.

**Parent topic:**[Configuring Vendor Discounts](../UserGuide/Prices_Vendor_Discounts.md)

