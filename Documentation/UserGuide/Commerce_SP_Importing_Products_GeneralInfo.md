# Product Import: General Information {#_b6d67e74-3c8f-9812-bd49-f066e78b3378 .concept}

You can import to Acumatica ERP products that were initially configured in the Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how to import products from the Shopify store to Acumatica ERP, where they will be defined as stock and non-stock items.

## Applicable Scenarios { .section}

You import products from an external system to Acumatica ERP in the following cases:

-   You are initially configuring Acumatica ERP and need to import products that have already been defined in the external system.
-   You manage product information in the external system, have updated any product settings after the product was synchronized with Acumatica ERP, and need the changes to be reflected in the corresponding inventory items in Acumatica ERP.

## Configuration of Importing Products { .section}

Before initially importing products from the Shopify store to Acumatica ERP, you need to specify the needed store settings. To do this, on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you select the store and perform the following general steps:

1.  You activate the *Stock Item* and *Non-Stock Item* entities and specify the proper sync direction for them. To do this, for the *Stock Item* and *Non-Stock Item* entities on the **Entity Settings** tab, you select the **Active** check box and select the *Import* option in the **Sync Direction** column.
2.  You decide whether the inventory ID assigned to each item imported to Acumatica ERP should be the stock-keeping unit \(SKU\) of the corresponding product in the external system or an ID based on an auto-numbering sequence defined in Acumatica ERP. Depending on this decision, you do one of the following on the **Inventory Settings** tab \(**Import Settings** section\):

    -   Leave the **Inventory Numbering Sequence** box empty. In this case, for each imported item in Acumatica ERP, the system populates the **Inventory ID** box of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form with the SKU of the corresponding product in the external system. If a product has no SKU in the external system, the system fails to import it because the assignment of an SKU is required.
    -   Select an auto-numbering sequence in the **Inventory Numbering Sequence** box. The system uses this numbering sequence to generate inventory identifiers for imported stock and non-stock items.
    **Note:**

    Regardless of whether you specify any numbering sequence, the system adds a row for each imported item on the **Cross-Reference** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) form. In the row, it inserts the product SKU from the external system as an alternate ID of the *External SKU* type.

3.  You specify the default item classes for imported items in the **Item Class for Stock Items** and **Item Class for Non-Stock Items** boxes on the **Inventory Settings** tab \(**Import Settings** section\).
4.  Optional: You specify a substitution list in the **Substitution List for Item Classes** box. On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, the specified substitution list should contain mapping between the product types used in the Shopify store and the item classes defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

## Product Import and Item Creation { .section}

The system imports the products from the Shopify store to Acumatica ERP as part of the synchronization of the *Stock Item* and *Non-Stock Item* entities, depending on whether the products are physical or not. First, an ecommerce manager prepares data on the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, and then they process it on the [Process Data](BC_50_15_00.md) \(BC501500\) form.

Depending on the state of the **This is a physical product** check box for a product in the **Shipping** section of the product management page in the Shopify store, the system imports the product as follows:

-   As a stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form if the check box is selected
-   As a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form if the check box is cleared

During the import, some settings of the created stock and non-stock items are imported from the external system, while others are copied from the item class assigned to the items. For more details on how the system populates the settings of imported items, see [Product Import: Settings of Imported Items](Commerce_SP_Importing_Products_Settings.md).

If a product has been already imported to Acumatica ERP and some product settings are changed in the Shopify store, during the next import, the system updates the corresponding existing stock or non-stock item.

## Limitations of Importing Products { .section}

The import of products from the Shopify store has the following limitations:

-   The length of the product SKU must not exceed the length of the *INVENTORY* segmented key configured on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) \(CS202000\) form; otherwise, the import fails.
-   Products with the *Archived* status are excluded from import.
-   Tags and product images are not imported.​
-   The item class is assigned only with the first synchronization when Acumatica ERP creates items. After that, if the product type is changed in the Shopify store, it is not synchronized during import.
-   The price and availability settings are imported only when Acumatica ERP creates items. After that, these settings are updated in Acumatica ERP and exported to the external system to prevent discrepancies in the systems.

Also, an alternate ID of the *External SKU* type assigned to an inventory item during import cannot be updated on the **Cross-Reference** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form. However, the row of the *External SKU* type with this alternate ID can be deleted in Acumatica ERP; this will not lead to the deletion of the SKU in the external system during the export of the item from Acumatica ERP. The SKU can also be updated in the external system and synchronized during the import to Acumatica ERP; in this case, the system adds the new SKU to the existing inventory item.

**Note:**

If there is no synchronization record for a product being imported, the external SKU is used to map the product with an existing item in Acumatica ERP. In this case, during the import of products, the system searches for a product that matches that matches an inventory item. It performs the following steps for each product until it finds a match:

1.  Checks if the SKU matches the inventory ID​
2.  Checks if the SKU matches an alternate ID of the *Global* type
3.  Checks if the SKU matches an alternate ID of the *External SKU* type

**Parent topic:**[Importing Products](../UserGuide/Commerce_SP_Importing_Products_Mapref.md)

