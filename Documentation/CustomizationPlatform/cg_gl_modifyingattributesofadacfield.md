# Overriding Attributes of a DAC Field in the Graph {#_d0634e8a-3a21-454c-963a-6741e7ec8390 .concept}

You can override one or more attributes of a DAC field for a particular screen without changing the existing attribute behavior for all other screens.

You can do the following to override the attributes of a DAC field:

-   Replace the whole set of attributes
-   Append an attribute
-   Override a single property of an attribute
-   Replace one attribute with another

To override attributes, you should declare a `CacheAttached` event handler in the graph that corresponds to the screen for which you want to change the DAC field's behavior. With the declared `CacheAttached` event handler, you use special attributes, depending on what you want to do with the original attributes, as described in the following sections.

## Replacing the Whole Set of Attributes {#_90c28aea-e9c1-4407-b3f8-3b3691b41679 .section}

To override all attributes at once, you should only declare a `CacheAttached` event handler in the graph.

Suppose that the original DAC field attributes are declared as shown in the following code.

```language-csharp
public class ARInvoice : PXBqlTable, IBqlTable
{    
    [PXDBDecimal(4)]    
    [PXDefault(TypeCode.Decimal, "0.0")]    
    [PXUIField(DisplayName = "Commission amount")]    
    public virtual Decimal? CommAmt     
    {         
        get;         
        set;     
    }
}
```

To override a DAC field by using the `CacheAttached` event handler, in the graph corresponding to the screen whose behavior you want to change, declare the `CacheAttached` event handler for the field. The event handler must be named according to the standard conventions for naming graph events, which are described in the [Types of Graph Event Handlers](../StudioDeveloperGuide/BL__con_Events_Types.md) topic.

For the `CommAmt` field, the code for the event handler looks like the following.

```language-csharp
[PXDBDecimal(4)]
[PXDefault(TypeCode.Decimal, "0.0")]
[PXUIField(DisplayName = "Commission Amount")]
[PXAdditionalAttribute(NecessaryProperty = true)]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

In this example, we’ve added the `PXAdditionalAttribute` to the list of the `CommAmt` field attributes.

The set of attributes on the `CacheAttached` handler redefines the whole set of attributes placed on the specified DAC field. This results in undesired copying of all unmodified attributes, and the DAC and the graph no longer act synchronously. Therefore, we do not recommend using this method unless you intend to override all attributes of a field.

## Appending an Attribute {#_c3fcabec-1ce4-4939-a5d3-efa39b7b904f .section}

Acumatica Framework provides a special attribute called [PXMergeAttributes](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=dce254b6-4fff-887a-4d0c-914284b2ad8b). When placed on a `CacheAttached` event handler for the corresponding DAC field, this attribute gives you the ability to reuse the existing attributes of a DAC field.

To append an attribute, you declare the `CacheAttached` event handler with the `PXMergeAttributes` attribute and the new attribute \(or attributes\), as shown in the following code.

```language-csharp
[PXMergeAttributes(Method = MergeMethod.Append)]
[PXAdditionalAttribute(NecessaryProperty = true)]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

This example works similarly to the previous one: It adds the `PXAdditionalAttribute` attribute to the list of the `CommAmt` field attributes, but without code duplication.

## Overriding a Single or Multiple Properties of an Attribute {#_2f0c523f-b550-4082-9ce5-38f460c69ceb .section}

The Acumatica Framework provides the following strongly typed customization attributes in the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class that give you the ability to redefine one or more properties of their target attributes:

-   [PXCustomize.PXUIFieldAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=360c50f2-fe12-c722-9f83-6108aefb0082): Customizes the [PXUIFieldAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute.
-   [PXCustomize.PXSelectorAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=fcb5574a-6d3f-7601-6aaa-8f2d3cecbf88): Customizes the [PXSelectorAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attribute.
-   [PXCustomize.PXEntityAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=475eaccc-7d64-d109-3279-fd781c4d836e): Customizes the descendants of the [PXEntityAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=49d85609-04b5-64e1-0779-e3f1647568c5) attribute. Note that this attribute doesn't customize the [PXEntityAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=49d85609-04b5-64e1-0779-e3f1647568c5) attribute itself because the PXEntityAttribute attribute is never used directly.
-   [PXCustomize.PXDefaultAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=bafd5b2a-81f5-b71e-1c0c-41043216e816): Customizes the [PXDefaultAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1853593a-65f0-40e1-b685-14749a35128d) attribute.
-   [PXCustomize.PXDBFieldAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=bfcbf894-4955-f760-6b6c-f8ad723ccef3): Customizes the [PXDBFieldAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=045c405f-6197-76ee-ab73-b6c8c4d920ef) attribute.

**Tip:** You can use the strongly typed customization attributes described in the list above to customize the descendants of their target attributes. For example, you can use the PXCustomize.PXDBFieldAttributeAttribute attribute to customize the [PXDBIntAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=428fb01b-3cf2-4fa0-e12d-a9f6042250ac) and [PXDBStringAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cf21368f-4969-18b4-8722-5789e5fc9c2a) attributes, which are descendants of the PXDBFieldAttribute attribute.

The framework also provides [PXCustomize.AnyAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7cc03218-f61b-4324-3786-7b3d4d873340). This attribute can be used to customize any attribute derived from the PXEventSubscriberAttribute attribute. It works similarly to the deprecated PXCustomizeBaseAttribute attribute.

We recommend that you:

-   Use the strongly typed customization attributes wherever they’re applicable.
-   Use the PXCustomize.AnyAttributeAttribute attribute only for cases where the strongly typed customization attributes can't be used.

To use any of the strongly typed customization attributes or the PXCustomize.AnyAttributeAttribute attribute, you place the attribute on a `CacheAttached` event handler for the corresponding DAC field.

For example, suppose that you need to change the UI display name from **Commission Amount** to **Base Commission** for only one screen. In this case, we recommend that you use the strongly typed PXCustomize.PXUIFieldAttributeAttribute attribute to customize the DisplayName property of the PXUIFieldAttribute attribute for the corresponding DAC field, as shown below.

```language-csharp
[PXCustomize.PXUIFieldAttribute(DisplayName = "Base Commission")]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

**Tip:** The double `Attribute` suffix \(such as PXCustomize.PXUIFieldAttributeAttribute in the example above\) is dropped from the name of the customization attribute when you use it in code. The dropping of the suffix is intentional because it makes it easy for you to recognize the attribute that the customization attribute is targeting because it mirrors the name of the targeted attribute.

The example above redefines the `PXUIFieldAttribute` attribute by using the PXCustomize.PXUIFieldAttributeAttribute attribute.

You can also redefine multiple properties of an attribute by using a single instance of a strongly typed customization attribute. Suppose that for the previous code example, you also need to set the Enabled property to `true` for the PXUIFieldAttribute attribute. The following code shows this addition.

```language-csharp
[PXCustomize.PXUIFieldAttribute(DisplayName = "Base Commission", Enabled = true)]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

Although we recommend that you use strongly typed customization attributes wherever possible, you can technically use the PXCustomize.AnyAttributeAttribute attribute to customize the same attributes that are customized by strongly typed customization attributes. In the case of the preceding code example, which used the PXCustomize.PXUIFieldAttributeAttribute attribute, this looks like the following.

```language-csharp
[PXCustomize.AnyAttribute(typeof(PXUIFieldAttribute), 
  nameof(PXUIFieldAttribute.DisplayName), "Base Commission")]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

Note that when you use PXCustomize.AnyAttributeAttribute, you need to specify the type of the attribute that you want to customize as a separate parameter, along with the property to be updated and its new value. Also, if you intend to redefine multiple properties of an attribute, you need to declare an instance of PXCustomize.AnyAttributeAttribute for each property. Suppose that for the previous code example, you also need to set the Enabled property to `true` for the PXUIFieldAttribute attribute. The complete code would look like the following when you use the PXCustomize.AnyAttributeAttribute attribute.

```language-csharp
[PXCustomize.AnyAttribute(typeof(PXUIFieldAttribute), 
  nameof(PXUIFieldAttribute.DisplayName), "Base Commission")]
[PXCustomize.AnyAttribute(typeof(PXUIFieldAttribute), 
  nameof(PXUIFieldAttribute.Enabled), true)]
protected virtual void _(Events.CacheAttached<ARInvoice.commAmt> e) { }
```

## Replacing One Attribute with Another {#_7239f142-936f-476e-a117-8aeaeeac7cdd .section}

Acumatica Framework provides a special attribute called [PXRemoveBaseAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d74c58a7-42e5-6927-6f55-2bebb8ce838a). When placed on a `CacheAttached` event handler for the corresponding DAC field, this attribute gives you the ability to remove the specified attribute.

For example, suppose that you need to replace `PXDefaultAttribute` with `PXDBDefaultAttribute` for only one screen. Further suppose that the original field declaration looks the one shown in the following code.

```language-csharp
[Site(DisplayName = "Warehouse ID", 
  DescriptionField = typeof(INSite.descr))]
[PXDefault(typeof(SOShipment.siteID), 
  PersistingCheck = PXPersistingCheck.Nothing)]
public virtual Int32? SiteID { get; set; }
```

Then replacing `PXDefaultAttribute` with `PXDBDefaultAttribute` looks as shown in the following code.

```language-csharp
[PXRemoveBaseAttribute(typeof(PXDefaultAttribute))]
[PXDBDefault(typeof(SOShipment.siteID), 
  PersistingCheck = PXPersistingCheck.Nothing)]
protected virtual void _(Events.CacheAttached<SOOrderShipment.SiteID> e) { }
```

In this example, the `PXDefaultAttribute` is removed by the `PXRemoveBaseAttribute` attribute, and the new `PXDBDefault` attribute is declared.

## Application Order of the Custom Attributes { .section}

The customization attributes described above are applied in the following order:

1.  Customization attributes of the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class
2.  [PXRemoveBaseAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d74c58a7-42e5-6927-6f55-2bebb8ce838a)
3.  [PXMergeAttributes](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=dce254b6-4fff-887a-4d0c-914284b2ad8b)

**Parent topic:**[Graph Extensions](../CustomizationPlatform/CG_Platform_TO_Code_CS_GraphExtensions.md)

