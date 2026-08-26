# Selling Matrix Items: General Information {#_2fa6b723-4cf4-4a09-b0f0-9559d8ad9a81 .concept}

Acumatica ERP Retail Edition provides you with the ability to export template items, along with the matrix items that were generated based on these template items, from Acumatica ERP to the BigCommerce store if the *Matrix Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For details about managing template items in Acumatica ERP, see [Managing Matrix Items](Matrix_Items_Mapref.md).

## Learning Objectives { .section}

In this chapter, you will learn how to export template items and matrix items from Acumatica ERP to the BigCommerce store.

## Applicable Scenarios { .section}

You export matrix items from Acumatica ERP to an external system in the following cases:

-   You are initially configuring the external system and need to transfer template items \(and matrix items based on these template items\) that have already been defined in Acumatica ERP
-   If you manage template and matrix items in Acumatica ERP, have updated any of the settings of a template item or matrix item in Acumatica ERP after the template item was synchronized with the external system, and need the changes to be reflected in the product settings in the external system

## Configuration of Template Item Synchronization { .section}

Before exporting template items defined in Acumatica ERP to the BigCommerce store, you need to perform the following general steps:

1.  Activate the *Template Item* entity. on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Template Item* entity.
2.  Configure the default visibility and purchasability settings for items exported to the BigCommerce store. For details, see [Product Synchronization: Default Store Settings](Commerce_BC_Syncing_Products_Default_Settings.md).
3.  Determine which template items and matrix items should be exported and define the visibility and purchasability settings for individual items.

## Synchronization of Template Items { .section}

Template items are exported to the BigCommerce store during the synchronization of the *Template Item* entity. Matrix items \(both stock items and non-stock items\) based on a template item are synchronized along with the template item.

During the export, the system updates the availability and visibility settings of each item exported to BigCommerce based on the settings specified for the template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form, for the matrix items on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

For details about the information exported to the BigCommerce store during the synchronization of a template item, see [Template Item Entity](Commerce_BC_Mapping_TemplateItem.md).

## Excluding Items from Synchronization { .section}

The template item is exported to the BigCommerce store if it meets the following criteria:

-   The template item's status is *Active*, *No Purchases*, or *No Request*.
-   The **Export to External System** check box is selected for this template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form.
-   At least one matrix item based on this template item has the *Active*, *No Purchases*, or *No Request* status and **Export to External System** check box selected on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

You can exclude a template item from synchronization with the BigCommerce store by clearing the **Export to External System** check box on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) form.

If you select this check box for a template item, the system selects it on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form or of the [Non-Stock Items](IN_20_20_00.md) form for all matrix items of this template item when these matrix items are generated.

You can clear the **Export to External System** check box for an individual matrix item to exclude it from the export to the BigCommerce store. If the matrix item has already been exported to the BigCommerce store, during the next synchronization of the template item, it will be deleted from the **Variants** table on the product management page of the template item.

If the matrix item's status in Acumatica ERP is *Inactive*, *No Sales*, or *Marked for Deletion*—that is, if the matrix item has one of these statuses selected in the **Status** box of the Summary area of the [Non-Stock Items](IN_20_20_00.md) form or the [Stock Items](IN_20_25_00.md) form—it is not exported and does not appear in the **Variants** table on the product management page of the template item.

## Visibility of an Exported Template Item { .section}

You can specify the visibility settings for an individual template item on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form. To make the template item visible on the storefront immediately after it is exported, you select *Visible* in the **Visibility** box of the **eCommerce** tab. To make it visible on the storefront and include it in the group of featured products \(which are displayed in specific places across the storefront, depending on the theme set up for the store\), you select *Featured* in this box.

The option selected in the **Visibility** box for a particular template item takes precedence over the default visibility setting specified for the store in the **Default Visibility** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. If *Store Default* is selected, the store's default visibility settings applies.

## Availability Settings of an Exported Template Item { .section}

When a template item is exported to a BigCommerce store, it is assigned an availability \(purchasability\) status in the **Purchasability** section of the product management page in the store's control panel. In Acumatica ERP, you can determine which status is to be assigned to an item exported to BigCommerce by selecting a corresponding option in the **Availability** box on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form:

-   To make the item available for purchase via the storefront, you select *Set as Available \(Don't Track Qty.\)*. In BigCommerce, on the product management page, the **This product can be purchased in my online store** option button is selected.
-   To make the item unavailable for purchase via the storefront but available for pre-order, you select *Set as Pre-Order*. In BigCommerce, on the product management page, the **This product is coming soon but I want to take pre-orders** option button is selected.
-   To make the item unavailable for purchase via the storefront, you select *Set as Unavailable*. In BigCommerce, on the product management page, the **This product cannot be purchased in my online store** option button is selected.

The option selected in the **Availability** box for a particular item takes precedence over the default setting specified for the store in the **Default Availability** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. If *Store Default* is selected, the store's default visibility settings applies.

For information about tracking quantities of exported template and matrix items, see [Selling Matrix Items: Export of Product Availability Data](Commerce_BC_Selling_Matrix_Items_Export_of_Product_Availability.md).

## Availability Settings of an Exported Matrix Item { .section}

For each matrix item, you can specify availability settings on the **eCommerce** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form \(if the matrix item is a non-stock item\) or the [Stock Items](IN_20_25_00.md) \(IN202500\) form \(if the matrix item is a stock item\).

These settings will be exported to the BigCommerce store during the synchronization of the *Template Item* entity; however, the actual availability of the matrix item for purchase on the storefront depends on the purchasability of the template item itself.

To make a particular matrix item unavailable for purchase even if the template item is available for purchase or for pre-order, on the **eCommerce** tab of the [Non-Stock Items](IN_20_20_00.md) form or the [Stock Items](IN_20_25_00.md) form , you select *Set as Unavailable* in the **Availability** box. When the template item is synchronized with the BigCommerce store, the **Purchasable** check box becomes cleared for the matrix item in the **Variants** table on the product management page of the template item. With any other option selected in the **Availability** box, the **Purchasable** check box becomes selected for the matrix item.

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

