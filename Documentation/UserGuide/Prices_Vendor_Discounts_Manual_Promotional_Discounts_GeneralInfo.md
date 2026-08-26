# Promotional Vendor Discounts: General Information {#_6e5eb4de-2b33-4923-967d-bd9a3f0d2fec .concept}

Unlike regular discounts, promotional discounts are temporary. If some of the vendors you frequently buy from vendors that provide discounts valid only for a limited time.

## Learning Objectives { .section}

In this section, you will learn:

-   How to configure promotional vendor discounts in Acumatica ERP
-   How manual promotional vendor discounts are applied in documents

## Applicable Scenarios { .section}

To configure discounts for vendors, the *Vendor Discounts* feature must be enabled on the Enable/Disable Features \(CS100000\) form.

You can configure vendor discounts that can be manually applied to various types of documents, including AP bills and purchase orders. Applying discounts to purchase orders is possible only if the *Inventory and Order Management* group of features and the *Inventory* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Configuration of Promotional Discounts { .section}

A promotional discount sequence is effective over a limited time, so this sequence should have an effective \(start\) date and an expiration date. After the expiration date, the promotional discount is no longer applicable.

Promotional discounts are configured in a similar way to regular discounts. That is, you first configure a discount code on the [Vendor Discount Codes](AP_20_40_00.md) form and then set up a discount sequence for the code on the [Vendor Discounts](AP_20_50_00.md) form. To indicate that a discount is promotional and should only be effective for a limited time, you select the **Promotional** check box. When the check box is selected, another required box, **Expiration Date**, appears on the form. You must specify the expiration \(end\) date for the promotional discount to save it.

Promotional discounts can be configured to be applied either manually or automatically. To indicate that a discount should be applied to a document manually by the user, when configuring a discount code on the [Vendor Discount Codes](AP_20_40_00.md) form, you select the check box in the **Manual** column.

Unlike regular discounts, for which you first specify pending values on the **Discount Breakpoints** tab of the [Vendor Discounts](AP_20_50_00.md) form and then updating the sequence \(either by using the **Update Discounts** button on the form toolbar or by using the [Update Vendor Discounts](AP_50_25_00.md) form\) to make it active, promotional discounts do not need to be updated to become effective.

**Parent topic:**[Promotional Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Manual_Promotional_Discounts_Mapref.md)

