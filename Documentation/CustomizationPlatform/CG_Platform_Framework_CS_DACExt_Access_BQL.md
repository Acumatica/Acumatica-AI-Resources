# From a BQL Statement

In BQL expressions, you have to refer to the custom field by its BQL name in the extension class.

For example, after you have added the `UsrSearchKeywords` field to the `InventoryItemExtension` class, which is a DAC extension for the `InventoryItem` class, the field is accessible in BQL, as shown in the code below.

```

//The usrLocalTaxCategoryID custom field is defined
//in the InventoryItemExtension DAC extension for the InventoryItem class
PXSelect<InventoryItemExtension, 
    Where<InventoryItemExtension.usrLocalTaxCategoryID, IsNotNull>>

```

**Parent topic:**[Access to a Custom Field](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_Access.md)

