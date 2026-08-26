# Product Import: Settings of Imported Items {#_b6d67e74-3c8f-7401-bd49-f066e78b2254 .concept}

You can import products that have been defined in the Shopify store instead of creating them manually in Acumatica ERP. The imported products are defined as stock or non-stock items on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

## Assignment of Item Classes { .section}

During the import of a product, some settings of the stock or non-stock item created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, are imported from the Shopify store, whereas other settings are copied from the item class assigned to the item. To determine which item class the system should assign to the item, it uses the type of the imported product from the **Type** box in the **Product organization** section of the product management page in the Shopify store and does the following until it finds a class:

1.  Checks whether the product type is mapped to any item class in the store's substitution list, which is specified in the **Substitution List for Item Classes** box on the **Inventory** tab \(**Import Settings** section\) of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  Checks whether the product type is the same as any item class that has been defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
3.  Assigns the default item class that has been specified for the store. It finds this class in the **Item Class for Stock Items** or **Item Class for Non-Stock Items** box of the **Inventory** tab \(**Import Settings** section\) of the [Shopify Stores](BC_20_10_10.md) form.

## Item Settings Imported from the External System { .section}

The following table shows the settings that are assigned to a stock or non-stock item created in Acumatica ERP on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, respectively, based on the corresponding settings of the source product from the product management page in the Shopify store.

|**Acumatica ERP Element**|**Shopify Element**|
|-------------------------|-------------------|
|Summary area|
|**Description**|**Title**|
|**Item Status**

 An item is assigned the *Active* status if the corresponding product has the *Active* status, and the *Inactive* status if the product has the *Draft* status.

|**Status**|
|**Price/Cost** tab|
|**Default Price**|**Price**|
|**MSRP**|**Compare-at price**|
|**Description** tab|
|Item description|**Description**|
|**Cross-Reference** tab|
|**Alternate ID** \(in a row with the *External SKU* alternate type\)|**SKU**|
|**Alternate ID** \(in a row with the *Barcode* alternate type\)|**Barcode**|
|**eCommerce** tab|
|**Availability**

 For a stock item, the *Set as Available \(Track Qty.\)* option is inserted in the box for the item if the corresponding product has the **Track quantity** check box selected, and the *Set as Available \(Don't Track Qty.\)* option is inserted if the check box is cleared.

 For a non-stock item, the systems ignores the state of the **Track quantity** check box and always selects the *Set as Available \(Don't Track Qty.\)* option.

|**Track quantity**|
|**When Qty. Unavailable**

 For a stock item, the *Do Nothing* option is selected in the box for the item if the corresponding product has the **Continue selling when out of stock** check box selected, and the *Set as Unavailable* option is selected if the check box is cleared.

|**Continue selling when out of stock**|
|**Packaging** tab|
|**Weight**

 The system populates the box for only stock items.

|**Weight**|
|**Weight UOM**

 The system populates the box for only stock items.

|**Weight**, the unit of measure|

## Assignment of the Tax Category { .section}

During the import of a product from the Shopify store, the system searches for the tax category to assign to the corresponding stock or non-stock item created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form as follows until it finds a tax category:

1.  It checks the mapping settings on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form for the corresponding store and the *Stock Item* or *Non-Stock Item* entity.
2.  It checks the substitution list specified in the **Tax Categories** box \(**Substitution Lists** section\) on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
3.  It checks the tax category from the item class assigned to the item on the **General** tab of the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form.

## Assignment of the Vendor { .section}

During the import of a product, if the product has a vendor specified in the **Vendor** box in the **Product organization** section of the product management page in the Shopify store, and this vendor matches any existing vendor name in the **Account Name** box on the **General** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, the system adds a row with this vendor on the **Vendors** tab to the corresponding stock or non-stock item created or updated on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. Also, the system selects the **Default** check box in the row with the added vendor.

**Parent topic:**[Importing Products](../UserGuide/Commerce_SP_Importing_Products_Mapref.md)

