# Attributes on DACs {#_feec5367-994f-482c-b662-1006346d61c6 .concept}

You can place the attributes listed in the following table on the data access class \(DAC\) declaration.

|Attribute|Description|
|---------|-----------|
|[PXPrimaryGraph](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=842ed8f6-e659-45ef-3083-6696cf1fecaf)|Specifies the graph that is used by default to edit a data record.|
|[PXCacheName](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=052f5683-d20b-da61-4e6c-47a966162fb4)|Specifies the user-friendly name of the DAC. The name is displayed in the user interface.|
|[PXTable](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=66a7da06-4661-83a7-233e-b1b48ea1a1b0)|Binds a DAC that derives from another DAC to the table having the name of the derived table. Without the attribute, the derived DAC will be bound to the same table as the DAC that starts the inheritance hierarchy.|
|[PXAccumulator](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b95bb57b-03ec-43b4-3d36-334d6662711c)|Updates the values of a data record in the database according to the policies specified in the attribute parameters.|
|[PXHidden](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=615f145d-3415-1060-8081-20bfc5f23a76)|Gives the developer the ability to hide a DAC, graph, or view from the selectors of DACs and graphs, and from generic inquiries, reports, and the web services API.|
|[PXNonInstantiatedExtension](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=996b9a7a-545b-2870-ebb8-dfa777c0f724)|Specifies that the DAC extension should not be instantiated multiple times. This attribute is typically added to a DAC extension that is created specifically for the purpose of overriding some attributes. Such an extension does not contain any field values, and by using this attribute, you prevent the extension from being instantiated multiple times, which helps save memory resources.|

The PXProjection attribute can also mark a DAC. See [Data Projection](BL__con_Attr_Projection.md) for more details.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

