# Product Synchronization: Product Images {#_eaedf532-9199-47d0-a4a0-9aef9a703130 .concept}

Acumatica ERP Retail Edition provides you with the ability to export product images from Acumatica ERP to the BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to export product images from Acumatica ERP to the BigCommerce store.

## Applicable Scenarios { .section}

You export product images from to your BigCommerce store if they are saved in Acumatica ERP in either of the following ways:

-   As attachments to an item
-   As links to an external storage

## Export of Images Attached to an Item { .section}

You can save product images on the **Description** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. Images that have been attached to an item are exported to the BigCommerce store during the synchronization of the *Product Image* entity. When you activate the *Product Image* entity on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you need to specify the WebDAV credentials that the system will use to export images to the BigCommerce store. On the **General** tab of the [BigCommerce Stores](BC_20_10_00.md) form, you enter the WebDAV path, username, and password for the BigCommerce store. For information about obtaining the WebDAV credentials, see [File Access \(WebDAV\)](https://support.bigcommerce.com/s/article/File-Access-WebDAV) in the BigCommerce documentation.

The item must be exported to the BigCommerce store or created in the BigCommerce store before images attached to it are exported. Of all files attached to the item, the system exports only the files with extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form.

## Export of Images Saved as Links to An External Storage { .section}

You can save links to product images in the **Media URLs** table on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) and [Non-Stock Items](IN_20_20_00.md) forms. Such images are exported during the synchronization of the item \(that is, during the synchronization of the *Stock Item* and *Non-Stock Item* entities\). When the item is exported to the BigCommerce store, the images are added to the product management page of the exported item in the control panel of the BigCommerce store. For successful synchronization, images must be publicly accessible \(that is, access to them should not require authentication or authorization\).

In the **Media URLs** table, you can also specify links to videos on a public video hosting service, such as YouTube. These videos are added to the product page in the BigCommerce store during the synchronization of the item \(that is, during the synchronization of the *Stock Item* and *Non-Stock Item* entities\). For YouTube, you can specify the full URL or the Share URL \(that is, a short URL generated when you click the **Share** button under the video\) of a publicly accessible video.

If you delete a link to an image or video from the **Media URLs** table, the image or video will also be deleted from the product page in the BigCommerce store during the next synchronization of the item.

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

