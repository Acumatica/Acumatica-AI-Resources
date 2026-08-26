# To Select Records By Using Traditional BQL {#_610ce4e6-85e6-48e1-8a89-317a6a7f0542 .task}

To select records from the database, you can construct a business query language \(BQL\) statement. To construct a BQL statement, you use one of the generic PXSelect classes. You select the needed PXSelect class depending on the statement you need to compose, as described in the sections of this topic.

**Tip:** In a PXSelect class, you configure a query to the database. The actual request to the database is performed once you cast the result of the query execution to a DAC or an array of DACs, or iterate through DACs in the result with the `foreach` statement. For details, see [Data Query Execution](AD__con_Query_Execution.md).

## Before You Proceed {#_1f0a8248-99eb-4897-be95-8bb852d09cbc .section}

Make sure that the application database has the database tables from which you are going to request data, and that the application defines the data access classes \(DACs\) for these tables. For more information on defining DACs, see [Data Access Classes in Traditional BQL](AD__con_DACs_in_TraditionalBQL.md).

## To Select All Records from a Database Table {#_437434b0-16db-4efd-8f2d-51011ed2b6bb .section}

To select all data from one database table without applying any filtering conditions or ordering, use one of the PXSelect classes that has DAC as the only type parameter, such as the PXSelect&lt;Table&gt; or PXSelectReadonly&lt;Table&gt; class, as shown in the following sample BQL statement.

```
PXSelect<Product>
```

In this BQL statement, you are selecting all data records \(with the values of all bound fields\) from the Product table.

**Tip:** For example, suppose that the Product table has two columns, `ProductID` and `UnitPrice`. In this case, Acumatica Framework translates the previous BQL statement to the following SQL query. The framework adds ordering by the DAC key field \(in ascending order\) to the end of the SQL query because the BQL statement does not specify ordering.

``` {#codeblock_gqm_bdd_m3c}
SELECT Product.ProductID, Product.UnitPrice FROM Product 
       ORDERBY Product.ProductID
```

## To Filter Records {#_87d6f3c4-7c4a-49d1-bcf7-4ae37c27e7bd .section}

To filter records in the database table to be retrieved, construct a BQL statement with conditions by doing the following:

1.  Use one of the PXSelect classes that has the Where type parameter, such as PXSelect&lt;Table, Where&gt;. For the full list of PXSelect classes, see [PXSelect Classes](AD__con_BQL_PXSelect.md).
2.  Specify the filtering conditions by using the Where clause, as described in [To Filter Records](AD__how_BQL_Filter.md).
3.  To specify the fields that should be used for filtering, use the class fields defined in the DACs, such as Product.productID. \(The name of the field class starts with a lowercase letter. Do not confuse it with the property field, which has the same name but starts with uppercase letter.\)

The following sample BQL statement selects all data records from the `Product` table that have the specified value in the `ProductID` column.

```
PXSelect<Product,
    Where<Product.productID, Equal<Required<Product.productID>>>>
```

**Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query. In this SQL query, `[list of columns]` is the list of columns of the `Product` table; `[parameter]` is the value passed to the Select\(\) method of the PXSelect class, which is called when the BQL query is executed.

```
SET @P0 = [parameter];

SELECT [list of columns] FROM Product
    WHERE Product.ProductID = @P0
        ORDERBY Product.ProductID
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Order Records {#_5325d553-3534-4c24-953f-e32fca5d2cb3 .section}

To order records in the database table to be retrieved, construct a BQL statement with ordering by doing the following:

1.  Use one of the PXSelect classes that has the OrderBy type parameter, such as PXSelectOrderBy&lt;Table, OrderBy&gt; or PXSelect&lt;Table, Where, OrderBy&gt;. For the full list of PXSelect classes, see [PXSelect Classes](AD__con_BQL_PXSelect.md).
2.  Use the OrderBy clause to order records, as described in [To Order Records](AD__how_BQL_OrderBy.md#).
3.  To specify the field that should be used for filtering, use the class field defined in the DAC, such as Product.productID. \(The name of the field class starts with a lowercase letter. Do not confuse it with the property field, which has the same name but starts with uppercase letter.\)

The following sample BQL statement selects all Product data records and sorts them by the UnitPrice field in ascending order.

```
PXSelectOrderBy<Product, OrderBy<Asc<Product.unitPrice>>>
```

**Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

```
SELECT [list of columns] FROM Product
    ORDER BY Product.UnitPrice
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Query Multiple Tables { .section}

To join multiple tables, construct a BQL statement by doing the following:

1.  Use one of the PXSelect classes that has the Join type parameter, such as PXSelectJoin&lt;Table, Join&gt; or PXSelectReadonly2&lt;Table, Join&gt;.
2.  In the Join type parameter of the PXSelect class, use one of the Join clauses—such as InnerJoin, LeftJoin, RightJoin, FullJoin, or CrossJoin—that are directly mapped to SQL JOIN clauses, as shown in the following sample BQL statement. For more information on the use of Join clauses, see [To Query Multiple Tables](AD__how_Query_Multiple_Tables.md#).

    ``` {#codeblock_gm2_x1d_m3c}
    PXSelectJoin<SalesOrder,
        InnerJoin<OrderDetail,
            On<OrderDetail.orderNbr, Equal<SalesOrder.orderNbr>>>>
    ```

    **Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the joined tables.

    ``` {#codeblock_im2_x1d_m3c}
    SELECT [list of columns] FROM SalesOrder
    INNER JOIN OrderDetail
        ON OrderDetail.OrderNbr = SalesOrder.OrderNbr
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


## To Aggregate Records { .section}

To group or aggregate records, construct a BQL statement by doing the following:

1.  Use one of the PXSelect classes with the Aggregate type parameter, such as PXSelectGroupBy&lt;Table, Aggregate&gt;.
2.  In the Aggregate type parameter of the PXSelect class, specify the grouping conditions and aggregation functions by using the Aggregate&lt;Function&gt; class, the GroupBy clauses, and the Min, Max, Sum, Avg, and Count aggregation functions, as shown in the following sample BQL statement. For more information on the use of the grouping conditions and aggregation functions, see [To Group and Aggregate Records in Traditional BQL](AD__how_BQL_Group_and_Aggregate.md#).

    ``` {#codeblock_nxl_x1d_m3c}
    PXSelectGroupBy<Product,
        Aggregate<GroupBy<Product.categoryCD>>>
    ```

    **Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query.

    ``` {#codeblock_pxl_x1d_m3c}
    SELECT Product.CategoryCD,
           [MAX(Field) for other fields]
    FROM Product
    GROUP BY Product.CategoryCD
    ```


**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

