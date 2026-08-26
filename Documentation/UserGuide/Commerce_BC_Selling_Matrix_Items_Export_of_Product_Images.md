# Selling Matrix Items: Export of Product Images {#_bb8b44f6-8715-4118-a577-a7a7d5036be3 .concept}

Product images and videos can help customers select the most suitable products and choose variants, such as colors or patterns. In Acumatica ERP, you can save images and videos of template items \(such as a video showing the use of a particular model of running shoes\) and images of particular matrix items \(such as the colors of this model of running shoes\). You can then export the saved images and videos to the BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

1.  Export images for template and matrix items from Acumatica ERP to the BigCommerce store
2.  Export videos for template items from Acumatica ERP to the BigCommerce store

## Applicable Scenarios { .section}

You export images and videos for template items and images for matrix items from Acumatica ERP to the BigCommerce store in the following cases:

-   You are initially configuring the BigCommerce store and need to export template items and matrix items \(including images and videos that have been saved for them\) from Acumatica ERP to the store.
-   You have updated the images and videos of a template item or the images of a matrix item in Acumatica ERP after the template item was synchronized with the BigCommerce store, and you need the changes to be reflected in the product settings in the store.

## Export of Images for Template Items { .section}

In Acumatica ERP, you can associate images with template items in two ways:

-   As links to external storage: In the **Media URLs** table on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form
-   As attachments to an item: On the **Configuration** tab of the same form

Images specified as links in the **Media URLs** table on the **eCommerce** tab are exported along with the template item \(that is, during the synchronization of the *Template Item* entity\). When the template item is exported to the BigCommerce store, the images are added to the **Images &amp; Videos** section of the product management page of the exported template item. For successful synchronization, images must be publicly accessible \(that is, access to them should not require authentication or authorization\).

If you delete a link to an image or video from the **Media URLs** table, the image or video will also be deleted from the product page in the BigCommerce store during the next synchronization of the item.

Images that have been attached to a template item on the [Template Items](IN_20_30_00.md) form are exported to the BigCommerce store during the synchronization of the *Product Image* entity. The items the images belong to must be exported to the BigCommerce store or created in the BigCommerce store before the images attached to it are exported. The system exports the files attached to the item only if they have extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form.

## Export of Videos for Template Items { .section}

For a template item, you can add links to YouTube videos in the **Media URLs** table on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form. During the synchronization of this template item \(that is, during the synchronization of the *Template Item* entity\), these videos are added to the **Images &amp; Videos** section of the product management page of the exported template item in BigCommerce. You can specify the full URL or the Share URL \(that is, the short URL generated when you click the **Share** button under the video\). For successful synchronization, videos must be publicly accessible \(that is, access to them should not require authentication or authorization\).

## Export of Images for Matrix Items { .section}

In Acumatica ERP, you can attach images to a matrix item on the **Attributes** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form \(depending on the type of the item\).

During the synchronization of the *Product Image* entity, one of the images attached to a matrix item is exported to the BigCommerce store. The exported image is added to the **Image** column in the **Variants** table of the **Variations** section of the product management page of the template item the matrix item is based on. The template item and the matrix item must be synchronized with the BigCommerce store or created in the BigCommerce store before images attached to the matrix item can be exported. Only the files with extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form can be exported.

**Important:** If images are added for a matrix item as links in the **Media URLs** table on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(if the matrix item is a stock item\) or [Non-Stock Items](IN_20_20_00.md) form \(if the matrix item is a non-stock item\), these images are not exported to BigCommerce.

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

