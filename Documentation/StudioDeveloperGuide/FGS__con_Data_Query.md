# Querying of the Data {#_9241a976-e062-4978-be14-2c1135642be2 .concept}

The Acumatica Framework provides a custom language, **business query language \(BQL\)**, that developers can use for writing database queries. BQL is written in C\# and based on generic class syntax but is very similar to SQL syntax.

The framework provides two BQL dialects: **traditional BQL** and **fluent BQL**. We recommend using fluent BQL because statements written in fluent BQL are simpler and shorter than those written in traditional BQL. In this topic, all examples are written in fluent BQL.

**Tip:** You can also use LINQ to select records from the database or to apply additional filtering to the data of a BQL query. For details on which approach to use, see [Comparison of Fluent BQL, Traditional BQL, and LINQ](AD__con_Comparison_of_TBQL_FBQL_LINQ.md).

## Business Query Language { .section}

BQL has almost the same keywords as SQL does, placed in the same order, as shown in the following BQL example.

```language-csharp
SelectFrom<Product>.Where<Product.availQty.IsNotNull.
        And<Product.availQty.IsGreater<Product.bookedQty>>>
```

If the database provider is Microsoft SQL Server, the framework translates this expression into the following SQL query.

```language-sql
SELECT * FROM Product 
WHERE Product.AvailQty IS NOT NULL 
AND Product.AvailQty > Product.BookedQty
```

BQL gives you the following benefits:

-   It's independent of the database provider.
-   It’s object-oriented and extendable.
-   It provides compile-time syntax validation, which helps prevent SQL syntax errors.

## Data Access Classes { .section}

Because BQL is implemented on top of generic classes, you need data types that represent database tables: data access classes \(DACs\) in the Acumatica Framework. For example, you can define the Product DAC \(shown below\) to execute the SQL query from the previous code example.

```language-csharp
using System;
using PX.Data;

[PXCacheName("Product")]
public class Product : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    // The property holding the ProductID value in a record
    [PXDBIdentity(IsKey = true)]
    public virtual int? ProductID { get; set; }
    // The type used in BQL statements to reference the ProductID column
    public abstract class productID : PX.Data.BQL.BqlInt.Field<productID> { }

    // The property holding the AvailQty value in a record
    [PXDBDecimal(2)]
    public virtual decimal? AvailQty { get; set; }
    // The type used in BQL statements to reference the AvailQty column
    public abstract class availQty : PX.Data.BQL.BqlDecimal.Field<availQty> { }

    // The property holding the BookedQty value in a record
    [PXDBDecimal(2)]
    public virtual decimal? BookedQty { get; set; }
    // The type used in BQL statements to reference the BookedQty column
    public abstract class bookedQty : PX.Data.BQL.BqlDecimal.Field<bookedQty> { }
}
```

Each table field is declared in a DAC in two ways, each for a different purpose:

-   As a `public virtual` property \(also referred to as a *property field*\) to hold the field’s data
-   As a `public abstract` class \(also referred to as a *class field* or *BQL field*\) to reference a field in BQL commands

If the DAC is bound to the database, it must have the same class name as the database table has. DAC fields are bound to the database by means of data mapping attributes \(such as PXDBIdentity and PXDBDecimal\), using the same naming convention as fields in the database.

## Request of a Data Record from the Database { .section}

The following code demonstrates how to obtain data records from the database.

```language-csharp
// Select Product records
PXResultset<Product> res = SelectFrom<Product>.Where<Product.availQty.IsNotNull.
        And<Product.availQty.IsGreater<Product.bookedQty>>>.View.Select(graph);
// You can iterate through the result set
foreach(PXResult<Product> rec in res)
{
    // A record from the result set can be cast to the DAC
    Product p = (Product)rec;
    ...
}
```

**Parent topic:**[Getting Started with Acumatica Framework](../StudioDeveloperGuide/FGS__mng.md)

