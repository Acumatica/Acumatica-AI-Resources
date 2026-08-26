# Data Access Classes {#_3f6ee8e9-b29e-4dab-b4f8-4406c3ef101d .concept}

The classes that represent database tables in Acumatica Framework are called *data access classes \(DACs\)*. You derive these classes from the PX.Data.PXBqlTable class and the PX.Data.IBqlTable interface. These classes must be declared with the `public` access modifier to be correctly recognized by the Acumatica Framework. The name of a class is usually the same as the name of the database table to which it provides access \(except with the DACs that have the PXTable or PXProjection attributes, which change the default binding of DACs to database tables\).

## DAC Fields { .section}

For each table column, you add a data field to the corresponding data access class by declaring the following members:

-   A `public abstract` class \(which is also referred to as a *class field* or *BQL field*\).

    You use this class to reference the table column in a business query language \(BQL\) statement. The declaration of the class field is different in the fluent BQL dialect than it is in the traditional BQL dialect. For details about the declaration, see [Data Access Classes in Fluent BQL](AD__con_DACs_in_FBQL.md) and [Data Access Classes in Traditional BQL](AD__con_DACs_in_TraditionalBQL.md). We recommend that you use the fluent BQL style of DAC declaration because it can be used both in fluent BQL and in traditional BQL. The style of class field declaration is not important for queries defined with language-integrated query \(LINQ\).

-   A `public virtual` property \(which is also referred to as *property field*\).

    You bind the data field to the table column by specifying the type attribute that is derived from the PXDBFieldAttribute class, such as PXDBString, and specifying the name of the column as the name of the property. If you do not need to bind the property to a column or multiple columns of the database, you specify an unbound type attribute. If you want the value of the property to be calculated from multiple database fields, you specify an unbound type attribute along with the PXDBCalced or PXDBScalar attribute. You assign the property a name that starts with an uppercase letter. For the lists of bound and unbound type attributes, see [Bound Field Data Types](BL__con_Attr_DB_Types.md) and [Unbound Field Data Types](BL__con_Attr_Unbound_Data_Types.md).

    You use the property, which, in the system, holds the column data of the table, in the queries defined with LINQ. In the SQL command generated from BQL, the framework explicitly lists columns for all data fields that are defined in the DAC and bound to a single table column. For each bound data field whose property attribute defines a BQL command, if this data field is used in a BQL query, the system translates the BQL command of the property to SQL when the BQL query is translated to SQL. For more information on the translation of BQL to SQL, see [Translation of a BQL Command to SQL](AD__con_BQL_Translation_to_SQL.md#).


The following code shows an example of the Product DAC declaration in the fluent BQL style.

```
using System;
using PX.Data;

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

## Requirements for DACs { .section}

When you define a data access class, keep these requirements in mind:

-   The class must have one of these attributes:
    -   PXCacheName: Specifies a user-friendly DAC name. This name can be used in generic inquiries, reports, and error messages displayed when no setup data records exist. Without this attribute, the error message would use the DAC name for the link.
    -   PXHidden: Hides the DAC from generic inquiries, reports, and web services API clients.
-   The class must be declared with the `public` access modifier.
-   The class must be declared as extending the PX.Data.PXBqlTable class and implementing the PX.Data.IBqlTable interface.
-   Abstract classes of data fields must be defined as implementing interfaces of the PX.Data.BQL namespace.
-   A DAC property field must have a nullable type \(such as `decimal?` or `DateTime?`\).

## Bound and Unbound Data Fields { .section}

A data field can be bound \(mapped\) or unbound \(not mapped\) to a database column or multiple columns. The type attribute on a DAC field and the presence of PXDBScalar or PXDBCalced specify whether the field is bound or unbound. *DB* in the attribute name denotes whether the field is bound. In the code below, the `OrderNbr` field is bound because it has the PXDBString type attribute, the `AvailQty` field is bound because it has the PXDBScalar attribute, and the `Description` field is unbound because of the PXString type attribute without PXDBScalar or PXDBCalced.

```
// DB means this is a bound DAC field
[PX**DB**String(15, IsKey = true, IsUnicode = true)]
public virtual string OrderNbr {...}
[PXDecimal(2)]
[PXDBScalar(typeof(Search<ProductQty.availQty,
    Where<ProductQty.productID.IsEqual<ProductReorder.productID>>>))]
public virtual decimal? AvailQty { ... }
// The absence of DB means this is an unbound DAC field
[PXString(50, IsUnicode = true)]
public virtual string Description {...}
```

The framework provides bound and unbound types for many data types, including string, Boolean, decimal, integer, and date and time. These types are abstracted from specific database types.

## Mandatory Attributes on Data Fields { .section}

The only mandatory attributes that you should add to DAC fields are:

-   Type attributes, such as PXDBString, PXString, PXDBDecimal, and PXDecimal.
-   PXUIField—for fields displayed in the UI.

## Key Fields {#key_fields .section}

You define the key fields in DACs independently of the database. Database key fields may not be key fields in the DAC. To mark a field as a key field, you set the IsKey property to true in the type attribute, as follows.

```
[PXDBString(15, IsUnicode = true, **IsKey = true**)]
[PXDefault]
[PXUIField(DisplayName = "Product ID")]
public virtual string ProductCD
{...
}
```

`Product` is the example of a DAC whose key field is different from the database key field. The primary key of the `Product` table in the database consist of the `ProductID` field. In the `Product` DAC, you mark the `ProductCD` field as the key field. The key fields defined in a DAC are used to identify DAC data records in cache objects.

DACs in Acumatica ERP can include a pair of *ID* and *CD* fields \(such as `ProductID` and `ProductCD`\). Typically, the *ID* field is represented by the identity column in the database \(automatically incremented integer\) and serves as the *surrogate* field. The *CD* field is the *natural* key, usually string, which is recognizable by a human.

**Note:** For more information on attributes on DAC fields, see [Working with Attributes](BL__mng_Working_With_Attributes.md).

## Concurrency Management { .section}

You should add the SQL Server timestamp column to a table to make Acumatica Framework able to handle concurrent updates.

```
[PXDBTimestamp()]
public virtual byte[] TStamp
{
    ...
}
```

The corresponding timestamp data field should be declared in the data access class. If the timestamp data field is declared, Acumatica Framework handles the timestamp column automatically. Acumatica Framework checks the row version every time the row is modified. For details about the timestamp, see [Concurrent Update Control \(TStamp\)](DA__con_Concurrent_Update_Control.md).

## Order of the Fields in a DAC { .section}

Note the order in which fields are declared in a DAC: During every roundtrip, the Acumatica Framework applies changes to DAC instances in the same order as their fields are declared. Similarly, all field-level event handlers are always raised in the same order as fields are declared in the DAC.

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

