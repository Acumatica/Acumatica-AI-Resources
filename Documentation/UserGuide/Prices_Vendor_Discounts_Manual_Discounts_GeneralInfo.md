# Manual Vendor Discounts: General Information {#_a9ee6ca4-097c-407a-8874-b1cacec14411 .concept}

When a user saves a document \(that is, a sales order or invoice\), discounts of all levels are applied to the document automatically, except for the discounts for which the **Manual** check box is selected on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.

Manual discounts in Acumatica ERP can be of two types. The first type is non-configurable discounts, that is, the discounts that are applied by users directly by specifying a discount percentage or amount at the time of creating a document. The second type is configurable discounts. These discounts are set up beforehand and are applied manually by the user by specifying the discount code of this discount.

## Learning Objectives { .section}

In this section, you will learn:

-   How to manually apply vendor discounts that have not been configured in the system
-   How to configure vendor discounts to be later manually applied to documents

## Applicable Scenarios { .section}

Manual vendor discounts can be applied to AP bills and purchase orders. If the *Vendor Discounts* feature is not enabled in the system, a non-configurable manual discount can be applied at a document level and at a line level.

If the *Vendor Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, manual discounts can be applied at line, group, and document levels.

Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Application of Non-Configurable Manual Discounts { .section}

Customer discounts that have not been previously defined in the system can be applied to a document at the following levels:

-   *Line-Level Discounts*. You apply manual line-level discounts to a document on the **Details** tab of the appropriate form by entering the appropriate percent in the **Discount Percent** column or the appropriate amount in the **Discount Amount** column \(note that the **Manual Discount** check box is selected by the system automatically\).
-   *Group-Level Discounts* and *Document-Level Discounts*. You apply manual group-level and document-level discounts on the **Discounts** tab of the appropriate form by typing the appropriate percent in the **Discount Percent** or amount in the **Discount Amt.** column \(note that the **Manual Discount** check box is selected by the system automatically\).

**Note:** If the *Vendor Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can enter a manual document discount for the entire document manually in the Summary area of an appropriate form, in the **Document Discounts** box.

When a discount is specified as a percentage, its amount value is calculated automatically. The opposite is also true: When a discount is specified as an amount, the system automatically calculates its percent value.

## Application of Configurable Manual Discounts { .section}

Before a user can apply a configurable manual vendor discount to a document, it must first be defined in the system—that is, a discount code and discount sequence must be configured on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) and [Vendor Discounts](AP_20_50_00.md) \(AP205000\) forms, respectively. For more information on discount codes and discount sequences for vendor discounts, see [Vendor Discount Codes](Prices_Vendor_Discounts_Discount_Codes.md) and [Vendor Discount Sequences](Prices_Vendor_Discounts_Discount_Sequences.md).

If a discount code is configured on the [Vendor Discount Codes](AP_20_40_00.md) form with the **Manual** check box selected, the user can apply it manually to a document as follows:

-   *Line-level discounts*. You apply a manual line-level discount on the **Details** tab of the appropriate form by specifying an existing discount code in the **Discount Code** column.
-   *Group-level discounts* and *document-level discounts*. You apply a manual group-level and document-level discounts on the **Discounts** tab of the appropriate form by specifying an existing discount code in the **Discount Code** column and the appropriate discount sequence for this code in the **Sequence ID** column.

## Application of External Discounts { .section}

In Acumatica ERP, you can apply to a document discounts that were created in external systems. For external discounts, you can create a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form or enter a discount and specify the code of the external discount manually on a document.

If you want to enter an external discount manually, you open the document to which you want to apply the discount on an appropriate entry form \(see the list below\), and in the **Discount Amount** or **Discount Percent** column of the **Discounts** tab, you enter the discount. For a discount line with this manually entered external discount, you can type the external discount code \(for informational use only\) in the **External Discount Code** column.

The system applies external discounts in the same way as it does manual document discounts; the system does not recalculate external discounts if there are changes to the document. You can specify manual external discounts for documents created on the following data entry forms:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)

**Parent topic:**[Manual Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Manual_Discounts_Mapref.md)

