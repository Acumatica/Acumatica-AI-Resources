# Vendor Discount Sequences {#_41f48583-2053-4753-931f-f78c51738bc2 .concept}

Once you have configured a discount code for your vendor discount, you proceed to setting up specific discount sequences for this code on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form, that is, to specifying particular values for entities and items to which the discounts will be applied. For each discount code, multiple sequences can be configured.

In Acumatica ERP, the settings you can specify for discount sequences include the discount percent, the discount amount, and the list of entity values to which the discount is applied. Discount sequences can define simple discounts \(which are applicable to any amount or quantity\) or tiered discounts \(for which you can specify different percents or fixed amounts based on the quantities of items or on the amounts\).

In this section, you will find information about discount sequences for vendor discounts in Acumatica ERP.

## Discount Sequence Settings { .section}

Discount sequences are defined on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form. Each discount sequence is related to a discount code and inherits its settings. Multiple discount sequences can be defined for a single discount code, that is why each sequence must have a unique identifier. If auto-numbering is enabled for the discount code, when you create a new sequence for this discount code, the system assigns its sequence ID automatically. By default, the discount code is used as a prefix for generating sequence IDs. If auto-numbering is not configured for the discount code, you must enter an identifier for each sequence manually.

For each discount sequence, you specify the following:

-   Whether the discount is regular or promotional. If the discount is promotional, it is only effective during the date range that you specify. When you mark a discount as promotional, you must specify the start and end dates of the period during which it is effective. Regular discounts—that is, all other discounts that are not marked as promotional—have the start date but do not have an expiration date.
-   How the discount is expressed: as a percentage, as an amount, or as a specific quantity of a free item.
-   What are the particular entities \(such as items, customers, or warehouses\) to which the discount can be applied. The applicable entity type or combination of entity types is defined by the discount code, and tabs that apply to the entity type or types specified for the discount code appear on the [Vendor Discounts](AP_20_50_00.md) form. For instance, if the discount code was defined for discounts to be applied to items, this form will have the **Items** tab, which you can use to list the particular items to which the sequence is applicable.
-   How the discount is tiered \(if applicable\): by amount \(for discount codes of all types\) or by quantity \(for only discount codes of the *Line* and *Group* types\).
-   What is the effective \(start\) date when the sequence can be applied if the discount is promotional.

## Updating Discount Sequences { .section}

A discount sequence can define a *regular \(updatable\)* discount or a *promotional* discount.

A promotional discount sequence is effective over a limited time, so this sequence should have an effective \(start\) date and an expiration date. After the expiration date, the promotional discount is not applicable. To mark a discount sequence as a promotional discount, you select the **Promotional** check box in the Summary area of the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

A regular sequence—that is, a sequence for which the **Promotional** check box is cleared—has only an effective \(start\) date and does not have an expiration date. You can have the following versions of a regular sequence:

-   The current \(active\) version, which defines the discount currently in effect
-   The future \(pending\) version, which defines the discount to be in effect on the particular date in future
-   The previous \(last\) version, which defines the discount that was in effect before the current discount

On the [Vendor Discounts](AP_20_50_00.md) form, you can update break amounts or quantities for each sequence by entering new values in the **Pending Break Amount** and in either **Pending Discount Percent** or **Pending Discount Amount** columns; you also enter the new effective date in the **Pending Date** column. When the effective date comes, you update the discount sequence by using the **Update Discounts** button. After the update, the current sequence version becomes the previous version, and the future version becomes the current one.

If you change properties of multiple discount sequences, you can use the [Update Vendor Discounts](AP_50_25_00.md) \(AP502500\) form to update these sequences at once.

## Updating Discounts Applied to Documents { .section}

For documents with the *On Hold* status, you can update discounts, to be sure you are using the most up-to-date discounts in case discounts were updated in the system or new discounts were defined that can be applied to the documents. To update the discounts, you use the **Recalculate Prices** dialog box, which opens when you select **Recalculate Prices** under **Other** on the More menu of the appropriate data entry form, such as [Bills and Adjustments](AP_30_10_00.md) \(AP301000\). In this dialog box, you can select types of discounts the system will update as follows:

-   If you want the system to recalculate discounts in the document, you select the **Recalculate Discounts** check box.
-   If you want the system to replace manual line-level discounts with the applicable automatic discounts in the document, you select the **Override Manual Line Discounts** check box.
-   If you want the system to replace manual group-level and document-level discounts with the applicable automatic discounts in the document, you select the **Override Manual Group and Document Discounts** check box.

**Parent topic:**[Configuring Vendor Discounts](../UserGuide/Prices_Vendor_Discounts.md)

