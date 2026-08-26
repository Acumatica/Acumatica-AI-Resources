# Product Synchronization: Product Images {#_e69cdf9d-6808-41fc-99a5-34e43be05363 .concept}

Acumatica ERP Retail Edition provides you with the ability to export product images from Acumatica ERP to the Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how to export product images from Acumatica ERP to the Shopify store.

## Applicable Scenarios { .section}

You export product images from Acumatica ERP to your Shopify store in the following cases:

-   You maintain product information in Acumatica ERP, export this information to the Shopify store, and use Acumatica ERP to store images of exported stock and non-stock items.
-   You maintain product information in Acumatica ERP, export this information to the Shopify store, store images of exported stock and non-stock items in an external storage but keep links to the image files in Acumatica ERP.

## Export of Product Images { .section}

In Acumatica ERP, you can save images for stock and non-stock items in two ways:

-   As attachments to an item: On the **Description** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms
-   As links to an external storage: In the **Media URLs** table on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) and [Non-Stock Items](IN_20_20_00.md) forms

Images that have been attached to an item on the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form are exported to the Shopify store during the synchronization of the *Product Image* entity. The item they belong to must be exported to the Shopify store or created in the Shopify store before images attached to it are exported. Of all files attached to the item on the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form, the system exports only the files with extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form.

Images specified as links in the **Media URLs** table on the **eCommerce** tab are exported together with the item \(that is, during the synchronization of the *Stock Item* and *Non-Stock Item* entities\). When the item is exported to the Shopify store, the images are added to the product management page of the exported item in the control panel of the Shopify store. For successful synchronization, images must be publicly accessible \(that is, access to them should not require authentication or authorization\).

If you delete a link to an image from the **Media URLs** table, the image will also be deleted from the product page in the Shopify store during the next synchronization of the item.

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_SP_Syncing_Products_Mapref.md)

