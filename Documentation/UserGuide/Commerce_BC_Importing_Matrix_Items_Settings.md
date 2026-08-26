# Import of Products with Variants: Settings of Imported Items {#_a1a17e74-3c8f-2218-db49-a951e78b2254 .concept}

You can import products with variants that have been defined in the external system instead of creating the products manually in Acumatica ERP. When you import these products, the following items are created in Acumatica ERP:

-   Template items on the [Template Items](../Shared/../UserGuide/IN_20_30_00.md) \(IN203000\) form
-   Matrix items on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form, depending on whether the products represent physical items

## Template Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to a template item on the [Template Items](IN_20_30_00.md) \(IN203000\) form based on the corresponding settings of the source product from the product management page in the BigCommerce store.

|**Acumatica ERP Element**|**BigCommerce Element**|
|-------------------------|-----------------------|
|Summary area|
|**Description**|**Product name**|
|**Price/Cost** tab|
|**Default Price**|**Default Price**|
|**MSRP**|**MSRP**|
|**Description** tab|
|Item description|**Description**|
|**Attributes** tab|
|Each product option from the store that has been mapped to an attribute of the template item. Unused attributes of the item class appear in the table as inactive, with the Active check box cleared.|Product options|
|**Configuration** tab|
|**Default Column Attribute ID**The template item is assigned the default column attribute of the corresponding item class. If the item class has no default column attribute specified, the connector uses the attribute mapped to the first product option.

|The first product option|
|**Default Row Attribute ID**The template item is assigned the default row attribute of the corresponding item class. If the item class has no default row attribute specified, the connector uses the attribute mapped to the second product option.

|The second product option|
|**eCommerce** tab|
|**Visibility**. The system inserts one of the following options, depending on the settings of the corresponding product:

-   *Visible*: The **Visible on Storefront** check box is selected, and the **Set as a Featured Product on my Storefront** check box is cleared.
-   *Invisible*: The **Visible on Storefront** check box is cleared.
-   *Featured*: The **Visible on Storefront** and **Set as a Featured Product on my Storefront** check boxes are selected.

|**Visible on Storefront**, **Set as a Featured Product on my Storefront**|
|**Availability**

 The system inserts one of the following options, depending on the settings of the corresponding product:

 -   *Set as Available \(Track Qty.\)*: The **This product can be purchased in my online store** option button is selected in the **Purchasability** section, and the **Track Inventory** is selected.
-   *Set as Available \(Don't Track Qty.\)*: The **This product can be purchased in my online store** option button is selected in the **Purchasability** section and the **Track Inventory** check box is cleared.
-   *Set as Unavailable*: The **This product cannot be purchased in my online store** option button is selected in the **Purchasability** section.
-   *Set as Pre-Order*: The **This product is coming soon but I want to take pre-orders** option button is selected in the **Purchasability** section.

|**Purchasability**, **Track Inventory**|
|**When Qty. Unavailable**

 The system always inserts the *Store Default* option.

|Not applicable|

## Matrix Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to each matrix item created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form when you import a product with variants. The system uses the settings of the template item that it has created for the product and the settings of the source product and product variants, which are specified on the product management page in the BigCommerce store.

|**Acumatica ERP Element**|**BigCommerce Element**|
|-------------------------|-----------------------|
|Summary area|
|**Description**

 The system composes the description of the matrix item as follows: *&lt;SKU&gt; \(&lt;Product name&gt;\)*.

|**SKU**, **Product name**|
|**Price/Cost** tab|
|**Default Price**|**Default Price** \(**Variants** section\)|
|**MSRP**|**MSRP** \(**Variants** section\)|
|**Attributes** tab|
|**Sales Categories** table. For each sales category of the product, the system adds a row to the table on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form and inserts the sales category defined on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) \(IN204060\) form that has a matching description. If there is no sales category on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) form with a matching description, the system creates a new one in addition to listing this category for the item.

**Tip:** The system imports sales categories only if import has been configured for the *Sales Category* entity on the **Entities** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form.

|**Sales Categories**|
|**Cross-Reference** tab|
|**Alternate ID** \(in a row with the *External SKU* alternate type\)|**SKU** \(**Variants** section\)|
|**Alternate ID** \(in a row with the *GTIN/EAN/UPC/ISBN* alternate type\)

 The barcodes of the EAN and UPC types can have only numeric values of 8, 12, 13, or 14 symbols. The barcodes of the ISBN type can have only numeric values up to 14 symbols.

|**Global Trade Item Number \(GTIN\)**|
|**eCommerce** tab|
|**Visibility**. The system inserts one of the following options, depending on the settings of the corresponding product:

-   *Visible*: The **Visible on Storefront** check box is selected, and the **Set as a Featured Product on my Storefront** check box is cleared.
-   *Invisible*: The **Visible on Storefront** check box is cleared.
-   *Featured*: The **Visible on Storefront** and **Set as a Featured Product on my Storefront** check boxes are selected.

|**Visible on Storefront**, **Set as a Featured Product on my Storefront**|
|**Availability**. For a stock item, the system inserts one of the following options, depending on the settings of the corresponding product:

-   *Set as Available \(Track Qty.\)*: The **This product can be purchased in my online store** option button is selected in the **Purchasability** section, and the **Track Inventory** check box is selected.
-   *Set as Available \(Don't Track Qty.\)*: The **This product can be purchased in my online store** option button is selected in the **Purchasability** section, and the **Track Inventory** check box is cleared.
-   *Set as Unavailable*: The **This product cannot be purchased in my online store** option button is selected in the **Purchasability** section.
-   *Set as Pre-Order*: The **This product is coming soon but I want to take pre-orders** option button is selected in the **Purchasability** section.

 For a non-stock item, the system inserts one of the following options, depending on the option buttons selected in the **Purchasability** section for the corresponding product:

-   *Set as Available \(Don't Track Qty.\)*: The **This product can be purchased in my online store** option button is selected.
-   *Set as Unavailable*: The **This product cannot be purchased in my online store** option button is selected.
-   *Set as Pre-Order*: The **This product is coming soon but I want to take pre-orders** option button is selected.

|**Purchasability**, **Track Inventory**|
|**When Qty. Unavailable**

 For a stock item, the system inserts the *Store Default* option.

| |
|**Packaging** tab|
|**Weight**

 The system populates the box for only a stock item.

|**Weight**|

## Assignment of the Tax Category { .section}

During the import of a product with variants from the Shopify store, the system searches for a tax category to assign to the corresponding template and matrix items created on the [Template Items](IN_20_30_00.md) \(IN203000\), [Stock Items](IN_20_25_00.md) \(IN202500\), and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms as follows until it finds a tax category:

1.  It checks the mapping settings on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form for the corresponding store and the *Template Item* entity.
2.  It checks the substitution list specified in the **Tax Categories** box \(**Substitution Lists** section\) on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
3.  It checks the tax category from the item class assigned to the template and matrix item on the **General** tab of the [Template Items](IN_20_30_00.md), [Stock Items](IN_20_25_00.md), and [Non-Stock Items](IN_20_20_00.md) forms.

**Parent topic:**[Importing Products with Variants](../UserGuide/Commerce_BC_Importing_Matrix_Items_Mapref.md)

