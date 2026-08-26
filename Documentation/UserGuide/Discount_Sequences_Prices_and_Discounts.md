# Customer Discounts: Discount Sequences {#_b90f1ea1-2885-4442-bc07-f8951e9b1df6 .concept}

In Acumatica ERP, once you have configured a discount code for your customer discount, you proceed to creating at least one discount sequence for the discount code. \(You can define multiple discount sequences for each discount code or only one sequence.\) In Acumatica ERP, *discount sequences* are predefined sets of settings that determine how discounts are applied in a system.

You create a discount sequence on the [Discounts](AR_20_95_00.md) \(AR209500\) form by specifying the values for each entity to which the discounts will apply. That is, you specify the particular records to which the discounts will be applied. Also, for each discount sequence, you can specify the discount percent or the discount amount.

In this topic, you will read about discount sequences for customer discounts in Acumatica ERP.

## Settings of Discount Sequence { .section}

Discount sequences are defined on the [Discounts](AR_20_95_00.md) \(AR209500\) form; each discount sequence is related to a discount code and inherits its settings. Discount sequences can define simple discounts \(which are applicable to any amount or quantity\) or tiered discounts \(for which you can specify different percents or fixed amounts based on the quantities or amounts of items\).

Discount sequences may be regular or promotional. A *regular discount sequence* is a discount that is not marked as promotional—that is, the **Promotional** check box is cleared in the Summary area of the [Discounts](AR_20_95_00.md) \(AR209500\) form.

A regular discount sequence has only a start date and does not have an expiration date. You can have the following versions of a regular sequence:

-   The current \(active\) version, which is the discount currently in effect
-   The future \(pending\) version, which is the discount to be in effect on a particular date in the future
-   The previous \(last\) version, which is the discount that was in effect before the current discount

A *promotional discount sequence*—for which the **Promotional** check box is selected—is effective for a limited time, so this sequence must have an effective \(start\) date and an expiration date. After the expiration date, a promotional discount is not applicable.

Because a discount code can have multiple sequences, each sequence related to the same discount code must have a unique identifier. If auto-numbering is configured for the discount code, when you create a new sequence for this discount code, the system assigns its sequence ID automatically. By default, the discount code is used as a prefix for generating sequence IDs. If auto-numbering is not configured for the discount code, you must enter an identifier for each sequence manually.

For each discount sequence, on the [Discounts](AR_20_95_00.md) form, you specify the following:

-   Whether the discount is regular or promotional.

    If the discount is promotional, it is effective only during the date range that you specify. When you mark a discount as promotional, you must specify the start and end dates of the period during which it is effective.

    Regular discounts have the start date \(also referred to as effective date\) but do not have an expiration date.

-   How the discount is expressed: as a percentage, an amount, or a specific quantity of a free item.
-   To which records of the entity type \(such as items, customers, or warehouses\) the discount can be applied.

    The applicable entity type or combination of entity types is defined by the discount code. Tabs that apply to the entity type or types specified for the discount code appear on the [Discounts](AR_20_95_00.md) form after you save the new discount code. For instance, if the discount code was defined for discounts to be applied to items, this form will have the **Items** tab, which you can use to list the particular items to which the sequence is applicable.

-   How the discount is tiered or broken down \(optional\): by amount \(for a discount code of any type\) or by quantity \(for only a discount code of the *Line* and *Group* type\).
-   Whether the discount is active or not.
-   Whether the discount is prorated or not.

## Updating of Discount Sequences { .section}

In Acumatica ERP, on the [Discounts](AR_20_95_00.md) \(AR209500\) form, you can update a regular or promotional discount sequence.

You can update a regular discount sequence on the **Discount Breakpoints** tab by entering the start date in the **Pending Date** column and a new breakdown value in the following columns:

-   **Pending Discount Amount**
-   **Pending Discount Percent**
-   **Pending Break Amount**
-   **Pending Break Quantity**

Then you update the discount sequence by clicking the **Update Discounts** button on the form toolbar. This opens the **Update Discounts** dialog box, which you can use to select pending discount sequences by their start date \(pending date\) for updating. After the update, the current sequence version becomes the previous version, and the future version becomes the current one.

**Important:** The **Update Discounts** button becomes active only after you save a newly created discount on the [Discounts](AR_20_95_00.md) form.

If you need to change properties of multiple discount sequences, you can use the [Update Discounts](AR_50_25_00.md) \(AR502500\) form to update these sequences at once.

You can update the promotional discount sequence by modifying the needed settings on the [Discounts](AR_20_95_00.md) form and saving the changes. You do not need to use the **Update Discounts** button and dialog box to update the promotional discount sequence; this button remains inactive on the promotional discount sequence.

## Updating of Discounts Applied to Documents { .section}

For documents with the *On Hold* status, you can update discounts to include any new discounts or updates to existing ones.

To update the discounts, you use the **Recalculate Prices** dialog box, which opens when you click **Recalculate Prices** under **Other** on the More menu of the respective data entry form, such as [Invoices](SO_30_30_00.md) \(SO303000\) or [Sales Orders](SO_30_10_00.md) \(SO301000\).

In this dialog box, you can select the types of discounts the system will update as follows:

-   If you want the system to recalculate discounts in the document, you select the **Recalculate Discounts** check box.
-   If you want the system to replace manual line-level discounts with the applicable automatic discounts in the document, you select the **Override Manual Line Discounts** check box.
-   If you want the system to replace manual group-level and document-level discounts with the applicable automatic discounts in the document, you select the **Override Manual Group and Document Discounts** check box.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

