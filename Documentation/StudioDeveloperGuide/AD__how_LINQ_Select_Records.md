# To Select Records by Using LINQ {#_53571695-dd57-4099-8820-7ea518a28b90 .task}

To select records from the database by using language-integrated query \(LINQ\), you use the standard query operators \(provided by LINQ libraries\), as described in this topic. In the LINQ queries, you use the property fields of DACs to specify the columns of database tables. \(The name of the property field starts with an uppercase letter. Do not confuse it with the class field, which has the same name but starts with lowercase letter.\)

**Note:** After you have composed a LINQ expression, to execute the query defined by this expression, you have to call the `ToList` or `ToArray` method for the query, or iterate the query by using the `foreach` statement. For example, the following code executes the query defined by a LINQ expression.

```
//query is a LINQ expression
var data = query.ToList();
```

For details about the execution of LINQ expressions, see [Deferred LINQ Query Execution](../Shared/../StudioDeveloperGuide/AD__con_Deferred_LINQ_Query_Execution.md).

## Before You Proceed { .section}

-   Add the `using` directives shown below to your code.

    ```
    using PX.Data;
    using PX.Data.SQLTree;
    using System.Linq;
    ```

-   Make sure that the application database has the database tables from which you are going to request data, and that the application defines the data access classes \(DACs\) for these tables. For more information on defining DACs, see [Data Access Classes](../Shared/../StudioDeveloperGuide/AD__con_BQL_DAC.md).

## To Filter Records { .section}

To filter records in the database table to be retrieved, construct the LINQ expression by using the `Where` LINQ method and the needed conditions. In the conditions, use the property field defined in the DAC, such as Product.ProductID.

The following LINQ expression uses the C\# logical operators \(\|\|, &amp;&amp;, and !\) to define multiple conditions.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
IQueryable<Product> query = graph.Select<Product>().Where(prod =>
    prod.BookedQty > prod.AvailQty
    || prod.AvailQty < prod.MinAvailQty
    || prod.AvailQty == null);
```

**Tip:** This LINQ expression is equivalent to the following SQL query. In this SQL query, `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
WHERE Product.BookedQty > Product.AvailQty
    OR Product.AvailQty < Product.MinAvailQty
    OR Product.AvailQty IsNull
```

## To Order Records { .section}

To order records to be retrieved from the database table, construct the LINQ expression by using the `OrderBy` or `OrderByDescending` LINQ method and the needed property fields of the DAC, such as Product.ProductID.

The following sample LINQ expression selects all Product data records and sorts them by the UnitPrice field in ascending order.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
IQueryable<Product> query = graph.Select<Product>().OrderBy(prod => prod.UnitPrice)
  .ThenByDescending(prod => prod.AvailQty);
```

**Tip:** This LINQ expression is equivalent to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
    ORDER BY Product.UnitPrice, Product.AvailQty DESC
```

## To Query Multiple Tables { .section}

To join multiple tables, construct the LINQ expression by using the `Join`, `LeftJoin`, `GroupJoin`, and `FullJoin` LINQ methods and the needed property fields of DACs, such as SalesOrder.OrderNbr.

The following sample LINQ expression performs an inner join of the SalesOrder and OrderDetail DACs by the OrderNbr field.

```
SalesOrderEntry graph = PXGraph.CreateInstance<SalesOrderEntry>();
var query = graph.Select<SalesOrder>()
    .Join(graph.Select<OrderLine>(),
          ord => ord.OrderNbr, ordDet => ordDet.OrderNbr,
          (ord, ordDet) => new { SalesOrder = ord, OrderDetail = ordDet });
```

**Tip:** This LINQ expression is equivalent to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM SalesOrder
INNER JOIN OrderDetail
    ON OrderDetail.OrderNbr = SalesOrder.OrderNbr
```

## To Group or Aggregate Records { .section}

To group or aggregate records, do the following:

1.  Construct the LINQ expression by using the `GroupBy` LINQ method and the needed property fields of the DAC, such as Product.CategoryCD. \(The name of the property field starts with an uppercase letter. Do not confuse it with the class field, which has the same name but starts with lowercase letter.\)
2.  Append to the expression the Select LINQ method.

    **Attention:** You have to use the Select method after `GroupBy` to eliminate the number of requests that the system performs to the database.


The following sample LINQ expression groups the records of the `Product` table by the `CategoryCD` field.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
var query = graph.Select<Product>().GroupBy(prod => prod.CategoryCD).
  Select(group => new { CategoryCD = group.Key });
```

**Tip:** This LINQ expression is equivalent to the following SQL query.

```
SELECT Product.CategoryCD
FROM Product
GROUP BY Product.CategoryCD
```

## To Select Particular Columns of Records { .section}

To select particular columns, specify the corresponding property fields of DACs in the `Select` clause.

The following example selects the values of the `ProductCD` and `AvailQty` fields for all records of the `Product` table.

```
ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();
var results = graph.Select<Product>()
    .Select(p => new { ProductCD = p.ProductCD, AvailQty = p.AvailQty });
```

**Tip:** The system executes the following SQL query for the code above.

```
SELECT Product.ProductCD, Product.AvailQty FROM Product
```

**Parent topic:**[Creating LINQ Queries](../StudioDeveloperGuide/AD__mng_LINQ.md)

