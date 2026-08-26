# Template Item Entity {#_6decb101-7ce3-4819-b085-47718ab50f14 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Template Item* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Merging of Duplicates { .section}

During the export of template items from Acumatica ERP, a template item is merged with an existing product in BigCommerce if at least of the following conditions is met:

-   The template item's description in Acumatica ERP—that is, the value in the **Description** box on the [Template Items](IN_20_30_00.md) \(IN203000\) form—matches the **Product Name** of the product in BigCommerce.
-   The template item's ID in Acumatica ERP—that is, the value in the **Inventory ID** box on the [Template Items](IN_20_30_00.md) form—matches the **SKU** of the product in BigCommerce.

## Template Item Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of template items to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Template Items](IN_20_30_00.md) \(IN203000\) form| |
|**Template ID**|Summary area|**SKU**|Product management page &gt; **Basic Information** section|**SKU** also appears under **Product Identifiers**.|
|**Description**|Summary area|**Product Name**|Product management page &gt; **Basic Information** section|The **Description** in Acumatica ERP must be unique.|
|**Stock Item**: Selected|Summary area|**Product Type**|Product management page &gt; **Basic Information** section|**Product Type** is set to *Physical*|
|**Stock Item**: Cleared;**Require Shipment**: Selected|Summary area|**Product Type**|Product management page &gt; **Basic Information** section|**Product Type** is set to *Physical*|
|**Stock Item**: Cleared;**Require Shipment**: Cleared|Summary area|**Product Type**|Product management page &gt; **Basic Information** section|**Product Type** is set to *Digital*|
|**Description**|**Description** tab|**Description**|Product management page &gt; **Description** section| |
|**Weight**|**Fulfillment** tab &gt; **Dimensions**section|**Weight**|Product management page &gt; **Basic Information** section| |
|**Default Price**|**Price/Cost** tab &gt; **Price Management** section|**Default Price**|Product management page &gt; **Pricing** section|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the default price defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**MSRP**|**Price/Cost** tab &gt; **Price Management** section|**MSRP**|Product management page &gt; **Pricing** section|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the MSRP defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Current Cost**|**Price/Cost** tab &gt; **Standard Cost** section|**Cost**|Product management page &gt; **Pricing** section| |
|**General** tab| |
|**Default Issue From**|**General** tab &gt; **Warehouse Defaults** section|**Bin Picking Number \(BPN\)**|Product management page &gt; **Product Identifiers** section| |
|**Category ID**|**Fulfillment** tab &gt; **Sales Categories** table|**Categories**|Product management page &gt; **Basic Information** section| |
|**eCommerce** tab| |
|**Visibility**: *Visible*|**eCommerce** tab|**Visible on Storefront**|Product management page &gt; **Basic Information** section|The **Visible on Storefront** check box is selected.|
|**Visibility**: *Featured*|**eCommerce** tab|**Set as a Featured Product on my Storefront**|Product management page &gt; **Storefront Details** section|The **Visible on Storefront** check box is selected, and the **Set as a Featured Product on my Storefront** is selected.|
|**Visibility**: *Invisible*|**eCommerce** tab|**Visible on Storefront**|Product management page &gt; **Basic Information** section|The **Visible on Storefront** check box is cleared.|
|**Search Keywords**|**eCommerce** tab|**Search Keywords**|Product management page &gt; **Storefront Details** section| |
|**Page Title**|**eCommerce** tab|**Page Title**|Product management page &gt; **Search Engine Optimization** section| |
|**Meta Description**|**eCommerce** tab|**Meta Description**|Product management page &gt; **Search Engine Optimization** section| |
|**Availability**: *Set as Available \(Track Qty.\)*|**eCommerce** tab|**Track inventory**|Product management page &gt; **Inventory** section| |
|**This product can be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Availability**: *Set as Available \(Don't Track Qty.\)*|**eCommerce** tab|**Track inventory**: Cleared|Product management page &gt; **Inventory** section| |
|**This product can be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Availability**: *Set as Pre-Order*|**eCommerce** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section| |
|**Availability**: *Do Not Update*|**eCommerce** tab|No changes|Product management page &gt; **Purchasability** section| |
|**Availability**: *Set as Unavailable*|**eCommerce** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section| |
|**Custom URL**|**eCommerce** tab|**Product URL**|Product management page &gt; **Search Engine Optimization** section| |
|**URL** \(Image\)|**eCommerce** tab &gt; **Media URLs** table|**Images**|Product management page &gt; **Images &amp; Videos** section| |
|**URL** \(Video\)|**eCommerce** tab &gt; **Media URLs** table|**Videos**|Product management page &gt; **Images &amp; Videos** section| |
|**Attribute**|**Configuration** tab &gt; **Attributes** section|**Option Name**|Product management page &gt; **Variations** section &gt; **Variant Options** table| |
|**Attribute Value**|**Item Creation** tab &gt; table|**Values**|Product management page &gt; **Variations** section &gt; **Variant Options** table| |

The following table includes the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of matrix items to BigCommerce as part of the synchronization of the *Template Item* entity.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Stock Items](IN_20_25_00.md) form \(if the matrix item is a stock item\) or [Non-Stock Items](IN_20_20_00.md) form \(if the matrix item is a non-stock item\)| |
|**Description**|Summary area|**Variant**|Product management page &gt; **Variations** section &gt; **Variants** table| |
|**Inventory ID**|Summary area|**SKU**|Product management page &gt; **Variations** section &gt; **Variants** table| |
|**Default Price**|**Price/Cost** tab &gt; **Price Management** section|**Default Price**|Product management page &gt; **Variations** section &gt; **Variants** table|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the default price defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**MSRP**|**Price/Cost** tab &gt; **Price Management** section|**MSRP**|Product management page &gt; **Variations** section &gt; **Variants** table|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the MSRP defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Cross-Reference** tab| |
|**Alternate Type**: *Vendor Part Number*|**Cross-Reference** tab|**MPN**|Product management page &gt; **Variations** section &gt; **Variants** table|The first row for *Vendor Part Number* with the default vendor is used.|
|**Alternate Type**: *Barcode*|**Cross-Reference** tab|**UPC/EAN**|Product management page &gt; **Variations** section &gt; **Variants** table|The system searches for the matching cross-reference of the *Barcode* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

|
|**Alternate Type**: *GTIN/EAN/UPC/ISBN*|**Cross-Reference** tab|**GTIN**|Product management page &gt; **Variations** section &gt; **Variants** table|The system searches for the matching cross-reference of the *GTIN/EAN/UPC/ISBN* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

|

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

