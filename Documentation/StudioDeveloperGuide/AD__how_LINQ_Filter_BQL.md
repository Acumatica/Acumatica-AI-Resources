# To Append LINQ Expressions to BQL Statements {#_6e0f7080-d099-4fc3-9cb6-ad15b800546d .task}

By using LINQ, you can work with a query expression that is defined with BQL. In this topic, you can find out how to apply additional filtering to a BQL statement and join a table to a BQL statement by using LINQ.

## Before You Proceed { .section}

-   Add the `using` directives shown below to your code.

    ```
    using PX.Data;
    using PX.Data.SQLTree;
    using System.Linq;
    ```

-   Make sure that the application database has the database tables from which you are going to request data, and that the application defines the data access classes \(DACs\) for these tables. For more information on defining DACs, see [Data Access Classes](../Shared/../StudioDeveloperGuide/AD__con_BQL_DAC.md).

## To Append LINQ Expressions to BQL Statements { .section}

To append LINQ expressions to BQL statements, do the following:

1.  Configure a BQL query derived from PXSelectBase either in fluent BQL or in traditional BQL.
2.  Call the Select\(\) method of PXSelectBase, and append the LINQ query to the result. Because the result of the Select\(\) method call is a PXResultset&lt;&gt; object, you need to cast it to a DAC type by using the PXResult.GetItem&lt;DacType&gt;\(\) method or direct casting.

The following example appends LINQ joining and filtering to a BQL query.

```
using PX.Data;
using PX.Data.SQLTree;
using System.Linq;
using PX.Data.BQL.Fluent;

ProductMaint graph = PXGraph.CreateInstance<ProductMaint>();

//Configure a BQL query
var products = new SelectFrom<Product>.
    Where<Product.productCD.IsLike<string_D>>.View(graph);

//Append joining and filtering by using LINQ
var goods = products.Select().Join(graph.Select<SupplierProduct>(),
    p => p.GetItem<Product>().ProductID,
    sp => sp.ProductID,
    (p, sp) => new { p = p.GetItem<Product>(), sp }
).Where(sp => sp.p.UnitPrice >= 0 && sp.sp.LastPurchaseDate == null);

//Execute the query
foreach (var item in goods)
{
  ...
}
```

**Note:** The system executes the following SQL query for the code above. In the following SQL query, `[list of columns]` is the list of columns of the `Product` and `SupplierProduct` tables.

```
SELECT [list of columns] FROM Product
INNER JOIN SupplierProduct
    ON Product.ProductID = SupplierProduct.ProductID
WHERE Product.ProductCD LIKE 'D' AND Product.UnitPrice>=0 
    AND SupplierProduct.LastPurchaseDate IS NULL
```

**Parent topic:**[Creating LINQ Queries](../StudioDeveloperGuide/AD__mng_LINQ.md)

