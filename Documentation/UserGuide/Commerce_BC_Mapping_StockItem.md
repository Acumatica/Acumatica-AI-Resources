# Stock Item Entity {#_cd5fdb71-3ac4-420c-91c3-400405806681 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Stock Item* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Stock Item Filtering { .section}

Filters are applied during the export of stock items. A stock item is skipped if any of the following is true:

-   The stock item is a matrix item—that is, a template is specified for the item in the **Template ID** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Matrix items are synchronized as part of the synchronization of template items.
-   No item sales category is assigned to the stock item and no default category is selected in the **Default Stock Categories** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

## Merging of Duplicates { .section}

During the export of stock items from Acumatica ERP, a stock item is merged with an existing product in BigCommerce if at least one of the following conditions is met:

-   The stock item's description in Acumatica ERP—that is, the value in the **Description** box on the [Stock Items](IN_20_25_00.md) \(IN202500\) form—matches the **Product Name** of the product in BigCommerce.
-   The stock item's ID in Acumatica ERP—that is, the value in the **Inventory ID** box on the [Stock Items](IN_20_25_00.md) form—matches the **SKU** of the product in BigCommerce.

## Stock Item Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of stock items to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form| |
|**Inventory ID**|Summary area|**SKU**|Product management page &gt; **Basic Information** section|**SKU** also appears under **Product Identifiers**.|
|**Description**|Summary area|**Product Name**|Product management page &gt; **Basic Information** section|The **Description** in Acumatica ERP must be unique.|
| | |**Product Type**: *Physical*|Product management page &gt; **Basic Information** section| |
|**Description**|**Description** tab|**Description**|Product management page &gt; **Description** section| |
|**Weight**|**Packaging** tab &gt; **Dimensions**section|**Weight**|Product management page &gt; **Basic Information** section| |
|**Default Price**|**Price/Cost** tab &gt; **Price Management** section|**Default Price**|Product management page &gt; **Pricing** section|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the default price defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**MSRP**|**Price/Cost** tab &gt; **Price Management** section|**MSRP**|Product management page &gt; **Pricing** section|If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the MSRP defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Current Cost**|**Price/Cost** tab &gt; **Standard Cost** section|**Cost**|Product management page &gt; **Pricing** section| |
|**General** tab| |
|**Default Issue From**|**General** tab &gt; **Warehouse Defaults** section|**Bin Picking Number \(BPN\)**|Product management page &gt; **Product Identifiers** section| |
|**Category ID**|**Attributes** tab &gt; **Sales Categories** table|**Categories**|Product management page &gt; **Basic Information** section| |
|**eCommerce** tab| |
|**Visibility**: *Visible*|**eCommerce** tab|**Visible on Storefront**: Selected|Product management page &gt; **Basic Information** section| |
|**Visibility**: *Featured*|**eCommerce** tab|**Visible on Storefront**|Product management page &gt; **Basic Information** section| |
|**Set as a Featured Product on my Storefront**|Product management page &gt; **Storefront Details** section|
|**Visibility**: *Invisible*|**eCommerce** tab|**Visible on Storefront**: Cleared|Product management page &gt; **Basic Information** section| |
|**Search Keywords**|**eCommerce** tab|**Search Keywords**|Product management page &gt; **Storefront Details** section| |
|**Page Title**|**eCommerce** tab|**Page Title**|Product management page &gt; **Search Engine Optimization** section| |
|**Meta Description**|**eCommerce** tab|**Meta Description**|Product management page &gt; **Search Engine Optimization** section| |
|**Custom URL**|**eCommerce** tab|**Product URL**|Product management page &gt; **Search Engine Optimization** section| |
|**URL** \(Image\)|**eCommerce** tab &gt; **Media URLs** table|**Images**|Product management page &gt; **Images &amp; Videos** section| |
|**URL** \(Video\)|**eCommerce** tab &gt; **Media URLs** table|**Videos**|Product management page &gt; **Images &amp; Videos** section| |
|**Cross-Reference** tab| |
|**Alternate Type**: *Vendor Part Number*|**Cross-Reference** tab|**Manufacturer Part Number \(MPN\)**|Product management page &gt; **Product Identifiers** section|The first row for *Vendor Part Number* with the default vendor is used.|
|**Alternate Type**: *Barcode*|**Cross-Reference** tab|**Product UPC/EAN**|Product management page &gt; **Product Identifiers** section|The system searches for the matching cross-reference of the *Barcode* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

|
|**Alternate Type**: *GTIN/EAN/UPC/ISBN*|**Cross-Reference** tab|**Global Trade Item Number \(GTIN\)**|Product management page &gt; **Product Identifiers** section|The system searches for the matching cross-reference of the *GTIN/EAN/UPC/ISBN* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

|

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form, **eCommerce** tab| |
|**Availability**: *Set as Available \(Track Qty.\)*|**eCommerce** tab|**This product can be purchased in my online store**: Cleared|Product management page &gt; **Purchasability** section|
|**Track inventory**: Selected|Product management page &gt; **Inventory** section|
|**Availability**: *Set as Available \(Don't Track Qty.\)*|**eCommerce** tab|**This product can be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**Availability**: *Set as Pre-Order*|**eCommerce** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**Availability**: *Set as Unavailable*|**eCommerce** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**Availability**: *Store Default*|**eCommerce** tab|See the following rows of the table.|
|The following settings are applied if **Availability** on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form is set to *Store Default*.| |
|[BigCommerce Stores](BC_20_10_00.md) form, **Inventory** tab| |
|**Default Availability**: *Set as Available \(Track Qty.\)*|**Inventory** tab|**This product can be purchased in my online store**: Cleared|Product management page &gt; **Purchasability** section|
|**Track inventory**: Selected|Product management page &gt; **Inventory** section|
|**Default Availability**: *Set as Available \(Don't Track Qty.\)*|**Inventory** tab|**This product can be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**Default Availability**: *Set as Pre-Order*|**Inventory** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**Default Availability**: *Do Not Update*|**Inventory** tab|**This product is coming soon but I want to take pre-orders**: No Changes|Product management page &gt; **Purchasability** section|
|**Track inventory**: No Changes|Product management page &gt; **Inventory** section|
|**Default Availability**: *Set as Unavailable*|**Inventory** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|The following settings are applied if **Availability** is set to *Set as Available \(Track Qty.\)* and the item quantity becomes 0.| |
|[Stock Items](IN_20_25_00.md) \(IN202500\) form, **eCommerce** tab| |
|**When Qty. Unavailable**: *Do Nothing*|**eCommerce** tab|No changes|Product management page &gt; **Purchasability** section|
|**When Qty. Unavailable**: *Set as Unavailable*|**eCommerce** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Pre-Order/Continue Selling*|**eCommerce** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|The following settings are applied if **When Qty. Unavailable** is set to *Store Default* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form and the item quantity becomes 0.|
|[BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, **Inventory** tab| |
|**When Qty. Unavailable**: *Do Nothing*|**Inventory** tab|No changes|Product management page &gt; **Purchasability** section|
|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Unavailable*|**Inventory** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Pre-Order*|**Inventory** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

