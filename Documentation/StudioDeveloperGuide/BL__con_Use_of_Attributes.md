# Use of Attributes {#_5a036000-ca13-4c75-be1c-ac02d819ddce .concept}

To apply the attribute business logic to an entity, you should place the attribute on the entity declaration. At runtime, you can call the static methods of a particular attribute to adjust the attribute's behavior.

## Attributes on the Entity Declaration { .section}

An attribute may be placed on a declaration of a class or a class member, with or without parameters. The parameters that are possible for an attribute depend on the constructor parameters and the properties defined in the attribute. The parameters of the selected constructor are placed first without names, and the named property settings follow them, as shown in the following example.

```
[PXDefault(false, PersistingCheck = PXPersistingCheck.Nothing)]
public virtual Boolean? Released { get; set; }
```

Here the PXDefault attribute is created with the constructor that takes a Boolean-type parameter \(set to false\). Additionally, the PersistingCheck property is specified.

## Setting of Attribute Properties at Runtime { .section}

You should call static methods defined in the attribute class to change the properties at runtime. The static methods can affect a single attribute instance or multiple attribute instances related to a specific data record or all data records in a particular cache object. The following example shows an invocation of a static method.

```
PXUIFieldAttribute.SetVisible<APInvoice.curyID>(cache, doc, true);
```

When calling such a method, you typically specify the cache object, a data record related to this cache object, and the data access class \(DAC\) field. The method affects the attribute instance created for this field and the specified data record. If you pass null as the data record, the method affects attribute instances related to all data records in the specified cache object.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

