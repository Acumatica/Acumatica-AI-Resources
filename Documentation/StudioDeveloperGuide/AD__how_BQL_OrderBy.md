# To Order Records {#_fadd819c-7751-438c-b5ee-ede99ef2e4fa .task}

You construct business query language \(BQL\) statements that include ordering of records by using the OrderBy clause in one of the PXSelect classes that has the OrderBy type parameter. \(For more information on selecting the PXSelect class, see [To Select Records By Using Traditional BQL](AD__how_Construct_Statement.md#).\)

By default, if the BQL statement does not specify ordering, Acumatica Framework adds ordering by the data access class \(DAC\) key fields \(in the order of field declaration\) in ascending order to the end of the SQL query. You can order the records by the values of one column or multiple columns, or by a condition.

## To Order Records by One Column { .section}

To order records in ascending or descending order by using the values in one column, use the OrderBy class and the Asc&lt;Field&gt; or Desc&lt;Field&gt; class, as shown in the following sample BQL statement.

```
PXSelectOrderBy<Product, OrderBy<Asc<Product.unitPrice>>>
```

In this statement, all Product data records are selected and are sorted by the UnitPrice field in ascending order.

**Note:** Acumatica Framework translates this BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
    ORDER BY Product.UnitPrice
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Order Records by Multiple Columns { .section}

To order records by the values in multiple columns, use the OrderBy class and the Asc&lt;Field, NextField&gt; or Desc&lt;Field, NextField&gt; class, as shown in the following sample BQL statement.

```
PXSelectOrderBy<Product,
    OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
```

**Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
    ORDER BY Product.UnitPrice, Product.AvailQty DESC
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Order Records by a Condition { .section}

To order data records according to a condition, put the Switch clause inside Asc or Desc in OrderBy, as shown in the following sample BQL statement.

```
PXSelectOrderBy<Product,
   OrderBy<Asc<
       Switch<Case<Where<Product.availQty, Greater<Product.bookedQty>>, True>,
              False>>>>
```

In this statement, the records with AvailQty values less or equal to BookedQty values are ordered first.

**Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
ORDER BY
    ( CASE
         WHEN Product.AvailQty > Product.BookedQty THEN 1
         ELSE 0
      END )
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

