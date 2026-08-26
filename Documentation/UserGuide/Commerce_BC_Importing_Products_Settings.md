# Product Import: Settings of Imported Items {#_b6a13e74-3c8f-7401-bd49-f066e78b2254 .concept}

You can import products that have been defined in the BigCommerce store instead of creating them manually in Acumatica ERP. These imported products are defined as stock or non-stock items on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

## Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to a stock or non-stock item created in Acumatica ERP on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form based on the corresponding settings of the source product from the product management page in the BigCommerce store.

|**Acumatica ERP Element**|**BigCommerce Element**|
|-------------------------|-----------------------|
|Summary area|
|**Description**|**Product Name**|
|**Item Status**

 The item is assigned either of the following statuses, depending on the option button selected in the **Purchasability** section of the corresponding product:

 -   *Active*: **This product can be purchased in my online store** or **This product is coming soon but I want to take pre-orders** is selected.
-   *Inactive*: **This product cannot be purchased in my online store** is selected.

|**Purchasability**|
|**Price/Cost** tab|
|**Default Price**|**Default Price**|
|**MSRP**|**MSRP**|
|**Description** tab|
|Item description|**Description**|
|**Attributes** tab|
|**Sales Categories** table. For each sales category of the product, the system adds a row to the table on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form and inserts the sales category defined on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) \(IN204060\) form that has a matching description. If there is no sales category on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) form with a matching description, the system creates a new one in addition to listing this category for the item.

**Tip:** The system imports sales categories only if import has been configured for the *Sales Category* entity on the **Entities** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form.

|**Sales Categories**|
|**Cross-Reference** tab|
|**Alternate ID** \(in a row with the *External SKU* alternate type\)|**SKU**|
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

During the import of a product from the BigCommerce store, the system searches for the tax category to assign to the corresponding stock or non-stock item created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form as follows until it finds a tax category:

1.  It checks the mapping settings on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form for the corresponding store and the *Stock Item* or *Non-Stock Item* entity.
2.  It checks the substitution list specified in the **Tax Categories** box \(**Substitution Lists** section\) on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
3.  It checks the tax category of the item class assigned to the item on the **General** tab of the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form.

**Parent topic:**[Importing Products](../UserGuide/Commerce_BC_Importing_Products_Mapref.md)

