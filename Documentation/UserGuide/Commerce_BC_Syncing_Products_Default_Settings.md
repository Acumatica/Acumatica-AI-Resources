# Product Synchronization: Default Store Settings {#_d341a85b-e6fe-434e-80eb-4191b4ea5c6b .concept}

When you set up a connection to a BigCommerce store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you specify the availability and visibility settings that are applied by default to all items synchronized with the BigCommerce store.

## Default Product Availability Settings {#_4d5d29fd-f3c9-46a6-829a-c0d265fc1e6b .section}

On the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you define the default availability status that is assigned to items exported from Acumatica ERP. This status determines whether the exported item can be purchased in the BigCommerce store. To define the default availability status, you select one of the following options in the **Default Availability** box:

-   *Set as Available \(Track Qty.\)*: The stock items exported to the BigCommerce store are available for purchase via the storefront, and their quantities are tracked, meaning that the items can be purchased only if their quantities are greater than zero. In BigCommerce, on the product management page for each of these items, the **This product can be purchased in my online store** option button \(in the **Purchasability** section\) and the **Track inventory** check box \(in the **Inventory** section\) are selected.

    For stock items, the available quantities are tracked on the product level \(that is, the **On the product level** option button is selected under the **Track Inventory** check box\).

    The non-stock items exported to the BigCommerce store are available for purchase via the storefront, and their quantities are not tracked \(that is, the **Track inventory** check box is cleared\).

-   *Set as Available \(Don't Track Qty.\)*: The non-stock and stock items exported to the BigCommerce store are available for purchase via the storefront, and their quantities are not tracked. In BigCommerce, on the product management page for each of these items, the **This product can be purchased in my online store** option button \(in the **Purchasability** section\) is selected and the **Track inventory** check box \(in the **Inventory** section\) is cleared.
-   *Set as Pre-Order*: The non-stock and stock items exported to the BigCommerce store are not available for purchase but customers can pre-order them. In BigCommerce, on the product management page for each of these items, the **This product is coming soon but I want to take pre-orders** option button \(in the **Purchasability** section\) is selected.
-   *Do Not Update*: The availability settings and quantity of the item in the BigCommerce store are not updated.
-   *Set as Unavailable*: The non-stock and stock items exported to the BigCommerce store are not available for purchase. In BigCommerce, on the product management page for each of these items, the **This product cannot be purchased in my online store** option button \(in the **Purchasability** section\) is selected.

**Attention:** The **Default Availability** setting applies if the **Availability** setting for a particular item is set to *Store Default* on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form.

If you select the *Set as Available \(Track Qty.\)* option in the **Default Availability** box, you need to also specify what action the system should perform with out-of-stock items \(that is, with stock items whose quantities become zero\). To do so, in the **When Qty. Unavailable** box, you select one of the following options:

-   *Do Nothing*: The system does not change the availability settings of the item. In BigCommerce, in the **Purchasability** section of the product management page, the currently selected option button remains selected.
-   *Set as Unavailable*: The system makes the item unavailable for purchase via the storefront. In BigCommerce, in the **Purchasability** section of the product management page, the **This product cannot be purchased in my online store** option button becomes selected.
-   *Set as Pre-Order*: The system makes the item unavailable for purchase but available for pre-order. In BigCommerce, in the **Purchasability** section of the product management page, the **This product is coming soon but I want to take pre-orders** option button becomes selected.

If you have synchronized the *Product Availability* entity, when you modify any of the settings described in this section, the system resets the availability synchronization status for all synchronized items in the BigCommerce store, and you need to perform the full synchronization of the *Product Availability* entity again.

## Default Visibility Settings { .section}

You can specify visibility settings that will be applied by default to each item exported to the BigCommerce store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. To instruct the system to make all items by default immediately available on the storefront after they are exported to the BigCommerce store, you select *Visible* in the **Default Visibility** box. To make items by default available for management in the store's control panel but hidden from the storefront, you select *Invisible* in this box. To make items visible on the storefront and included in the group of featured products \(which are displayed in specific places across the storefront, depending on the theme set up for the store\), you select *Featured* in this box.

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

