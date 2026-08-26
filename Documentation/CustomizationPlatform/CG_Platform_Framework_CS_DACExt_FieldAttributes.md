# Customization of Field Attributes in DAC Extensions {#_664aaeee-0bdc-427f-83da-bd931823c668 .concept}

If you have customization code that replaces the original attributes of a field with custom attributes, after you upgrade Acumatica ERP to a new version, new functionality may became unavailable, as the following diagram shows.

![](images/CG_Platform_DAC_CustAttributes.png "Possible result of using the Replace (default) method to customize the attributes of a DAC field")

To address this issue, the customization framework provides advanced possibilities for you to control the field customization by using additional attributes in the DAC extension.

When you customize Acumatica ERP, you can specify how the system should apply the original and custom attributes to the field. Thus, you can make the customizations more flexible and use the collections of original attributes that could be updated between Acumatica ERP versions.

To specify the way the system should apply the field attributes in a DAC extension, you can use the following attributes.

|Attribute or Attributes|Description|
|-----------------------|-----------|
|[PXMergeAttributes](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=dce254b6-4fff-887a-4d0c-914284b2ad8b)|The attribute specifies how to apply custom attributes to the existing ones.|
|[PXRemoveBaseAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d74c58a7-42e5-6927-6f55-2bebb8ce838a)|This attribute removes the specified existing attribute.|
|The following strong typed customization attributes of the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class:

 -   [PXCustomize.PXUIFieldAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=360c50f2-fe12-c722-9f83-6108aefb0082): Customizes the [PXUIFieldAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute.
-   [PXCustomize.PXSelectorAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=fcb5574a-6d3f-7601-6aaa-8f2d3cecbf88): Customizes the [PXSelectorAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attribute.
-   [PXCustomize.PXEntityAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=475eaccc-7d64-d109-3279-fd781c4d836e): Customizes the descendants of the [PXEntityAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=49d85609-04b5-64e1-0779-e3f1647568c5) attribute. This attribute doesn't customize the [PXEntityAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=49d85609-04b5-64e1-0779-e3f1647568c5) attribute itself because the PXEntityAttribute attribute is never used directly.
-   [PXCustomize.PXDefaultAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=bafd5b2a-81f5-b71e-1c0c-41043216e816): Customizes the [PXDefaultAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1853593a-65f0-40e1-b685-14749a35128d) attribute.
-   [PXCustomize.PXDBFieldAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=bfcbf894-4955-f760-6b6c-f8ad723ccef3): Customizes the [PXDBFieldAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=045c405f-6197-76ee-ab73-b6c8c4d920ef) attribute.

|All the listed attributes customize the specified attributes.

 The [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class also provides the [PXCustomize.AnyAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7cc03218-f61b-4324-3786-7b3d4d873340) attribute, which can be used to customize any attribute derived from the PXEventSubscriberAttribute attribute. However, we recommend that you instead use the listed strongly typed customization attributes wherever possible.

 **Tip:** You can also use the listed strongly typed customization attributes to customize the descendants of their target attributes. For example, you can use the PXCustomize.PXDBFieldAttributeAttribute attribute to customize the [PXDBIntAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=428fb01b-3cf2-4fa0-e12d-a9f6042250ac) and [PXDBStringAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cf21368f-4969-18b4-8722-5789e5fc9c2a) attributes, which are descendants of the PXDBFieldAttribute attribute.

|
|[PXCustomizeSelectorColumns](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8225b692-20e8-8fc4-1cab-e31d78f718db)|This attribute defines the new set and order of the columns in the selector.|

**Tip:** The double `Attribute` suffix \(such as PXCustomize.PXUIFieldAttributeAttribute in the example below\) is dropped from the name of the customization attribute when you use it in code. This is intentional, as it makes it easy for you to recognize the attribute that the customization attribute is targeting because it mirrors the name of the targeted attribute.

In the following example, the display name of the `MyField` field of the `MyDac` DAC is *My Field*, and in the `MyDacExt` DAC extension the display name of this field is changed to *My Custom Field*.

```language-csharp
public class MyDac : PXBqlTable, IBqlTable
{
   public abstract class myField: PX.Data.BQL.BqlInt.Field<myField> { }
   [PXDBInt]
   [PXUIField(DisplayName = "My Field")]
   public virtual int? MyField{ get; set; }
}

public class MyDacExt : PXCacheExtension<MyDac>
{
  [PXCustomize.PXUIFieldAttribute(DisplayName = "My Custom Field")]
  public virtual int? MyField{ get; set; }
}
```

**Tip:** The code example above uses the strongly typed PXCustomize.PXUIFieldAttributeAttribute attribute to customize PXUIFieldAttribute. Alternatively, you can use the PXCustomize.AnyAttributeAttribute attribute, as shown in the following code example. However, we recommend that you use the strongly typed customization attributes wherever possible.

```language-csharp
public class MyDac : PXBqlTable, IBqlTable
{
   public abstract class myField: PX.Data.BQL.BqlInt.Field<myField> { }
   [PXDBInt]
   [PXUIField(DisplayName = "My Field")]
   public virtual int? MyField{ get; set; }
}

public class MyDacExt : PXCacheExtension<MyDac>
{
  [PXCustomize.AnyAttribute(typeof(PXUIFieldAttribute), 
    nameof(PXUIFieldAttribute.DisplayName), "My Custom Field")]
  public virtual int? MyField{ get; set; }
}
```

## Application Order of the Custom Attributes { .section}

The customization attributes described above are applied in the following order:

1.  Customization attributes of the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class
2.  [PXRemoveBaseAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d74c58a7-42e5-6927-6f55-2bebb8ce838a)
3.  [PXMergeAttributes](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=dce254b6-4fff-887a-4d0c-914284b2ad8b)

**Tip:** The [PXCustomizeSelectorColumns](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8225b692-20e8-8fc4-1cab-e31d78f718db) works independently of these three attributes.

For details on how to customize field attributes for a particular screen, see the [Overriding Attributes of a DAC Field in the Graph](cg_gl_modifyingattributesofadacfield.md) topic.

## Adding an Attribute to an Existing DAC Field { .section}

Suppose that you have a DAC and a DAC extension, and in the DAC extension, you need to add an attribute to the set of inherited attributes of a DAC field. In that case, you’ll need to override the whole property, including the virtual field and the abstract class, and define all attributes from scratch. The customization attributes described in the previous section are not applicable.

For an auto-implemented property in the parent DAC, you define the auto-implemented property in the DAC extension. For a full property in the parent DAC, you define the full property in the DAC extension. For example, suppose that you have the following property in the parent DAC.

```language-csharp
public virtual int? MyProp
{
    get => _FieldValue;
    set => _FieldValue = value;
}
```

The overridden property should look as shown in the following code.

```language-csharp
public override int? MyProp
{
    get => base.MyProp;
    set => base.MyProp = value;
}
```

**Parent topic:**[DAC Extensions](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt.md)

