# Preparing Entities for Synchronization: Updating Product Details {#_f70237b1-b8e9-445c-9548-21aa8844fab1 .concept}

Before you export stock items and non-stock items to the online store, you might want to specify commerce-related settings that are specific to a particular product or specify commerce-related information.

If the *Retail Commerce* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **eCommerce** tab appears on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. On this tab, you can specify the settings that are applied to the items exported from Acumatica ERP to the Shopify store. The settings you specify on this tab for a particular item override the default settings specified on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

**Attention:** If the *Matrix Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the **eCommerce** tab is also displayed on the [Template Items](IN_20_30_00.md) \(IN203000\) form.

For each stock or non-stock item, on the **eCommerce** tab, you can define the following:

-   The visibility of the product in the online store.

    You define visibility by selecting the appropriate option in the **Visibility** box: *Visible* to make the product visible on the storefront, *Invisible* to hide it from customers.

    **Attention:** Shopify does not support featuring products, so the third option, *Featured*, will make the product visible on the storefront \(same as the *Visible* option\).

-   The availability assigned to the item when it is exported to the online store.

    You define the availability of the item by selecting the needed option in the **Availability** box. You select *Store Default* to apply the availability option selected in the store settings to be used by default for exported products. To make the product available and not track its quantity, you select *Set as Available \(Don't Track Qty.\)*. If you want to make the product available for pre-order, you select *Set as Pre-Order*. To make the product unavailable after import, you select *Set as Unavailable*. For a stock item whose quantity you want to track, you select *Set as Available \(Track Qty.\)*.

    For stock items whose availability is tracked \(that is, for the items for which the **Availability** is set to *Set as Available \(Track Qty.\)*\), you can also specify what action should be performed if the item runs out of stock. To do this, you select in the **When Qty. Unavailable** box one of the following options:

    -   *Store Default*: To apply the default value configured in the store settings
    -   *Do Nothing*: To not perform any action
    -   *Set as Unavailable*: To make the item unavailable for purchase in the online store
-   The title of the product page.

    You can specify the title of the product page in the **Page Title** box. After the product is imported to the Shopify store, the text you have specified in this box is copied into the **Page title** box in the **Search engine listing preview** section of the product management page. This text is used in the `<title>` tag in the HTML code of the product page.

-   Meta description.

    You specify the meta description in the **Meta Description** box. After the product is imported to the Shopify store, the meta description you have specified in this box will be displayed in the **Description** box in the **Search engine listing preview** section of the product management page. The meta description is included in the `<meta>` tag in the HTML code of the product page.


**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_SP_Preparing_Entities_Mapref.md)

