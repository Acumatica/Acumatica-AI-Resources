# Mandatory Attributes {#_a211a689-4bd3-4593-8144-f9ef631c418d .concept}

In this topic, you can learn about the mandatory attributes of data access class \(DAC\) fields and actions.

## Mandatory Attributes of DAC Fields { .section}

For each field defined in a DAC, you must specify the following attributes:

-   A data type attribute, which is either a bound field data type attribute that binds the field to a database column of a particular data type, or an unbound field data type attribute that indicates that the field is unbound. At the same time, an unbound field data type attribute used along with the [PXDBScalar](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3fedd793-f07c-3a34-48f9-5ec226d8caf1) or [PXDBCalced](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=484f012a-de33-1a6b-b520-4822d33ed3d8) attributes indicates that the field is bound to multiple table columns. For lists of these attributes, see [Bound Field Data Types](BL__con_Attr_DB_Types.md) and [Unbound Field Data Types](BL__con_Attr_Unbound_Data_Types.md).
-   The [PXUIField](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute, which is mandatory for all fields that are displayed in the user interface. For details on the PXUIField attribute, see [UI Field Configuration](BL__con_PXUIField_Attribute.md).

The example below demonstrates a declaration of a DAC field bound to a database column and displayed in the user interface.

```
// The data access class for the POReceiptFilter database table
[Serializable]
public partial class POReceiptFilter : PXBqlTable, IBqlTable
{
    ...
    // The type declaration of a DAC field
    public abstract class receiptType : PX.Data.IBqlField
    {
    }
    // The value declaration of a DAC field 
    // Put attributes before this declaration
    [PXDBString(2, IsFixed = true)]
    [PXUIField(DisplayName = "Type", Enabled = false)]
    public virtual String ReceiptType { get; set; }
    ...
}
```

## Mandatory Attributes of Actions { .section}

A declaration of a method that implements an action in a business logic controller must be preceded with the [PXButton](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1a7069c4-95d5-456b-41ec-5b19371358db) attribute or one of its successors and the [PXUIField](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute. For details on the PXUIField attribute, see [UI Field Configuration](BL__con_PXUIField_Attribute.md).

The example below demonstrates a declaration of an action handler.

```
public PXAction<SalesOrder> ViewDocument;

[PXUIField(DisplayName = "View Document",
           MapEnableRights = PXCacheRights.Select,
           MapViewRights = PXCacheRights.Select)]
[PXButton]
public virtual IEnumerable viewDocument(PXAdapter adapter)
{
    ...
}
```

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

