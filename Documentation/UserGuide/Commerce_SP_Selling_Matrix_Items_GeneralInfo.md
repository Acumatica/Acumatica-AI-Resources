# Sale of Matrix Items: General Information {#_4f27081c-3fd2-470d-8ca5-6aacdd30c446 .concept}

Acumatica ERP Retail Edition provides you with the ability to export template items, along with the matrix items that were generated based on these template items, from Acumatica ERP to the Shopify store if the *Matrix Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form..

For details about managing template items in Acumatica ERP, see [Managing Matrix Items](Matrix_Items_Mapref.md).

## Learning Objectives { .section}

In this chapter, you will learn how to do export template items and matrix items from Acumatica ERP to the Shopify store.

## Applicable Scenarios { .section}

You export matrix items from Acumatica ERP to an external system in the following cases:

-   You are initially configuring the external system and need to transfer template items \(and matrix items based on these template items\) that have already been defined in Acumatica ERP
-   If you manage template and matrix items in Acumatica ERP, have updated any of the settings of a template item or matrix item in Acumatica ERP after the template item was synchronized with the external system, and need the changes to be reflected in the product settings in the external system

## Configuration of Template Item Synchronization { .section}

Before exporting template items defined in Acumatica ERP to the Shopify store, you need to perform the following general steps:

1.  Activate the *Template Item* entity. on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Template Item* entity.
2.  Configure the default visibility and purchasability settings for items exported to the Shopify store. For details, see [Product Synchronization: Default Store Settings](Commerce_SP_Syncing_Products_Default_Settings.md).
3.  Determine which template items and matrix items should be exported and define the visibility and purchasability settings for individual items.

## Synchronization of Template Items { .section}

Template items are exported to the Shopify store during the synchronization of the *Template Item* entity. Matrix items \(both stock items and non-stock items\) based on a template item are synchronized along with the template item.

During the export, the system updates the availability and visibility settings of each item exported to BigCommerce based on the settings specified for the template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form, for the matrix items on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and for the store on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

For details about the information exported to the Shopify store during the synchronization of a template item, see [Template Item Entity](Commerce_SP_Mapping_TemplateItem.md).

## Excluding Items from Synchronization { .section}

The template item is exported to the Shopify store if it meets the following criteria:

-   The template item's status is *Active*, *No Purchases*, or *No Request*.
-   The **Export to External System** check box is selected for this template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form.
-   At least one matrix item based on this template item has the *Active*, *No Purchases*, or *No Request* status and **Export to External System** check box selected on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

You can exclude a template item from synchronization with the Shopify store by clearing the **Export to External System** check box for this item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) form.

If you select this check box for a template item, the system also selects it on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form or of the [Non-Stock Items](IN_20_20_00.md) form for all matrix items of this template item when these matrix items are generated.

You can clear the **Export to External System** check box for an individual matrix item to exclude it from the export to the Shopify store. If the matrix item has already been exported to the Shopify store, during the next synchronization of the template item, it will be deleted from the **Variants** table on the product management page of the template item.

If the matrix item's status in Acumatica ERP is *Inactive*, *No Sales*, or *Marked for Deletion*—that is, if the matrix item has one of these statuses selected in the **Status** box of the Summary area of the [Non-Stock Items](IN_20_20_00.md) form or the [Stock Items](IN_20_25_00.md) form—it is not exported and does not appear in the **Variants** table on the product management page of the template item.

## Visibility of an Exported Template Item { .section}

You can specify the visibility settings for an individual template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form. To make the item visible on the storefront immediately after it is exported, you select *Visible* in the **Visibility** box. To make the item available in the admin area of Shopify store but hidden from the storefront, you select *Invisible* in this box.

The option selected in the **Visibility** box for a particular template item takes precedence over the default visibility setting specified for the store. If *Store Default* is selected, the store's default visibility setting applies.

## Availability Settings of Exported Matrix Items { .section}

For products with variants in Shopify, available item quantities are tracked on the level of each product variant, not for an entire product. Because of this, availability settings specified for a template item on the **eCommerce** of the [Template Items](IN_20_30_00.md) \(IN203000\) form are not applied when the *Template Item* entity is synchronized with a Shopify store.

You can specify the settings for each matrix item to determine if the item's quantity should be tracked and if selling of the item should be allowed if the item's quantity becomes zero. To do this, on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you select the options as follows:

-   To track the quantity of the item, you select *Set as Available \(Track Qty.\)* in the **Availability** box. In Shopify, on the product management page for the matrix item, the system selects the **Track quantity** check box in the **Inventory** section.
-   To allow including the item in orders even if its quantity is zero, you select *Set as Pre-Order/Continue Selling* in the **When Qty. Unavailable** box \(which is available only if *Set as Available \(Track Qty.\)* is selected in the **Availability** box. In Shopify, on the product management page for the matrix item, the system selects the **Continue selling when out of stock** check box in the **Inventory** section.

## Tax Settings of an Exported Item { .section}

In Acumatica ERP, you assign a tax category to a template item in the **Tax Category** box on the **General** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form.

When you sync a template item with the Shopify store, the connector assigns the tax code to the corresponding product variants in Shopify by using the tax category specified for the item.

**Important:** Tax codes in Shopify are available on the Shopify Plus subscription plan. Tax codes can be used to identify the tax category of product variants for tax calculation by third-party Shopify apps.

The connector also selects the **Charge tax on this variant** check box for the product variants when assigns the tax code.

**Tip:** If the tax category being synchronized is mapped to *FALSE* in the substitution list, the system won’t mark the product as taxable. The substitution list is specified in the **Tax Categories** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

To exclude tax categories from synchronization for the *Template Item* entity, you use export mapping. You add a rule with the following settings to the entity on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form:

-   **External Object**: *Product -&gt; Product Variants*
-   **External Field**: *Avalara Tax Code*
-   **ERP Object**: *&lt;&lt;Unmap&gt;&gt;*

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

