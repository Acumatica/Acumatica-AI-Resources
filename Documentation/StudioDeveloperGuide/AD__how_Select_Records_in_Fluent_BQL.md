# To Select Records by Using Fluent BQL {#_3a964dfb-df28-4bea-89d6-76439c44dae3 .task}

You can select records from the database by constructing a fluent business query language \(BQL\) statement. To construct a fluent BQL statement, you use the SelectFrom&lt;&gt; class and append the needed clauses to the statement.

This topic describes how to compose Select statements by using fluent BQL. For details on how to adjust these statements to define data views or to specify Search commands in fluent BQL, see [Search and Select Commands and Data Views in Fluent BQL](AD__con_View_Select_Search_in_Fluent_BQL.md).

**Note:** In a SelectFrom&lt;&gt; class, you configure a query to the database. The actual request to the database is performed once you cast the result of the query execution to a DAC or an array of DACs, or when you iterate through DACs in the result with the `foreach` statement. For details, see [Data Query Execution](AD__con_Query_Execution.md).

## Before You Proceed {#_1f0a8248-99eb-4897-be95-8bb852d09cbc .section}

-   Make sure that the application database has the database tables from which you are going to request data, and that the application defines the data access classes \(DACs\) for these tables. For more information on defining DACs, see [Data Access Classes in Fluent BQL](AD__con_DACs_in_FBQL.md).
-   Add references to `PX.Data.dll` and `PX.Data.BQL.Fluent.dll` in the project.
-   Add the following `using` directives to your code.

    ```
    using PX.Data.BQL.Fluent;
    using PX.Data.BQL;
    ```


## To Compose a Fluent BQL Statement {#_7070d995-fef5-4f90-98ce-2918b02a9a19 .section}

1.  Type the SelectFrom&lt;&gt; class with the needed DAC as the type parameter.

    For example, suppose that you need to convert the following SQL statement to fluent BQL.

    ```
    SELECT Product.CategoryCD, MIN(Product.BookedQty) FROM Product
    INNER JOIN SupplierProduct
        ON SupplierProduct.ProductID = Product.ProductID
    INNER JOIN Supplier
        ON Supplier.AccountID = SupplierProduct.AccountID
    WHERE (Product.BookedQty IS NOT NULL
           AND Product.AvailQty IS NOT NULL
           AND Product.MinAvailQty IS NOT NULL
           AND(Product.Active = 1
               OR Product.Active IS NULL)
           AND(Product.BookedQty > Product.AvailQty
               OR Product.AvailQty < Product.MinAvailQty))
        OR Product.AvailQty IS NOT NULL
    GROUP BY Product.CategoryCD
    ORDER BY Product.UnitPrice, Product.AvailQty DESC
    ```

    You start the corresponding fluent BQL query as follows.

    ```
    SelectFrom<Product>
    ```

2.  If you need to include `JOIN` clauses in the query, for each table that you want to join, do the following:

    1.  Append to the statement one of the Join classes—such as InnerJoin, LeftJoin, RightJoin, FullJoin, or CrossJoin, which are directly mapped to SQL JOIN clauses.
    2.  Append to the statement the On&lt;&gt; clause with the joining conditions. Adhere to the following rules when you specify the conditions:
        -   Use the And&lt;&gt;, Or&lt;&gt;, and Brackets&lt;&gt; classes to logically connect the conditions and comparisons.
        -   To specify the fields that should be used in the conditions, use the class fields defined in the DAC, such as Product.productID. \(The name of the class field starts with a lowercase letter. Do not confuse it with the property field, which has the same name but starts with an uppercase letter.\)
        -   If you need to use constants in the fluent BQL statement, use one of the predefined BQL constants or your own constant. \(For details on using constants, see [Constants in Fluent BQL](../Shared/../StudioDeveloperGuide/AD__con_Constants_in_FBQL.md).\)
        -   If you need to specify the values of the parameters at runtime, use the fluent BQL parameters. For information about parameters, see [Parameters in Fluent BQL](../Shared/../StudioDeveloperGuide/AC__con_Parameters_in_FBQL.md). For information about how to use parameters, see [To Use Parameters in Fluent BQL Queries](../Shared/../StudioDeveloperGuide/AD__how_Use_Parameters_in_FBQL.md).
    In the sample code that has been presented in this topic, you would add two Join classes to the statement, as follows.

    ```
    SelectFrom<Product>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>
    ```

3.  If you need to include a `WHERE` clause in the query, append the Where&lt;&gt; clause to the statement and specify the conditions as follows:

    -   Use the And&lt;&gt;, Or&lt;&gt;, and Brackets&lt;&gt; classes to logically connect the conditions and comparisons.
    -   To specify the fields that should be used in the conditions, use the class fields defined in the DAC, such as Product.productID. \(The name of the class field starts with a lowercase letter. Do not confuse it with the property field, which has the same name but starts with an uppercase letter.\)
    -   If you need to use constants in the fluent BQL statement, use one of the predefined BQL constants or your own constant. \(For details on using constants, see [Constants in Fluent BQL](../Shared/../StudioDeveloperGuide/AD__con_Constants_in_FBQL.md).\)
    -   If you need to specify the values of the parameters at runtime, use the fluent BQL parameters. For information about parameters, see [Parameters in Fluent BQL](../Shared/../StudioDeveloperGuide/AC__con_Parameters_in_FBQL.md). For information about how to use parameters, see [To Use Parameters in Fluent BQL Queries](../Shared/../StudioDeveloperGuide/AD__how_Use_Parameters_in_FBQL.md).
    In the sample code that has been presented in this topic, you would append the Where&lt;&gt; clause to the statement, as follows.

    ```
    SelectFrom<Product>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>.
        Where<
            Brackets<Product.bookedQty.IsNotNull.
                And<Product.availQty.IsNotNull>.
                And<Product.minAvailQty.IsNotNull>.
                And<Product.active.IsEqual<True>.
                    Or<Product.active.IsNull>>.
                And<Product.bookedQty.IsGreater<Product.availQty>.
                    Or<Product.availQty.IsLess<Product.minAvailQty>>>>.
            Or<Product.availQty.IsNotNull>>
    ```

4.  If you need to group or aggregate records, append the AggregateTo&lt;&gt; clause to the statement and specify the grouping conditions and aggregation functions by using the GroupBy clauses and the Min, Max, Sum, Avg, and Count aggregation functions.

    In the sample code that has been presented in this topic, you would append the AggregateTo&lt;&gt; clause to the statement as follows.

    ```
    SelectFrom<Product>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>.
        Where<
            Brackets<Product.bookedQty.IsNotNull.
                And<Product.availQty.IsNotNull>.
                And<Product.minAvailQty.IsNotNull>.
                And<Product.active.IsEqual<True>.
                    Or<Product.active.IsNull>>.
                And<Product.bookedQty.IsGreater<Product.availQty>.
                    Or<Product.availQty.IsLess<Product.minAvailQty>>>>.
            Or<Product.availQty.IsNotNull>>.
        AggregateTo<GroupBy<Product.categoryCD>, 
                    Min<Product.bookedQty>>
    ```

5.  If you need to order records, append to the statement the OrderBy&lt;&gt; clause with the Asc&lt;&gt; and Desc&lt;&gt; classes as the type parameters.

    In the sample code that has been presented in this topic, you would append the OrderBy&lt;&gt; clause to the statement as follows.

    ```
    SelectFrom<Product>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>.
        Where<
            Brackets<Product.bookedQty.IsNotNull.
                And<Product.availQty.IsNotNull>.
                And<Product.minAvailQty.IsNotNull>.
                And<Product.active.IsEqual<True>.
                    Or<Product.active.IsNull>>.
                And<Product.bookedQty.IsGreater<Product.availQty>.
                    Or<Product.availQty.IsLess<Product.minAvailQty>>>>.
            Or<Product.availQty.IsNotNull>>.
        AggregateTo<GroupBy<Product.categoryCD>, 
                    Min<Product.bookedQty>>.
        OrderBy<Product.unitPrice.Asc, 
                Product.availQty.Desc>
    ```


**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

