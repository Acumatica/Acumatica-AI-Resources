# To Filter Records {#_afd13b51-3676-4cfb-bde6-ff563057014d .task}

You construct business query language \(BQL\) statements with filtering conditions by using the Where clause in a PXSelect class that has the Where type parameter. \(For more information on selecting the PXSelect class, see [To Select Records By Using Traditional BQL](AD__how_Construct_Statement.md#).\) One Where clause can contain multiple conditions chained to one another by logical operators \(Or, And, and Not\) and nested Where clauses \(these nested clauses are equivalent to placing conditions in brackets\).

Typically, you construct a BQL statement with a condition to compare one field with another field or a constant, or to check if the field value has been specified \(that is, to compare the field value with null\). You can also use multiple conditions in the Where clause.

## To Compare a Field with Another Field { .section}

To compare one field with another field in the Where clause, do the following:

1.  Select the comparison class that you need, such as NotEqual, Greater, or Less.
2.  Specify the compared field in the first type parameter of the Where class and the comparison in the second type parameter, as shown in the following sample BQL statement.

    ```
    PXSelect<Product, Where<Product.bookedQty, Greater<Product.availQty>>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

    ```
    SELECT [list of columns] FROM Product WHERE Product.BookedQty > Product.AvailQty
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


## To Compare a Field with a Constant {#_32d3d633-c741-4cc3-8f49-f4a611f164cb .section}

To compare a field with a constant in the Where clause, do the following:

1.  Select the comparison class that you need, such as NotEqual, Greater, or Less.
2.  Select one of the predefined constants—that is, the BQL class derived from the Constant&lt;Type&gt; class \(such as Boolean values True and False, integer Zero, datetime Now, Today, and MaxDate, and string StringEmpty\), or define your own constant as a class derived from the Constant&lt;Type&gt; class.
3.  Specify the compared field in the first type parameter of the Where class and the comparison in the second type parameter, as shown in the following sample BQL statement.

    ```
    PXSelect<Product, Where<Product.active, Equal<True>>>
    ```

    **Note:** Acumatica Framework translates this BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

    ```
    SELECT [list of columns] FROM Product WHERE Product.Active = CONVERT(BIT, 1)
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


## To Compare the Field Value with Null { .section}

To check whether a field value is specified, you compare the field value with null in one of the following ways:

-   To check that the field is null, use the Where&lt;Operand, Comparison&gt; class, as shown in the following sample BQL statement.

    ```
    PXSelect<Product, Where<Product.bookedQty, IsNull>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

    ```
    SELECT [list of columns] FROM Product WHERE Product.BookedQty IS NULL
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

-   To check that the field is not null, do one of the following:
    -   Use the Where&lt;Operator&gt; class and the logical operator Not, as shown in the following sample BQL statement.

        ```
        PXSelect<Product, Where<Not<Product.bookedQty, IsNull>>>
        ```

        **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

        ```
        SELECT [list of columns] FROM Product WHERE NOT (Product.BookedQty IS NULL)
        ```

        Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

    -   Use the Where&lt;Operand, Comparison class, as shown in the following sample BQL statement.

        ```
        PXSelect<Product, Where<Product.bookedQty, IsNotNull>>
        ```

        **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

        ```
        SELECT [list of columns] FROM Product WHERE Product.BookedQty IS NOT NULL
        ```

        Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


**Important:** The predefined constant Null cannot be used in the Where clause with Equal to select records with null fields. The Null constant is used in Switch conditions.

## To Use Multiple Conditions in One Where Clause { .section}

To specify multiple comparisons in one Where clause, do one of the following:

-   To specify multiple comparisons that are connected with the same logical operator, use the Where&lt;Operand, Comparison, NextOperator&gt; class and specify its type parameters as follows:
    -   In the first type parameter, specify the first compared field.
    -   In the second type parameter, specify the first comparison, such as NotEqual, Greater, or Less.
    -   In the third type parameter, specify the logical operator, such as And, And2, Or, or Or2. You can chain any number of comparisons to one another by using binary operators with three type parameters, as shown in the following sample BQL statement.

        ```
        PXSelect<Product,
            Where<Product.bookedQty, Greater<Product.availQty>,
                Or<Product.availQty, Less<Product.minAvailQty>,
                Or<Product.availQty, IsNull>>>>
        ```

        **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

        ```
        SELECT [list of columns] FROM Product
        WHERE Product.BookedQty > Product.AvailQty
            OR Product.AvailQty < Product.MinAvailQty
            OR Product.AvailQty IsNull
        ```

        Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

-   To write more complex conditional expressions with logical operators of different types, use nested Where or Where2 clauses. For more information on writing complex BQL statements, see [To Compose a BQL Statement from an SQL Statement](AD__how_Translate_SQL_to_BQL.md#).

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

