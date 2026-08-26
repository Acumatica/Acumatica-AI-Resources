# Product Synchronization: Settings of Individual Items {#_bb073b89-aee4-44ca-80f7-dd1e579e6893 .concept}

By default, the availability and visibility settings defined for the store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form are applied to all stock and non-stock items synchronized with the BigCommerce store. However, you can override the default values for a particular item, as described in the sections below.

## Excluding Items from Synchronization { .section}

You can exclude an individual stock or non-stock items from exporting to the BigCommerce store \(or any other ecommerce system\) by clearing the **Export to External System** check box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

The status of an item in Acumatica ERP affects the purchasability status of the item in BigCommerce. If the item's status in Acumatica ERP is *Inactive*, *No Sales*, or *Marked for Deletion*—that is, if any of these options is selected in the **Status** box in the Summary area of the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form—after the synchronization of the relevant entity, in the **Purchasability** section of the product management page of the item in the BigCommerce store, the **This product cannot be purchased in my online store** option button is selected, regardless of the **Availability** setting of this item in Acumatica ERP.

## Visibility of an Exported Item { .section}

You can specify the visibility settings for an individual item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. To make the item visible on the storefront immediately after it is exported, you select *Visible* in the **Visibility** box. To make the item available in the control panel of BigCommerce store but hidden from the storefront, you select *Invisible*. To make the item visible on the storefront and included in the group of featured products \(which are displayed in specific places across the storefront, depending on the theme set up for the store\), you select *Featured* in this box.

The option selected in the **Visibility** box for a particular item takes precedence over the default visibility setting specified for the store in the **Default Visibility** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. If *Store Default* is selected, the store's default visibility settings applies.

## Availability of an Exported Item { .section}

When a stock or non-stock item is exported to or created in a BigCommerce store, it is assigned an availability \(purchasability\) status in the **Purchasability** section of the product management page in the store's control panel. In Acumatica ERP, you can determine which status is to be assigned to an item exported to BigCommerce by selecting a corresponding option in the **Availability** box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form:

-   To make the item available for purchase via the storefront, you select *Set as Available \(Don't Track Qty.\)*. In BigCommerce, on the product management page, the **This product can be purchased in my online store** option button is selected.
-   To make the item unavailable for purchase via the storefront but available for pre-order, you select *Set as Pre-Order*. In BigCommerce, on the product management page, the **This product is coming soon but I want to take pre-orders** option button is selected.
-   To make the item unavailable for purchase via the storefront, you select *Set as Unavailable*. In BigCommerce, on the product management page, the **This product cannot be purchased in my online store** option button is selected.

The option selected in the **Availability** box for a particular item takes precedence over the default setting specified for the store in the **Default Availability** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. If *Store Default* is selected, the store's default visibility setting applies.

For information about tracking quantities of exported stock items, see [Product Availability: General Information](Commerce_BC_Syncing_Product_Availability_GeneralInfo.md).

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

