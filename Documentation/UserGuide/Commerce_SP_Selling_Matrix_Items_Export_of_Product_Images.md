# Sale of Matrix Items: Export of Product Images {#_396328f2-6153-4384-bdf9-a096511ee1e0 .concept}

Product images and videos can help customers select the most suitable products and choose variants, such as colors or patterns. In Acumatica ERP, you can save images of template items \(such as a particular model of running shoes\), as well as images of the matrix items that were generated based on these template items \(such as the colors of this model of running shoes\). You can then export the saved images to the Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how to export images for template and matrix items from Acumatica ERP to the Shopify store.

## Applicable Scenarios { .section}

You export images for template items and matrix items from Acumatica ERP to the Shopify store in the following cases:

-   You are initially configuring the Shopify store and need to export template items and matrix items \(including images that have been saved for them\) from Acumatica ERP to the store.
-   You have updated the images of a template item or the images of a matrix item in Acumatica ERP after the template item was synchronized with the Shopify store, and you need the changes to be reflected in the product settings in the store.

## Export of Images for Template Items { .section}

In Acumatica ERP, you can associate images with template items in two ways:

-   As links to external storage: In the **Media URLs** table on the **eCommerce** tab of the [Template Items](IN_20_30_00.md) \(IN203000\) form
-   As attachments to an item: On the **Configuration** tab of the same form

Images specified as links in the **Media URLs** table on the **eCommerce** tab are exported along with the template item \(that is, during the synchronization of the *Template Item* entity\). When the template item is exported to the Shopify store, the images are added to the **Media** section of the product management page of the exported template item. For successful synchronization, images must be publicly accessible \(that is, access to them should not require authentication or authorization\). If you delete a link to an image from the **Media URLs** table, the image will also be deleted from the product page in the Shopify store during the next synchronization of the item.

Images that have been attached to a template item on the [Template Items](IN_20_30_00.md) form are exported to the Shopify store during the synchronization of the *Product Image* entity. The items the images belong to must be exported to the Shopify store or created in the Shopify store before the images attached to it are exported. The system exports the files attached to the item only if they have extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form.

## Export of Images for Matrix Items { .section}

In Acumatica ERP, you can attach images to a matrix item on the **Attributes** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form \(depending on the type of the item\).

During the synchronization of the *Product Image* entity, images attached to a matrix item are exported to the Shopify store and added to the product management page of the template item as follows:

-   All exported images are added to the **Media** section.
-   One of the exported images is added to the table in the **Variants** section \(the Image column of the row of the matrix item\).

The template item and the matrix item must be synchronized with the Shopify store or created in the Shopify store before images attached to the matrix item can be exported. Only the files with extensions for which the **Image** check box is selected on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form can be exported.

**Important:** If images are added for a matrix item as links in the **Media URLs** table on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form \(if the matrix item is a stock item\) or [Non-Stock Items](IN_20_20_00.md) form \(if the matrix item is a non-stock item\), these images are not exported to Shopify.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

