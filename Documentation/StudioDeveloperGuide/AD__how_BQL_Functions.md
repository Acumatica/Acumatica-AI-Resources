# To Use Arithmetic Operations {#_82cf157e-97f8-42d6-85f9-3774c7ff13ef .task}

Arithmetic operations—such as `Add<Operand1, Operand2>`, `Sub<Operand1, Operand2>`, `Mult<Operand1, Operand2>`, `Div<Operand1, Operand2>`, `Minus<Operand>`, and `Power<Operand1, Operand2>`—are used primarily in attributes to calculate the value of a field from other fields. Arithmetic operations can also be used as operands in Where and OrderBy clauses in business query language \(BQL\) statements.

## To Use Arithmetic Operations in Attributes { .section}

1.  Compose the expression by using arithmetic operations. For example, you can calculate product reorder discrepancy by using the following BQL expression, where the decimal\_0 constant represents the 0 decimal value. IsNull returns the first argument if it is not null or the second argument otherwise.

    ```
    Minus<
        Sub<Sub<IsNull<Product.availQty, decimal_0>, 
                IsNull<Product.bookedQty, decimal_0>>, 
            Product.minAvailQty>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query.

    ```
     -((ISNULL(Product.AvailQty, .0) - ISNULL(Product.BookedQty, .0))
        - Product.MinAvailQty)
    ```

2.  Use the calculated expression in an attribute \(such as PXDBCalced\) to define a calculated field that is not bound to a database column, as shown in the following sample code.

    ```
    // Data field definition in a DAC
    [PXDecimal(2)]
    [PXDBCalced(typeof(Minus<
                           Sub<Sub<IsNull<Product.availQty, decimal_0>, 
                                   IsNull<Product.bookedQty, decimal_0>>, 
                               Product.minAvailQty>>),
                typeof(Decimal))]
    public virtual decimal? Discrepancy { get; set; }
    ```


## To Use Arithmetic Operations in BQL Statements { .section}

1.  Compose the expression by using arithmetic operations. For example, you can calculate product reorder discrepancy by using the following BQL expression, where the decimal\_0 constant represents the 0 decimal value. IsNull returns the first argument if it is not null or the second argument otherwise.

    ```
    Minus<
        Sub<Sub<IsNull<Product.availQty, decimal_0>, 
                IsNull<Product.bookedQty, decimal_0>>, 
            Product.minAvailQty>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query.

    ```
     -((ISNULL(Product.AvailQty, .0) - ISNULL(Product.BookedQty, .0))
        - Product.MinAvailQty)
    ```

2.  Use the calculated expression in a BQL statement, as shown in the following example.

    ```
    PXSelect<Product,
        Where<Minus<
                  Sub<Sub<IsNull<Product.availQty, decimal_0>, 
                          IsNull<Product.bookedQty, decimal_0>>, 
                      Product.minAvailQty>>,
              NotEqual<decimal_0>>>
    ```

    **Note:** Acumatica Framework translates the previous BQL statement to the following SQL query, where `[list of columns]` is the list of columns of the `Product` table.

    ```
    SELECT [list of columns] FROM Product
    WHERE -((ISNULL(Product.AvailQty, .0) - ISNULL(Product.BookedQty, .0))
            - Product.MinAvailQty) <> .0
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

