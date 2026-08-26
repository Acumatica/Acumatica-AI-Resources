# LINQ in Acumatica Framework {#_0964f231-82b9-4b86-bca4-1d26151f8baf .concept}

You can use language-integrated query \(LINQ\) provided by the `System.Linq` library when you need to select records from the database in the code of Acumatica Framework-based applications or if you want to apply additional filtering to the data of a BQL query. However, you still have to use business query language \(BQL\) to define the data views in graphs and to specify the data queries in attributes of data fields.

For details about BQL, see [Creating Fluent BQL Queries](AD__mng_Fluent_BQL.md) and [Creating Traditional BQL Queries](AD__mng_Traditional_BQL.md). For more information about the differences between LINQ and BQL, see [Comparison of Fluent BQL, Traditional BQL, and LINQ](AD__con_Comparison_of_TBQL_FBQL_LINQ.md).

## Data Access Classes in LINQ { .section}

In LINQ expressions, to access data from the database tables, you use data access classes \(DACs\). For details on DACs, see [Data Access Classes](AD__con_BQL_DAC.md).

You use property fields of DACs when you need to specify table columns in LINQ expressions. \(The name of the property field starts with an uppercase letter. Do not confuse it with the class field, which has the same name but starts with lowercase letter.\)

## Query Syntax { .section}

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


For details about composing LINQ queries, see [To Select Records by Using LINQ](AD__how_LINQ_Select_Records.md). In the code examples of this guide, we use explicit syntax.

## Simultaneous Use of LINQ and BQL { .section}

The Select method of all PXSelect classes of Acumatica Framework return PXResultset&lt;T0&gt;, which implements the `IQueryable<PXResult<T0>>` interface. That is, you can work with the query expression defined with BQL by using LINQ. The following code shows an example of additional filtering of data of the BQL query.

```
//BQL statement
var Products = new PXSelect<Product, 
  Where<Product.productCD, Like<string_D>>>(graph);
//Use of LINQ for the result of the BQL query
var goods = Products.Select()
  .Where(p => p.GetItem<Product>().StockUnit == "item");
//Execution of the query
foreach (var good in goods) {
  var prod = good.GetItem<Product>();
}
```

However, you cannot work with the query defined with LINQ by using BQL.

For details about how to use LINQ and BQL simultaneously, see [To Append LINQ Expressions to BQL Statements](AD__how_LINQ_Filter_BQL.md).

**Parent topic:**[Creating LINQ Queries](../StudioDeveloperGuide/AD__mng_LINQ.md)

