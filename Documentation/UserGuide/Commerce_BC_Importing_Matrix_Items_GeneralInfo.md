# Import of Products with Variants: General Information {#_a1a17e74-3c8f-2194-bd49-f971e78b3378 .concept}

You can import to Acumatica ERP products with variants that were initially configured in the BigCommerce store if the *Matrix Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Tip:** *Variants* are versions of the product with different traits or attributes—which are also referred to in BigCommerce as *options*—such as color, scent, size, and material.

During the import of products with variants, the corresponding template items and matrix items are created in Acumatica ERP. A matrix item is a stock or non-stock item that corresponds to a product with a particular set of attributes. A template item is a high-level item that contains the default settings of a particular group of matrix items, such as the attributes in the matrix rows and columns.

## Learning Objectives { .section}

In this chapter, you will learn how to import products with variants from the BigCommerce store to Acumatica ERP, where they will be defined as template items and matrix items.

## Applicable Scenarios { .section}

You import products from an external system to Acumatica ERP in the following cases:

-   You are initially configuring Acumatica ERP and need to import products that have already been defined in the external system.
-   You manage product information in the external system, have updated any product settings after the product was synchronized with Acumatica ERP, and need the changes to be reflected in the corresponding inventory items in Acumatica ERP.

## Configuration of Importing Products with Variants { .section}

Before initially importing products with variants from the BigCommerce store to Acumatica ERP, you need to perform the following general steps:

1.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store and specify the following settings:
    1.  For the *Template Item* entity on the **Entity Settings** tab, you select the **Active** check box and select *Import* in the **Sync Direction** column.
    2.  On the **Inventory Settings** tab \(**Import Settings** section\), you select an auto-numbering sequence in the **Inventory Numbering Sequence** box. The system uses that numbering sequence to generate the identifiers for imported template and matrix items.
2.  On the [Attributes](../Shared/../UserGuide/CS_20_50_00.md) \(CS205000\) form, you perform the following steps:
    1.  You make sure that Acumatica ERP has an attribute that corresponds to each of the product variants on the product management page in the external system. To optimize auto-matching during the import, specify an attribute description that matches the variant name on the product management page in the external system.
    2.  You make sure that each attribute has the set of values that the variant in the external system has. In the table, specify a description for each attribute value that matches the variant value on the product management page in the external system.
3.  On the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) \(IN201000\) form, you make sure that at least one item class has been defined for the import of template and matrix items. In the right pane of the form, in the topmost table on the **Attributes** tab, each item class must have the set of attributes with the following settings:

    -   **Active**: Selected
    -   **Category**: *Variant*
    Also, in the **Default Column Attribute ID** and **Default Row Attribute ID** boxes below the table, you must specify different default attributes. If the item class has only a single attribute, you should fill in only one of the boxes with it.


## Product Import and Item Creation { .section}

The system imports products with variants from the BigCommerce store to Acumatica ERP while synchronizing the *Template Item* entity if the products have variants in the **Variations** section of the product management page in the BigCommerce store. To import products with variants, you perform the following general steps:

1.  On the [Prepare Data](../Shared/../UserGuide/BC_50_10_00.md) \(BC501000\) form, you prepare the data of the *Template Item* entity for import.

    As a result, for the first import, the system creates mapping records for the product on the [Attribute Mapping for Template Item Import](../Shared/../UserGuide/BC_20_30_00.md) \(BC203000\) form. The mapping has the product identifier, its description, and variants with values.

2.  On the [Attribute Mapping for Template Item Import](../Shared/../UserGuide/BC_20_30_00.md) form, for the mapping records prepared for the product, you assign an item class and attributes with values as follows:
    1.  In the **ERP Item Class** column of each row, you specify an item class that has been defined on the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) \(IN201000\) form and will be assigned to the imported items. The system uses the selected item class to insert the settings of the template and matrix items during the creation. You select the item class in one of the following ways:

        -   Manually select the item class in each row.
        -   Select an item class in the **Item Class to Assign** box in the Summary area, select the check box in the Selected column, and then click **Update Item Class** on the form toolbar to make the system automatically inserts the selected item class to the selected row.

            **Tip:**

            You use this method as an easier way to assign the same item class to multiple products being imported.

        Regardless of how you have inserted the item class for a particular row, the system automatically assigns the inserted item class to all the rows that have the same identifier in the **External ID** column as the one in the updated row. You cannot specify different item classes for a product and its variants.

        Also, after the selection of the item class in any row, the system attempts to populate the **ERP Attribute** and **ERP Attribute Value** columns with the attributes and their values defined on the [Attributes](../Shared/../UserGuide/CS_20_50_00.md) \(CS205000\) form and specified in the selected item class. If the description of an attribute matches the value in the **External Option** column, the system adds this attribute to the **ERP Attribute** columns of the mapping. If the description of one of the values of the selected attribute matches the **External Option Value**, the system adds this attribute value to the **ERP Attribute Value** columns of the mapping.

    2.  If the system does not populate the **ERP Attribute** and **ERP Attribute Value** columns for any row, you fill them in manually. Once you specify an attribute for an external option in a mapping, the system automatically inserts this attribute for all the mappings with the same product identifier and external option.
    3.  To complete the mapping of the product variants and Acumatica ERP attributes, you save the changes. Then you can proceed with the import.
3.  On the [Process Data](../Shared/../UserGuide/BC_50_15_00.md) \(BC501500\) form, you process the synchronization records prepared for the *Template Item* entity.

As a result, for each imported product with variants, the system creates a template item on the [Template Items](IN_20_30_00.md) \(IN203000\) form. It also creates a matrix item for each combination of the variant and its value on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, depending on whether the product is physical or not. That is, depending on the option selected in the **Product Type** box for the product on the product management page \(**Basic Information** section\) of the BigCommerce store, the system imports the product variants as follows:

-   As stock items on the [Stock Items](IN_20_25_00.md) \(IN202500\) form if the *Physical* option is selected
-   As non-stock items on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form if the *Digital* option is selected

During the import, some settings of the created template and matrix items are imported from the external system,while others are copied from the item class specified on the [Attribute Mapping for Template Item Import](BC_20_30_00.md) form. Unused attributes of the item class appear as inactive for the imported template item on the **Attributes** tab of [Template Items](IN_20_30_00.md) form. For more details on how the system inserts the settings of imported items, see [Import of Products with Variants: Settings of Imported Items](Commerce_BC_Importing_Matrix_Items_Settings.md).

## Product Synchronization { .section}

If a product with variants has been already imported to Acumatica ERP and any product settings have been changed in the external system, during the next import, the system updates the corresponding template and matrix items in Acumatica ERP.

If a new variant value is added to an already-imported product, during the next import, the system uses the item class assigned to the corresponding template item to map the new variant value with one of the values of the corresponding attribute. If the mapping is successful, the system creates the matrix items. Otherwise, the import fails; in this case, you need to process the created mapping records on the [Attribute Mapping for Template Item Import](../Shared/../UserGuide/BC_20_30_00.md) \(BC203000\) form manually and then repeat the synchronization.

## Limitations of Importing Products with Variants { .section}

The following limitations apply to the importing of product with variants from the BigCommerce store:

-   Product images are not imported.​
-   The price and availability settings are imported only when Acumatica ERP creates items. After that, these settings are updated in Acumatica ERP and exported to the external system to prevent discrepancies in the systems.
-   Sales prices assigned to matrix items are not exported. The connector exports only the sales prices defined for the template item and applies them to the product and its variants.

Also, an alternate ID of the *External SKU* type assigned to an inventory item during import cannot be updated on the **Cross-Reference** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form. However, the row of the *External SKU* type with this alternate ID can be deleted in Acumatica ERP; this will not lead to the deletion of the SKU in the external system during the export of the item from Acumatica ERP. The SKU can also be updated in the external system and synchronized during the import to Acumatica ERP; in this case, the system adds the new SKU to the existing inventory item.

**Note:**

If there is no synchronization record for a product variant being imported, the external SKU is used to map the product with an existing item in Acumatica ERP. In this case, during the import of products with variants, the system searches for a product variant that matches an existing inventory item. It performs the following steps for each product variant until it finds a match:

1.  Checks if the SKU matches the inventory ID​
2.  Checks if the SKU matches an alternate ID of the *Global* type
3.  Checks if the SKU matches an alternate ID of the *External SKU* type
4.  Checks if the product title matches the item description

**Parent topic:**[Importing Products with Variants](../UserGuide/Commerce_BC_Importing_Matrix_Items_Mapref.md)

