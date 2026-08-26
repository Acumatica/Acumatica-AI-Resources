# Data Access Classes in Fluent BQL {#_957f950d-22cd-4b2f-81ca-77464d0c9eff .concept}

The data access classes \(DACs\) that are used in fluent BQL differ from the DACs that are used in traditional BQL in the declarations of the class fields. For the general information about the declaration of DACs for both traditional BQL and fluent BQL, see [Data Access Classes](AD__con_BQL_DAC.md).

Each class field of a DAC \(that is, each `public abstract` class of a DAC\) is strongly typed, which makes it possible to perform compile-time code checks in Visual Studio. You derive class fields not from the IBqlField interface \(as you would in traditional BQL\) but from the specific fluent BQL classes that correspond to the type of the property field as shown in the following table. You assign the class field a name that starts with a lowercase letter.

|Type of the Property Field|Type of the Class Field|
|--------------------------|-----------------------|
|`bool`|BqlBool.Field&lt;TSelf&gt;|
|`byte`|BqlByte.Field&lt;TSelf&gt;|
|`short`|BqlShort.Field&lt;TSelf&gt;|
|`int`|BqlInt.Field&lt;TSelf&gt;|
|`long`|BqlLong.Field&lt;TSelf&gt;|
|`float`|BqlFloat.Field&lt;TSelf&gt;|
|`double`|BqlDouble.Field&lt;TSelf&gt;|
|`decimal`|BqlDecimal.Field&lt;TSelf&gt;|
|`Guid`|BqlGuid.Field&lt;TSelf&gt;|
|`DateTime`|BqlDateTime.Field&lt;TSelf&gt;|
|`String`|BqlString.Field&lt;TSelf&gt;|
|`byte[]`|BqlByteArray.Field&lt;TSelf&gt;|

The following code shows an example of the Product DAC declaration.

```
using System;
using PX.Data;

[Serializable]
public class Product : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    // The class used in BQL statements to refer to the ProductID column
    public abstract class productID : PX.Data.BQL.BqlInt.Field<productID>
    {
    }
    // The property holding the ProductID value in a record
    [PXDBIdentity(IsKey = true)]
    public virtual int? ProductID { get; set; }

    // The class used in BQL statements to refer to the AvailQty column
    public abstract class availQty : PX.Data.BQL.BqlDecimal.Field<availQty>
    {
    }
    // The property holding the AvailQty value in a record
    [PXDBDecimal(2)]
    public virtual decimal? AvailQty { get; set; }
}
```

## Simultaneous Use of DACs in Fluent BQL and Traditional BQL { .section}

The DAC fields declared in fluent BQL style can be used in traditional BQL queries without any modifications.

The class fields that are defined in the traditional BQL style \(as described in [Data Access Classes](AD__con_BQL_DAC.md)\) can be used in fluent BQL queries if you wrap these fields in the Use&lt;&gt;.As\[Type\] class, where `[Type]` is one of the following: `Bool`, `Byte`, `Short`, `Int`, `Long`, `Float`, `Double`, `Decimal`, `Guid`, `DateTime`, `String`, or `ByteArray`.

The following code shows the definition of the `availQty` class field in the traditional BQL style and its use in a fluent BQL comparison.

```
public class Product : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public abstract class availQty : PX.Data.IBqlField
    {
    }
    [PXDBDecimal(2)]
    public virtual decimal? AvailQty { get; set; }
}

SelectFrom<Product>.
    Where<Use<Product.availQty>.AsDecimal.IsNotEqual<Zero>>.
    View AvailableProducts;
```

Though the DAC fields in the traditional BQL style can be used in fluent BQL queries, we recommend that you use the fluent BQL style of DAC declaration for simplicity.

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

