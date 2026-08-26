# Product Synchronization: Default Store Settings {#_2526ec49-f03e-421c-8f28-d4970c0aa040 .concept}

When you set up a connection to a Shopify store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you specify the availability and visibility settings that are applied by default to all items synchronized with the Shopify store.

## Default Product Availability Settings {#_4d5d29fd-f3c9-46a6-829a-c0d265fc1e6b .section}

On the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you define the default availability settings that are applied to items exported from Acumatica ERP. These settings determine whether the exported item can be purchased in the Shopify store. To define the default availability settings, you select one of the following options in the **Default Availability** box:

-   *Set as Available \(Track Qty.\)*: The stock items exported to the Shopify store are available for purchase via the storefront, and their quantities are tracked, meaning that the items can be purchased only if their quantities are greater than zero. In Shopify, on the product management page for each of these items, the *Online Store* sales channel is listed below the product status and the **Inventory tracked** toggle in the **Inventory** section is switched on.

    The non-stock items exported to the Shopify store are available for purchase via the storefront, and their quantities are not tracked \(that is, the **Inventory tracked** toggle in the **Inventory** section is switched off\).

-   *Set as Available \(Don't Track Qty.\)*: The non-stock and stock items exported to the Shopify store are available for purchase via the storefront, and their quantities are not tracked. In Shopify, on the product management page for each of these items, the *Online Store* sales channel is listed below the product status and **Inventory tracked** toggle in the **Inventory** section is switched off.
-   *Do Not Update*: The availability settings and quantity of the item in the Shopify store are not updated.
-   *Set as Unavailable*: The non-stock and stock items exported to the Shopify store are not available for purchase. In Shopify, on the product management page for each of these items, **Inventory tracked** toggle \(in the **Inventory** section\) is switched off and the *Online Store* sales channel is not listed below the product status \(in the upper right\).

**Attention:** The **Default Availability** setting applies if the **Availability** setting for a particular item is set to *Store Default* on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form.

If you select the *Set as Available \(Track Qty.\)* option in the **Default Availability** box, you need to also specify what action the system should perform with out-of-stock items \(that is, with stock items whose quantities become zero\). To do so, in the **When Qty. Unavailable** box, you select one of the following options:

-   *Do Nothing*: The system does not change the availability settings of the item.
-   *Set as Unavailable*: The system makes the item unavailable for purchase via the storefront. In Shopify, on the product management page for each of these items, **Inventory tracked** toggle \(in the **Inventory** section\) becomes switched off and the *Online Store* sales channel below the product status disappears.
-   *Set as Continue Selling*: The system selects the **Continue selling when out of stock** check box for the item in the Shopify store.

If you have synchronized the *Product Availability* entity, when you modify any of the settings described in this section, the system resets the availability synchronization status for all synchronized items in the Shopify store, and you need to perform the synchronization of the *Product Availability* entity again.

## Default Visibility Settings { .section}

You can specify visibility settings that will be applied by default to each item exported to the Shopify store on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. To instruct the system to make all items by default immediately available on the storefront after they are exported to the Shopify store, you select *Visible* in the **Default Visibility** box. To make items by default available for management in the store's admin area but hidden from the storefront, you select *Invisible* in this box.

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_SP_Syncing_Products_Mapref.md)

