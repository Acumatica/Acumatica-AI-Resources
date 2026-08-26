# Configuring Vendor Discounts {#_a825769f-5377-42e2-8b50-7d21128dcfd8 .concept}

In Acumatica ERP, you can configure and update vendor discounts based on information you have received from each vendor. When you have information on hand about vendor discounts, you can plan your orders more carefully—for instance, by ordering higher volumes less frequently if the vendor offers tiered discounts, by ordering earlier to get promotional discounts, or by adding specific items to orders \(instead of placing a separate order for those items\) to get a significant group discount.

If the *Vendor Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure discounts for each vendor. If the *Inventory and Order Management* group of features is not enabled on this form, the system automatically applies the best discounts to a bill when the document is being saved. If the *Inventory and Order Management* group of features is enabled on this form, the system also applies discounts to purchase orders.

**Attention:** Cash discounts, which vendors use to encourage your company to pay sooner, are covered in [Setup of Credit Terms](AR__con_Credit_Terms.md).

## Discount Configuration { .section}

In Acumatica ERP, you do the following to configure vendor discounts:

1.  You design *discount codes* by using the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form, where for each discount code, you specify the type of the discount and the type of conditions for this discount to be applied. For details, see [Vendor Discount Codes](Prices_Vendor_Discounts_Discount_Codes.md).
2.  You create *discount sequences* for each discount code by using the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form. A discount sequence defines the particular discount percent or fixed amount; the sequence also defines the particular conditions of application. For more information, see [Vendor Discount Sequences](Prices_Vendor_Discounts_Discount_Sequences.md).

## Vendor Discounts and Special Prices { .section}

As an alternative to discounts, vendors can offer your organization special prices, which you can enter and maintain on the [Vendor Prices](AP_20_20_00.md) \(AP202000\) or the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) forms. In this case, you do not need to configure vendor discounts.

-   **[Vendor Discount Codes](../UserGuide/Prices_Vendor_Discounts_Discount_Codes.md)**  

-   **[Vendor Discount Sequences](../UserGuide/Prices_Vendor_Discounts_Discount_Sequences.md)**  

-   **[Discount Application in Purchase Documents](../UserGuide/Prices_Vendor_Discounts_Application_in_Purchase_Documents.md)**  

-   **[Vendor Discount Types](../UserGuide/Prices_Vendor_Discounts_Discount_Types.md)**  

-   **[Application of Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Application_of_Vendor_Discounts.md)**  

-   **[Calculation of Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Calculation_of_Vendor_Discounts.md)**  


