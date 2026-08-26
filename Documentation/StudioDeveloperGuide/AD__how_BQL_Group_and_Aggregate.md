# To Group and Aggregate Records in Traditional BQL {#_44827160-45dd-4cfe-82b9-6d4230e4f620 .task}

You construct business query language \(BQL\) statements that group and aggregate records by using the Aggregate clause in one of the PXSelect classes that has the Aggregate type parameter. \(For more information on selecting the PXSelect class, see [To Select Records By Using Traditional BQL](AD__how_Construct_Statement.md#).\)

## To Group and Aggregate Records { .section}

1.  Specify all grouping conditions \(the GroupBy clause\) and aggregation functions \(such as Min, Max, Sum, Avg, and Count\) in the Aggregate clause, as shown in the following sample BQL statement. Fields specified in GroupBy clauses are selected as is; an aggregation function is applied to all other fields. The default Max function is used if no function is specified for a field. If a data field has the PXDBScalar attribute, NULL is inserted for that field.

    ```
    PXSelectGroupBy<Product,
        Aggregate<GroupBy<Product.categoryCD>>>
    ```

    **Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query.

    ```
    SELECT Product.CategoryCD,
           [MAX(Field) for other fields]
    FROM Product
    GROUP BY Product.CategoryCD
    ```

2.  If necessary, insert another GroupBy clause or aggregation function as the second type parameter of the previous GroupBy clause or aggregation function, as shown in the following sample BQL statement.

    ```
    PXSelectGroupBy<Product,
        Aggregate<GroupBy<Product.categoryCD,
                  Sum<Product.availQty,
                  Sum<Product.bookedQty,
                  GroupBy<Product.stockUnit,
                  Min<Product.unitPrice>>>>>>>
    ```

    **Tip:** Acumatica Framework translates the previous BQL statement to the following SQL query.

    ```
    SELECT Product.CategoryCD, Product.StockUnit,
           SUM(Product.AvailQty), SUM(Product.AvailQty), MIN(Product.UnitPrice),
           [MAX(Field) for other fields]
    FROM Product
    GROUP BY Product.CategoryCD, Product.StockUnit
    ```


**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

