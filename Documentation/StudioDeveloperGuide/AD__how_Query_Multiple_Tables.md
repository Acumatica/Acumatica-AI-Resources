# To Query Multiple Tables {#_13001ef0-91f0-4094-b924-d1114c3e8e41 .task}

You construct business query language \(BQL\) statements that join multiple tables by using one of the Join clauses in one of the PXSelect classes that has the Join type parameter. \(For more information on selecting the PXSelect class, see [To Select Records By Using Traditional BQL](AD__how_Construct_Statement.md#).\)

In BQL statements, you can join multiple database tables by using the following clauses directly mapped to SQL JOIN clauses:

-   InnerJoin returns all records where there is at least one match in both tables.
-   LeftJoin returns all records from the left table, and the matched records from the right table. Where there are no matched records from the right table, null values are inserted.
-   RightJoin returns all records from the right table, and the matched records from the left table. Where there are no matched records from the left table, null values are inserted.
-   FullJoin returns all records when there is a match in one of the tables.
-   CrossJoin returns the entire Cartesian product of the two tables.

## To Join Two Tables \(Inner Join, Left Join, Right Join, or Full Join\) { .section}

To join two tables, use one of the Join clauses with two type parameters \(such as InnerJoin&lt;Table, On&gt;\) and the On&lt;Operand, Comparison&gt; or On&lt;Operator&gt; class to specify a conditional expression for joining, as shown in the following sample BQL statement.

```
PXSelectJoin<SalesOrder,
    InnerJoin<OrderDetail,
        On<OrderDetail.orderNbr, Equal<SalesOrder.orderNbr>>>>
```

**Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the joined tables.

```
SELECT [list of columns] FROM SalesOrder
INNER JOIN OrderDetail
    ON OrderDetail.OrderNbr = SalesOrder.OrderNbr
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Cross-Join Two Tables { .section}

To cross-join two tables, use the CrossJoin&lt;Table&gt; class, as shown in the following sample BQL statement.

```
PXSelectJoin<Product, CrossJoin<Supplier>>
```

**Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the joined tables.

```
SELECT [list of columns] FROM Product CROSS JOIN Supplier
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Join Multiple Tables { .section}

To specify multiple join clauses, use the following instructions:

-   Use a Join clause with three type parameters \(such as InnerJoin&lt;Table, On, NextJoin&gt;\). Each subsequent join clause is specified as the last type parameter of the previous join clause, as shown in the following sample BQL statement.

    ```
    PXSelectJoin<SalesOrder,
        InnerJoin<OrderDetail,
            On<OrderDetail.orderNbr, Equal<SalesOrder.orderNbr>>,
        LeftJoin<Employee,
            On<Employee.employeeID, Equal<SalesOrder.employeeID>>>>>
    ```

    **Note:** Acumatica Framework translates this BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the joined tables.

    ```
    SELECT [list of columns] FROM SalesOrder
    INNER JOIN OrderDetail
        ON OrderDetail.OrderNbr = SalesOrder.OrderNbr
    LEFT JOIN Employee
        ON Employee.EmployeeID = SalesOrder.EmployeeID
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

-   Use the On conditions to specify conditional expressions for joining, as shown in the following sample BQL statement. In subsequent join clauses, the On conditions can refer to fields from any joined table, and can contain any number of conditions chained by logical operators as in filtering conditions.

    ```
    PXSelectJoin<SalesOrder,
        InnerJoin<OrderDetail,
            On<OrderDetail.orderNbr, Equal<SalesOrder.orderNbr>>,
        LeftJoin<Employee,
            On<Employee.employeeID, Equal<SalesOrder.employeeID>>,
        RightJoin<Product,
            On<Product.productID, Equal<OrderDetail.productID>,
            And<Product.unitPrice, Equal<OrderDetail.unitPrice>>>>>>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the joined tables.

    ```
    SELECT [list of columns] FROM SalesOrder
    INNER JOIN OrderDetail
        ON OrderDetail.OrderNbr = SalesOrder.OrderNbr
    LEFT JOIN Employee
        ON Employee.EmployeeID = SalesOrder.EmployeeID
    RIGHT JOIN Product
        ON (Product.ProductID = OrderDetail.ProductID AND
            Product.UnitPrice = OrderDetail.UnitPrice)
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

