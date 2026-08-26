# Product Synchronization: Settings of Individual Items {#_7bea1d10-d973-446d-ac1d-b7e586a83afd .concept}

By default, the availability and visibility settings defined for the store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form are applied to all stock and non-stock items synchronized with the Shopify store. However, you can override the default values for a particular item, as described in the sections below.

## Excluding Items from Synchronization { .section}

You can exclude an individual stock or non-stock item from exporting to the Shopify store \(or any other ecommerce system\) by clearing the **Export to External System** check box on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

The status of an item in Acumatica ERP affects the purchasability status of the item in Shopify. If the item's status in Acumatica ERP is *Inactive*, *No Sales*, or *Marked for Deletion*—that is, if any of these options is selected in the **Status** box in the Summary area of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form or the [Stock Items](IN_20_25_00.md) \(IN202500\) form—after the synchronization of the relevant entity, these items appear with the *Online Store* sales channel cleared, regardless of the **Availability** setting of this item in Acumatica ERP.

## Visibility of an Exported Item { .section}

You can specify the visibility settings for an individual item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. To make the item visible on the storefront immediately after it is exported, you select *Visible* in the **Visibility** box. To make the item available in the admin area of Shopify store but hidden from the storefront, you select *Invisible* in this box.

The option selected in the **Visibility** box for a particular item takes precedence over the default visibility setting specified for the store. If *Store Default* is selected, the store's default visibility setting applies.

## Availability of an Exported Item {#_05d59927-3542-47b8-aadc-50dbd14d60ba .section}

By default, the availability settings defined for the store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form are applied to all stock and non-stock items exported to the Shopify store. However, you can override the default values for a particular stock item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form and for a particular non-stock item on the same tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

The options available for selection in the **Availability** box on the **eCommerce** tab are similar to the options of the **Default Availability** box on the [Shopify Stores](BC_20_10_10.md) form with the following exceptions:

-   The *Set as Available \(Track Qty.\)* option does not appear in the **Availability** box for non-stock items.
-   The *Store Default* option \(which is not in the **Default Availability** box\) is available in the **Availability** box for stock and non-stock items. When this option is selected, the system applies the setting selected in the **Default Availability** box on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) form.

    Because the tracking of quantities is not applicable to non-stock items, if **Default Availability** in the store settings is set to *Set as Available \(Track Qty.\)* and **Availability** of a non-stock item is set to *Store Default*, after the non-stock item is exported to the Shopify store, it is available for purchase but its quantity is not tracked.


Additionally, for a stock item, if the *Set as Available \(Track Qty.\)* option is selected in the **Availability** box on the **eCommerce** tab, you need to specify the action that the system should perform if after the synchronization of the *Product Availability* entity, the item has an available quantity of zero. The available options include all options of the **When Qty. Unavailable** box on the **Inventory** tab of the [Shopify Stores](BC_20_10_10.md) form, as well as the *Store Default* option, which \(if selected\) indicates that the setting specified in the box of the same name on the [Shopify Stores](BC_20_10_10.md) form should be applied.

## Tax Settings of an Exported Item { .section}

In Acumatica ERP, you assign a tax category to a stock or non-stock item in the **Tax Category** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, respectively.

When you sync a stock or non-stock item with the Shopify store, the connector assigns the tax code to the corresponding product in Shopify by using the tax category specified for the item.

**Important:** Tax codes in Shopify are available on the Shopify Plus subscription plan. Tax codes can be used to identify the tax category of products for tax calculation by third-party Shopify apps.

The connector also selects the **Charge tax on this product** check box for the product when assigns the tax code.

**Tip:** If the tax category being synchronized is mapped to *FALSE* in the substitution list, the system won’t mark the product as taxable. The substitution list is specified in the **Tax Categories** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

To exclude tax categories from synchronization for the *Stock Item* or *Non-Stock Item* entity, you use export mapping. You add a rule with the following settings to the entity on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form:

-   **External Object**: *Product -&gt; Product Variants*
-   **External Field**: *Avalara Tax Code*
-   **ERP Object**: *&lt;&lt;Unmap&gt;&gt;*

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_SP_Syncing_Products_Mapref.md)

