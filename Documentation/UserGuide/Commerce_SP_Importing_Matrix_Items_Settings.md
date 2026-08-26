# Import of Products with Variants: Settings of Imported Items {#_b6d67e74-3c8f-2218-db49-a951e78b2254 .concept}

You can import products with variants that have been defined in the external system instead of creating the products manually in Acumatica ERP. When you import these products, the following items are created in Acumatica ERP:

-   Template items on the [Template Items](../Shared/../UserGuide/IN_20_30_00.md) \(IN203000\) form
-   Matrix items on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form, depending on whether the products represent physical items

## Template Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to a template item on the [Template Items](IN_20_30_00.md) \(IN203000\) form based on the corresponding settings of the source product from the product management page in the Shopify store.

|**Acumatica ERP Element**|**Shopify Element**|
|-------------------------|-------------------|
|Summary area|
|**Description**|**Title**|
|**General** tab|
|**Item Status**

 The template item is assigned the *Active* status if the corresponding product has the *Active* status and the *Inactive* status if the product has the *Draft* status.

|**Status**|
|**Description** tab|
|Item description|**Description**|
|**Attributes** tab|
|Each product option from the store that has been mapped to an attribute of the template item. Unused attributes of the item class appear in the table as inactive, with the Active check box cleared.|Product options|
|**Configuration** tab|
|**Default Column Attribute ID**The template item is assigned the default column attribute of the corresponding item class. If the item class has no default column attribute specified, the connector uses the attribute mapped to the first product option.

|The first product option|
|**Default Row Attribute ID**The template item is assigned the default row attribute of the corresponding item class. If the item class has no default row attribute specified, the connector uses the attribute mapped to the second product option.

|The second product option|

## Matrix Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to each matrix item created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form when you import a product with variants. The system uses the settings of the template item that it has created for the product and the settings of the source product and product variants, which are specified on the product management and variant management pages in the Shopify store.

|**Acumatica ERP Element**|**Shopify Element**|
|-------------------------|-------------------|
|Summary area|
|**Description**

 The system composes the description of the matrix item as follows: *&lt;SKU&gt; \(&lt;Title&gt;\)*.

|**SKU**, **Title**|
|**Price/Cost** tab|
|**Default Price**|**Price**|
|**MSRP**|**Compare-at price**|
|**Description** tab|
|Item description

 Because variants have no description, the system uses the description of the product.

|**Description**|
|**Cross-Reference** tab|
|**Alternate ID** \(in a row with the *External SKU* alternate type\)|**SKU**|
|**Alternate ID** \(in a row with the *Barcode* alternate type\)|**Barcode**|
|**eCommerce** tab|
|**Availability**

 The *Set as Available \(Track Qty.\)* option is inserted in the box for the item if the corresponding product has the **Track quantity** check box selected, and the *Set as Available \(Don't Track Qty.\)* option is inserted if the check box is cleared.

|**Track quantity**|
|**When Qty. Unavailable**

 The *Do Nothing* option is inserted in the box for the item if the corresponding product has the **Continue selling when out of stock** check box selected, and the *Set as Unavailable* option is inserted if the check box is cleared.

|**Continue selling when out of stock**|
|**Packaging** tab|
|**Weight**

 The system populates the box for only a stock item.

|**Weight**|
|**Weight UOM**

 The system populates the box for only a stock item.

|**Weight**, the unit of measure|

## Assignment of the Tax Category { .section}

During the import of a product with variants from the Shopify store, the system searches for a tax category to assign to the corresponding template and matrix items created on the [Template Items](IN_20_30_00.md) \(IN203000\), [Stock Items](IN_20_25_00.md) \(IN202500\), and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms as follows until it finds a tax category:

1.  It checks the mapping settings on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form for the corresponding store and the *Template Item* entity.
2.  It checks the substitution list specified in the **Tax Categories** box \(**Substitution Lists** section\) on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
3.  It checks the tax category from the item class assigned to the template and matrix item on the **General** tab of the [Template Items](IN_20_30_00.md), [Stock Items](IN_20_25_00.md), and [Non-Stock Items](IN_20_20_00.md) forms.

## Assignment of the Vendor { .section}

During the import of a product with variants, the system may import vendor data for the imported products if both of the following conditions are met:

-   The product has a vendor specified in the **Vendor** box \(**Product organization** section\) of the product management page in the Shopify store.
-   The vendor specified for the product matches any existing vendor name in the **Account Name** box on the **General** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

In this case, the system adds a row with this vendor on the **Vendors** tab to the corresponding template and matrix items created or updated on the [Template Items](IN_20_30_00.md) \(IN203000\), [Stock Items](IN_20_25_00.md) \(IN202500\), and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. Also, the system selects the **Default** check box in the row with the added vendor.

**Parent topic:**[Importing Products with Variants](../UserGuide/Commerce_SP_Importing_Matrix_Items_Mapref.md)

