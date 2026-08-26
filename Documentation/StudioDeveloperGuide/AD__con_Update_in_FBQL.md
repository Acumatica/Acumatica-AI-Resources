# To Update Data in Fluent BQL {#_0512da12-3f77-45a8-a57a-8c68331f8174 .concept}

You can update records from the database by using the Update&lt;&gt; class and append the needed clauses to the statement.

This topic describes how to compose Update statements by using fluent BQL.

**Note:** In a Update&lt;&gt; class, you configure a query to the database. The actual request to the database is performed right away \(unlike the select statement, described in [To Select Records by Using Fluent BQL](AD__how_Select_Records_in_Fluent_BQL.md)\) and returns the number of updated records.

## Before You Proceed {#_1f0a8248-99eb-4897-be95-8bb852d09cbc .section}

-   Make sure that the application database has the database tables you are going to update, and that the application defines the data access classes \(DACs\) for these tables. For more information on defining DACs, see [Data Access Classes in Fluent BQL](AD__con_DACs_in_FBQL.md).
-   Add references to `PX.Data.dll` and `PX.Data.BQL.Fluent.dll` in the project.
-   Add the following `using` directives to your code.

    ```
    using PX.Data.BQL.Fluent;
    using PX.Data.BQL;
    ```


## To Compose a Fluent BQL Statement {#_7070d995-fef5-4f90-98ce-2918b02a9a19 .section}

1.  Enter the Update&lt;&gt; class with the needed DAC as the type parameter.

    For example, suppose that you need to convert the following SQL statement to fluent BQL.

    ```
    UPDATE Product 
      SET Product.BookedQty = NULL
      INNER JOIN SupplierProduct
        ON SupplierProduct.ProductID = Product.ProductID
      INNER JOIN Supplier
        ON Supplier.AccountID = SupplierProduct.AccountID
      WHERE (Product.AvailQty IS NOT NULL
           AND Product.MinAvailQty IS NOT NULL
           AND(Product.Active = 1
               OR Product.Active IS NULL)
           AND(Product.BookedQty > Product.AvailQty
               OR Product.AvailQty < Product.MinAvailQty))
        OR Product.AvailQty IS NOT NULL
    ```

    You start the corresponding fluent BQL query as follows.

    ```
    Update<Product>.Set<Product.BookedQty.EqualTo<Null>>
    ```

2.  If you need to include `JOIN` clauses in the query, for each table that you want to join, do the following:

    1.  Append to the statement one of the Join classes—such as InnerJoin, LeftJoin, RightJoin, FullJoin, or CrossJoin—which are directly mapped to SQL JOIN clauses.
    2.  Append to the statement the On&lt;&gt; clause with the joining conditions. Adhere to the following rules when you specify the conditions:
        -   Use the And&lt;&gt;, Or&lt;&gt;, and Brackets&lt;&gt; classes to logically connect the conditions and comparisons.
        -   To specify the fields that should be used in the conditions, use the class fields defined in the DAC, such as Product.productID. \(The name of the class field starts with a lowercase letter. Do not confuse it with the property field, which has the same name but starts with an uppercase letter.\)
        -   If you need to use constants in the fluent BQL statement, use one of the predefined BQL constants or your own constant. \(For details on using constants, see [Constants in Fluent BQL](../Shared/../StudioDeveloperGuide/AD__con_Constants_in_FBQL.md).\)
        -   If you need to specify the values of the parameters at runtime, use the fluent BQL parameters. For information about parameters, see [Parameters in Fluent BQL](../Shared/../StudioDeveloperGuide/AC__con_Parameters_in_FBQL.md). For information about how to use parameters, see [To Use Parameters in Fluent BQL Queries](../Shared/../StudioDeveloperGuide/AD__how_Use_Parameters_in_FBQL.md).
    In the sample code that has been presented in this topic, you would add two Join classes to the statement, as follows.

    ```
    Update<Product>.Set<Product.BookedQty.EqualTo<Null>>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>
    ```

3.  If you need to include a `WHERE` clause in the query, append the Where&lt;&gt; clause to the statement adhering to the rules listed in the previous instruction.

    In the sample code that has been presented in this topic, you would append the Where&lt;&gt; clause to the statement, as follows.

    ```
    Update<Product>.Set<Product.BookedQty.EqualTo<Null>>.
        InnerJoin<SupplierProduct>.
            On<SupplierProduct.productID.IsEqual<Product.productID>>.
        InnerJoin<Supplier>.
            On<Supplier.accountID.IsEqual<SupplierProduct.accountID>>
        Where<
            Brackets<Product.availQty.IsNotNull.
                And<Product.minAvailQty.IsNotNull>.
                And<Product.active.IsEqual<True>.
                    Or<Product.active.IsNull>>.
                And<Product.bookedQty.IsGreater<Product.availQty>.
                    Or<Product.availQty.IsLess<Product.minAvailQty>>>.
            Or<Product.availQty.IsNotNull>>
    ```

    **Note:** To compare values, use the IsEqual method. To assign a value, use the EqualTo method.

4.  If you need to group or aggregate records, append the AggregateTo&lt;&gt; clause to the statement, and specify the grouping conditions and aggregation functions by using the GroupBy clauses and the Min, Max, Sum, Avg, and Count aggregation functions.

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
        AggregateTo<GroupBy<Product.categoryCD>>
    ```


## Example { .section}

Suppose that you need to convert the following SQL statement to fluent BQL. The statement is used in the ARDocumentRelease graph.

```
UPDATE ARAdjust
  SET ARAdjust.pPDCrMemoRefNbr = NULL
  WHERE ARAdjust.pendingPPD = 1
    AND ARAdjust.adjdDocType = @AdjdDocType
    AND ARAdjust.adjdRefNbr = @AdjdRefNbr
    AND ARAdjust.pPDCrMemoRefNbr = @AdjgRefNbr
```

The statement in fluent BQL is the following.

```
Update<ARAdjust>.
  Set<ARAdjust.pPDCrMemoRefNbr.EqualTo<Null>>.
  Where<ARAdjust.pendingPPD.IsEqual<True>.
    And<ARAdjust.adjdDocType.IsEqual<@P.AsString>>.
    And<ARAdjust.adjdRefNbr.IsEqual<@P.AsString>>.
    And<ARAdjust.pPDCrMemoRefNbr.IsEqual<@P.AsString>>>
.Update(this, voidadj.AdjdDocType, voidadj.AdjdRefNbr, voidadj.AdjgRefNbr);
```

**Note:** The statement uses parameters. For details on using parameters, refer to [To Use Parameters in Fluent BQL Queries](AD__how_Use_Parameters_in_FBQL.md).

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

