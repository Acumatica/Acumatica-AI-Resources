# Preparing Entities for Synchronization: Updating Product Details {#_eff072cf-0c05-48e4-a322-39018b91fc4b .concept}

Before you export stock items and non-stock items to the online store, you might want to specify commerce-related settings that are specific to a particular product or specify commerce-related information.

If the *Retail Commerce* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **eCommerce** tab appears on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. On this tab, you can specify the settings that are applied to the items exported from Acumatica ERP to the BigCommerce store. The settings you specify on this tab for a particular item override the default settings specified on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

**Attention:** If the *Matrix Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the **eCommerce** tab is also displayed on the [Template Items](IN_20_30_00.md) \(IN203000\) form.

For each stock or non-stock item, on the **eCommerce** tab, you can define the following:

-   The visibility of the product in the online store.

    You define visibility by selecting the appropriate option in the **Visibility** box: *Visible* to make the product visible on the storefront, *Invisible* to hide it from customers, or *Featured* to make the product visible and add it to the *Featured* sales category.

-   The availability assigned to the item when it is exported to the online store.

    You define the availability of the item by selecting the needed option in the **Availability** box. You select *Store Default* to apply the availability option selected in the store settings to be used by default for exported products. To make the product available and not track its quantity, you select *Set as Available \(Don't Track Qty.\)*. If you want to make the product available for pre-order, you select *Set as Pre-Order*. To make the product unavailable after import, you select *Set as Unavailable*. For a stock item whose quantity you want to track, you select *Set as Available \(Track Qty.\)*.

    For stock items whose availability is tracked \(that is, for the items for which the **Availability** is set to *Set as Available \(Track Qty.\)*\), you can also specify what action should be performed if the item runs out of stock. To do this, you select in the **When Qty. Unavailable** box one of the following options:

    -   *Store Default*: To apply the default value configured in the store settings
    -   *Do Nothing*: To not perform any action
    -   *Set as Unavailable*: To make the item unavailable for purchase in the online store
    -   *Set as Pre-Order*: To change the item's availability to *Pre-Order*
-   The custom URL of the product page in the online store.

    You specify the custom URL of the product page in the **Custom URL** box.

    By default, product URLs are generated in the BigCommerce store automatically, based on the URL generation rules configured in the **Product URL Settings** section on the **Store Settings** page in the control panel of your BigCommerce store. The URL specified in the **Custom URL** box, when the product is exported, is copied into the **Product URL** box in the **Search Engine Optimization** section of the **View Products** page of for the product. The URL in the **Product URL** box overrides the automatically generated URL.

-   The title of the product page.

    You can specify the title of the product page in the **Page Title** box. After the product is imported to the BigCommerce store, the text you have specified in this box is copied into the **Page Title** box in the **Search Engine Optimization** section of the **View Products** page for the product. This text is used in the `<title>` tag in the HTML code of the product page.

-   Search keywords.

    You specify the keywords and search terms that are relevant to the item in the **Search Keywords** box. Search keywords are used when a customer searches from within the online store.

-   Meta keywords.

    You specify meta keywords in the **Meta Keywords** box. Meta keywords are included in the `<meta>` tag in the HTML code of the product page.

-   Meta description.

    You specify the meta description in the **Meta Description** box. After the product is imported into the BigCommerce store, the meta description you have specified in this box will be displayed in the **Meta Description** box in the **Search Engine Optimization** section of the **View Products** page for the product. The meta description is included in the `<meta>` tag in the HTML code of the product page.


**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_BC_Preparing_Entities_Mapref.md)

