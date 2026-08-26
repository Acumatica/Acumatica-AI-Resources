# Data Access Classes in Traditional BQL {#_a47ddb36-eb85-486f-9d6b-49beac42fc80 .concept}

The data access classes \(DACs\) that are used in traditional BQL differ from the DACs that are used in fluent BQL in the declarations of the class fields. For details about the DAC declaration, see [Data Access Classes](AD__con_BQL_DAC.md).

You derive each class field of a DAC \(a `public abstract` class of a DAC\) from the IBqlField interface and assign it a name that starts with a lowercase letter.

The following code shows an example of the Product data access class declared in traditional BQL style.

```
using System;
using PX.Data;

[Serializable]
public class Product : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    // The class used in BQL statements to refer to the ProductID column
    public abstract class productID : PX.Data.IBqlField
    {
    }
    // The property holding the ProductID value in a record
    [PXDBIdentity(IsKey = true)]
    public virtual int? ProductID { get; set; }

    // The class used in BQL statements to refer to the AvailQty column
    public abstract class availQty : PX.Data.IBqlField
    {
    }
    // The property holding the AvailQty value in a record
    [PXDBDecimal(2)]
    public virtual decimal? AvailQty { get; set; }
}
```

## Simultaneous Use of DACs in Traditional BQL and Fluent BQL { .section}

The class fields declared in traditional BQL style cannot be used in fluent BQL queries.

The class fields that are defined in the fluent BQL style \(as described in [Data Access Classes in Fluent BQL](AD__con_DACs_in_FBQL.md)\) can be used in traditional BQL queries without any modifications. Therefore, we recommend that you use the fluent BQL style of DAC declaration.

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

