# BQL and LINQ {#_63ce6aaa-0620-4993-a9a3-a49469eb906a .concept}

When a data request occurs, the system creates an instance of a business logic controller \(also referred as a *graph*\). The graph contains the data views that you define in code. In these data views, you define the queries to be executed to retrieve the requested data by using business query language \(BQL\), which is provided by Acumatica Framework. You also use BQL to define the data queries directly in code and in attributes.

BQL is written in C\#; it is based on generic class syntax, which is similar to SQL syntax. Thus, BQL has almost the same keywords as SQL does, placed in the order in which they are used in SQL. BQL offers several benefits to the application developer. BQL does not depend on the specifics of the database provider, and it is object-oriented and extendable. Also, BQL provides compile-time syntax validation, which helps to prevent SQL syntax errors.

You can also use language-integrated query \(LINQ\) provided by the `System.Linq` library when you need to select records from the database in the code of Acumatica Framework-based applications or if you want to apply additional filtering to the data of a BQL query. However, you still have to use BQL to define the data views in graphs and to specify the data queries in the attributes of data fields.

## Fluent BQL and Traditional BQL { .section}

Acumatica Framework provides two dialects of BQL: fluent BQL and traditional BQL. Traditional BQL was the initial language for data queries in Acumatica Framework; it provides the benefits described above. Fluent BQL provides the following advantages as compared to traditional BQL:

-   It is easier to read and edit fluent BQL queries than traditional BQL queries because each section of a fluent BQL query does not depend on the others and can appear in only specific places of the query. Also, fluent BQL queries contain fewer commas and angle brackets and do not use numbered classes \(such as Select2 or Select6\).
-   You do not need to select a suitable class for a fluent BQL query \(such as PXSelectOrderBy&lt;,&gt; or PXSelectJoinOrderBy&lt;,,&gt;\); instead, you simply start typing the command, and IntelliSense in Visual Studio offers continuations that are relevant for the current query state.

For a detailed list of differences between the dialects, see [Comparison of Fluent BQL, Traditional BQL, and LINQ](AD__con_Comparison_of_TBQL_FBQL_LINQ.md).

The following code shows an example of a data view written in fluent BQL.

```
SelectFrom<Product>.
    Where<Product.availQty.IsNotNull.
          And<Product.availQty.IsGreater<Product.bookedQty>>>.View products;
```

The following code shows the same data view written in traditional BQL.

```
PXSelect<Product,
    Where<Product.availQty, IsNotNull,
        And<Product.availQty, Greater<Product.bookedQty>>>> products;
```

Suppose the database provider is Microsoft SQL Server. Acumatica Framework translates the fluent and traditional BQL queries shown above into the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
WHERE Product.AvailQty IS NOT NULL
    AND Product.AvailQty > Product.BookedQty 
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## LINQ { .section}

To configure a LINQ query, you can use the following variants of syntax:

-   Query expressions, which use standard query operators from the `System.Linq` namespace \(such as `where` or `orderby`\) or Acumatica Framework-specific operators from the `PX.Data.SQLTree` namespace \(such as SQL.BinaryLen, which is shown in the following example of this syntax\).

    ```
    ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
    var goods = from p in graph.Select<Product>()
      where 
        p.ProductCD.Length == 5 && 
        p.GroupMask.Length == 4 && 
        (p.WorkGroupID & 0b10) != 0
      select new 
      { 
        p.ProductID, 
        p.ProductCD, 
        p.ProductName, 
        Len = p.ProductName.Length, 
        BLen = SQL.BinaryLen( p.ProductName) + 1, 
        p.GroupMask, 
        p.WorkGroupID 
    };
    ```

-   Explicit \(method-based\) syntax. The arguments of the methods used in this syntax are lambda expressions. In these expressions, you can use the standard C\# operators and Acumatica Framework-specific operators from the `PX.Data.SQLTree` namespace \(such as SQL.BinaryLen, which is shown in the following code\). The code below is equivalent to the query expression shown above.

    ```
    ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
    var goods = graph.Select<Product>()
      .Where( p => 
        p.ProductCD.Length == 5 && 
        p.GroupMask.Length == 4 && 
        (p.WorkGroupID & 0b10) != 0)
      .Select( p => new     
        { 
          p.ProductID, 
          p.ProductCD, 
          p.ProductName, 
          Len = p.ProductName.Length, 
          BLen = SQL.BinaryLen(p.ProductName) + 1, 
          p.GroupMask, p.WorkGroupID 
        });
    ```


**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

