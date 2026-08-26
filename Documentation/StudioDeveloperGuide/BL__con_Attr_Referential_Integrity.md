# Referential Integrity {#_5dcd7912-7a39-4d7d-9350-f2d9f19fb83f .concept}

You can use the attributes listed in the following table to implement referential integrity at runtime.

|Attribute|Description|
|---------|-----------|
|[PXParent](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=98040805-896c-3949-18d7-6f6f2fa6d752)|Creates a reference to a parent data record. By default, when the parent data record is deleted, all child data records that reference it are also deleted. \(You can change this behavior by using the LeaveChildren property.\)|
|[PXDBChildIdentity](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7936edb0-f225-a3e6-b177-549d148de056)|Indicates that a DAC field references an auto-generated key field from another table, and ensures that the field value is correct after changes have been committed to the database.|
|[PXLineNbr](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0ee90a7b-483e-2a6a-2ced-ee256f19859c)|Generates unique line numbers that identify child data records in the parent-child relationship.|

Note that all the attributes in the table above add server-side logic used at runtime. The referential integrity is implemented on the server side.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

