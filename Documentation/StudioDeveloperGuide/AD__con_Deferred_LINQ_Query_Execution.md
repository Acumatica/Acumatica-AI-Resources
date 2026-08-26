# Deferred LINQ Query Execution {#_c086439e-08ff-4812-bc02-abcfc1279bea .concept}

Queries defined with LINQ in Acumatica Framework implement the `IQueryable` interface—that is, for these queries, the system generates expression trees and executes the queries only when they are iterated over. For details about query execution, see [Data Query Execution](AD__con_Query_Execution.md).

## Execution of the LINQ Query in Code { .section}

To execute the query, you do one of the following:

-   Call the `ToList` or `ToArray` method for the query, as shown in the following code.

    ```
    //query is a LINQ expression.
    var data = query.ToList();
    ```

-   Iterate the query by using the `foreach` statement, as shown in the following code.

    ```
    //query has the IQueryable<Product> type.
    //Product is a DAC.
    foreach (Product record in query)
    {
        ...
    }
    ```


## Explicit Merge of Records with PXCache { .section}

The system merges with PXCache the records the system has retrieved from the database by using the LINQ queries, as described in [Merge of the Records with PXCache](AD__con_Merge_of_Records_with_PXCache.md).

You may need to explicitly merge the records retrieved from the database with a particular PXCache object. To merge the records with PXCache explicitly, you use the Merge method, as shown in the following code example.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
var query = new PXSelectReadonly<Product>(graph).Select()
    .Select(r => r.GetItem<Product>())
    .Where(p => SQL.Like(p.ProductName, "%d%") && p.StockUnit != null)
    .OrderBy(p => p.ProductID);
var result = query.Merge(p => p).ToArray();
```

You also can specify that the query should not be merged with PXCache by using the ReadOnly method, as shown in the following code example.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
var query = new PXSelect<Product>(graph).Select()
    .Select(r => r.GetItem<Product>())
    .Where(p => SQL.Like(p.ProductName, "%d%") && p.StockUnit != null);
    .OrderBy(p => p.ProductID);
var result = query.ReadOnly().ToArray();
```

**Parent topic:**[Creating LINQ Queries](../StudioDeveloperGuide/AD__mng_LINQ.md)

