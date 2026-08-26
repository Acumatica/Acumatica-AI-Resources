# From a Field Attribute {#_42cc37fb-86ed-43e7-b962-234f2690ebd8 .concept}

In DAC extensions, you have to refer to a custom field by its BQL name.

After you have added the `UsrSearchKeywords` field to the `InventoryItemExtension` class, which is a DAC extension for the `InventoryItem` class, the field is accessible in other DAC extensions.

For example, if you need to specify the type of the custom DAC field. For example, in attributes, you can use the `typeof` operator, as shown in the code below.

```

//The usrLocalTaxCategoryID custom field is defined
//in the InventoryItemExtension DAC extension for the InventoryItem class
[PXSelector(typeof(InventoryItemExtension.usrLocalTaxCategoryID))]
```

**Parent topic:**[Access to a Custom Field](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_Access.md)

