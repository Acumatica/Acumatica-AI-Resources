# Stock Item Entity

This topic provides reference information about the standard filtering and field mapping used for the *Stock Item* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Stock Item Filtering

Filters are applied during the export of stock items. A stock item is skipped if any of the following is true:

-   The stock item is a matrix item—that is, a template is specified for the item in the **Template ID** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Matrix items are synchronized as part of the synchronization of template items.
-   No item sales category is assigned to the stock item and no default category is selected in the **Default Stock Categories** box on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

## Merging of Duplicates

During the export of stock items from Acumatica ERP, a stock item is merged with an existing product in BigCommerce if at least one of the following conditions is met:

-   The stock item's description in Acumatica ERP—that is, the value in the **Description** box on the [Stock Items](IN_20_25_00.md) \(IN202500\) form—matches the **Product Name** of the product in BigCommerce.
-   The stock item's ID in Acumatica ERP—that is, the value in the **Inventory ID** box on the [Stock Items](IN_20_25_00.md) form—matches the **SKU** of the product in BigCommerce.

## Stock Item Export Mapping

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of stock items to BigCommerce.

<table id="_2c8018cf-2b39-4643-80a9-2b57f6be3e0f"><thead><tr><th colspan="2">

**Source Fields \(Acumatica ERP\)**

</th><th colspan="3">

**Target Fields \(BigCommerce\)**

</th></tr><tr><th>

Field Name

</th><th>

Form Object

</th><th>

Field Name

</th><th>

Page Object

</th><th>

Notes

</th></tr></thead><tbody><tr><td colspan="2">

[Stock Items](IN_20_25_00.md) \(IN202500\) form

</td><td colspan="3">

 

</td></tr><tr><td>

**Inventory ID**

</td><td>

Summary area

</td><td>

**SKU**

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

**SKU** also appears under **Product Identifiers**.

</td></tr><tr><td>

**Description**

</td><td>

Summary area

</td><td>

**Product Name**

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

The **Description** in Acumatica ERP must be unique.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Product Type**: *Physical*

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td>

**Description**

</td><td>

**Description** tab

</td><td>

**Description**

</td><td>

Product management page &gt; **Description** section

</td><td>

 

</td></tr><tr><td>

**Weight**

</td><td>

**Packaging** tab &gt; **Dimensions**section

</td><td>

**Weight**

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td>

**Default Price**

</td><td>

**Price/Cost** tab &gt; **Price Management** section

</td><td>

**Default Price**

</td><td>

Product management page &gt; **Pricing** section

</td><td>

If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the default price defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.

</td></tr><tr><td>

**MSRP**

</td><td>

**Price/Cost** tab &gt; **Price Management** section

</td><td>

**MSRP**

</td><td>

Product management page &gt; **Pricing** section

</td><td>

If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system exports the MSRP defined in the currency of the branch selected on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.

</td></tr><tr><td>

**Current Cost**

</td><td>

**Price/Cost** tab &gt; **Standard Cost** section

</td><td>

**Cost**

</td><td>

Product management page &gt; **Pricing** section

</td><td>

 

</td></tr><tr><td colspan="2">

**General** tab

</td><td colspan="3">

 

</td></tr><tr><td>

**Default Issue From**

</td><td>

**General** tab &gt; **Warehouse Defaults** section

</td><td>

**Bin Picking Number \(BPN\)**

</td><td>

Product management page &gt; **Product Identifiers** section

</td><td>

 

</td></tr><tr><td>

**Category ID**

</td><td>

**Attributes** tab &gt; **Sales Categories** table

</td><td>

**Categories**

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td colspan="2">

**eCommerce** tab

</td><td colspan="3">

 

</td></tr><tr><td>

**Visibility**: *Visible*

</td><td>

**eCommerce** tab

</td><td>

**Visible on Storefront**: Selected

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td rowspan="2">

**Visibility**: *Featured*

</td><td rowspan="2">

**eCommerce** tab

</td><td>

**Visible on Storefront**

</td><td>

Product management page &gt; **Basic Information** section

</td><td rowspan="2">

 

</td></tr><tr><td>

**Set as a Featured Product on my Storefront**

</td><td>

Product management page &gt; **Storefront Details** section

</td></tr><tr><td>

**Visibility**: *Invisible*

</td><td>

**eCommerce** tab

</td><td>

**Visible on Storefront**: Cleared

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td>

**Visibility**: *Unlisted*

</td><td>

**eCommerce** tab

</td><td>

**Visible on Storefront**: Cleared

</td><td>

Product management page &gt; **Basic Information** section

</td><td>

 

</td></tr><tr><td>

**Search Keywords**

</td><td>

**eCommerce** tab

</td><td>

**Search Keywords**

</td><td>

Product management page &gt; **Storefront Details** section

</td><td>

 

</td></tr><tr><td>

**Page Title**

</td><td>

**eCommerce** tab

</td><td>

**Page Title**

</td><td>

Product management page &gt; **Search Engine Optimization** section

</td><td>

 

</td></tr><tr><td>

**Meta Description**

</td><td>

**eCommerce** tab

</td><td>

**Meta Description**

</td><td>

Product management page &gt; **Search Engine Optimization** section

</td><td>

 

</td></tr><tr><td>

**Custom URL**

</td><td>

**eCommerce** tab

</td><td>

**Product URL**

</td><td>

Product management page &gt; **Search Engine Optimization** section

</td><td>

 

</td></tr><tr><td>

**URL** \(Image\)

</td><td>

**eCommerce** tab &gt; **Media URLs** table

</td><td>

**Images**

</td><td>

Product management page &gt; **Images &amp; Videos** section

</td><td>

 

</td></tr><tr><td>

**URL** \(Video\)

</td><td>

**eCommerce** tab &gt; **Media URLs** table

</td><td>

**Videos**

</td><td>

Product management page &gt; **Images &amp; Videos** section

</td><td>

 

</td></tr><tr><td colspan="2">

**Cross-Reference** tab

</td><td colspan="3">

 

</td></tr><tr><td>

**Alternate Type**: *Vendor Part Number*

</td><td>

**Cross-Reference** tab

</td><td>

**Manufacturer Part Number \(MPN\)**

</td><td>

Product management page &gt; **Product Identifiers** section

</td><td>

The first row for *Vendor Part Number* with the default vendor is used.

</td></tr><tr><td>

**Alternate Type**: *Barcode*

</td><td>

**Cross-Reference** tab

</td><td>

**Product UPC/EAN**

</td><td>

Product management page &gt; **Product Identifiers** section

</td><td>

The system searches for the matching cross-reference of the *Barcode* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

</td></tr><tr><td>

**Alternate Type**: *GTIN/EAN/UPC/ISBN*

</td><td>

**Cross-Reference** tab

</td><td>

**Global Trade Item Number \(GTIN\)**

</td><td>

Product management page &gt; **Product Identifiers** section

</td><td>

The system searches for the matching cross-reference of the *GTIN/EAN/UPC/ISBN* type to export as follows:

 1.  With the sales UOM
2.  With the base UOM
3.  With no UOM \(or any other UOM\)

</td></tr></tbody>
</table>

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

