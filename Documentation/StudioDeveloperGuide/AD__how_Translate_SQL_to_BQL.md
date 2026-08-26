# To Compose a BQL Statement from an SQL Statement {#_0c3be5f8-d333-4080-9180-f610b0f14757 .task}

If you are familiar with the construction of SQL statements, you may want to first construct an SQL statement and then translate it to business query language \(BQL\). You can perform the instructions described in this topic to translate SQL statements to BQL statements.

## To Translate an SQL Statement to BQL { .section}

1.  Construct an SQL statement that selects the data you need.

    For example, suppose that you need to convert to BQL the following SQL statement. In this SQL query, we use the `*` sign to indicate that all columns of the Product table should be selected.

    ```
    SELECT * FROM Product
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
    ORDER BY Product.UnitPrice, Product.AvailQty DESC
    ```

2.  Replace the names of columns with the names of class fields that correspond to the columns in data access classes \(DACs\). That is, change the uppercase letter in the name of each column to the lowercase, as shown in the following sample code. In this sample code, the changes are shown in bold type.

    ```
    SELECT * FROM Product
    INNER JOIN SupplierProduct
        ON SupplierProduct.**productID** = Product.**productID**
    INNER JOIN Supplier
        ON Supplier.**accountID** = SupplierProduct.**accountID**
    WHERE (Product.**bookedQty** IS NOT NULL
           AND Product.**availQty** IS NOT NULL
           AND Product.**minAvailQty** IS NOT NULL
           AND(Product.**active** = 1
               OR Product.**active** IS NULL)
           AND(Product.**bookedQty** > Product.**availQty**
               OR Product.**availQty** < Product.**minAvailQty**))
        OR Product.**availQty** IS NOT NULL
    ORDER BY Product.unitPrice, Product.availQty DESC
    ```

3.  If your SQL statement contains constants, replace it with either one of the predefined constants or your own constant. \(For details on using constants, see [To Compare a Field with a Constant](AD__how_BQL_Filter.md#_32d3d633-c741-4cc3-8f49-f4a611f164cb).\) If you need to change the values of the constants at runtime, replace the constants with parameters, as described in [To Use Parameters in Traditional BQL](AD__how_BQL_Parameters.md#).
4.  Find the `JOIN`, `WHERE`, `GROUP BY`, and `ORDER BY` clauses that you have in the SQL statement. Depending on the included clauses, select one of the PXSelect classes, and replace `SELECT * FROM` with this class in your SQL statement. For details on selection of the PXSelect class, see [To Select Records By Using Traditional BQL](AD__how_Construct_Statement.md#). For the list of all PXSelect classes, see [PXSelect Classes](AD__con_BQL_PXSelect.md#).

    In the sample code that has been presented in this topic, you would use the PXSelectJoin&lt;Table, Join, Where, OrderBy&gt; class, and you would change the sample code as follows. \(The changes are shown in bold type.\)

    ```
    **PXSelectJoin&lt;Product,**
    INNER JOIN SupplierProduct
        ON SupplierProduct.productID = Product.productID
    INNER JOIN Supplier
        ON Supplier.accountID = SupplierProduct.accountID**,**
    WHERE (Product.bookedQty IS NOT NULL
           AND Product.availQty IS NOT NULL
           AND Product.minAvailQty IS NOT NULL
           AND(Product.active = 1
               OR Product.active IS NULL)
           AND(Product.bookedQty > Product.availQty
               OR Product.availQty < Product.minAvailQty))
        OR Product.availQty IS NOT NULL**,**
    ORDER BY Product.unitPrice, Product.availQty DESC**&gt;**
    ```

5.  If your SQL statement includes `JOIN` clauses, do the following:
    1.  Replace the last `JOIN` clause with the corresponding BQL Join clause. You would change the sample code of this topic as follows. \(The changes are shown in bold type.\)

        ```
        PXSelectJoin<Product,
        INNER JOIN SupplierProduct
            ON SupplierProduct.productID = Product.productID
        **InnerJoin&lt;**Supplier**,**
            ON Supplier.accountID = SupplierProduct.accountID**&gt;**,
        WHERE (Product.bookedQty IS NOT NULL
               AND Product.availQty IS NOT NULL
               AND Product.minAvailQty IS NOT NULL
               AND(Product.active = 1
                   OR Product.active IS NULL)
               AND(Product.bookedQty > Product.availQty
                   OR Product.availQty < Product.minAvailQty))
            OR Product.availQty IS NOT NULL,
        ORDER BY Product.unitPrice, Product.availQty DESC>
        ```

    2.  Chain other `JOIN` clauses to one another, as described in [To Query Multiple Tables](AD__how_Query_Multiple_Tables.md#). You would change the sample code of this topic as follows. \(The changes are shown in bold type.\)

        ```
        PXSelectJoin<Product,
        **InnerJoin&lt;**SupplierProduct**,**
            ON SupplierProduct.productID = Product.productID**,**
        InnerJoin<Supplier,
            ON Supplier.accountID = SupplierProduct.accountID>**&gt;**,
        WHERE (Product.bookedQty IS NOT NULL
               AND Product.availQty IS NOT NULL
               AND Product.minAvailQty IS NOT NULL
               AND(Product.active = 1
                   OR Product.active IS NULL)
               AND(Product.bookedQty > Product.availQty
                   OR Product.availQty < Product.minAvailQty))
            OR Product.availQty IS NOT NULL,
        ORDER BY Product.unitPrice, Product.availQty DESC>
        ```

    3.  Replace each `ON` clause, as follows:

        -   For a single condition or groups that start with a simple condition, replace the `ON` clause with On.
        -   For groups that start with a group of conditions, replace the `ON` clause with On2.
        With these replacements, the sample code used in this topic would be changed to the following code. \(The changes are shown in bold type.\)

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            **On&lt;**SupplierProduct.productID = Product.productID**&gt;**,
        InnerJoin<Supplier,
            **On&lt;**Supplier.accountID = SupplierProduct.accountID**&gt;**>>,
        WHERE (Product.bookedQty IS NOT NULL
               AND Product.availQty IS NOT NULL
               AND Product.minAvailQty IS NOT NULL
               AND(Product.active = 1
                   OR Product.active IS NULL)
               AND(Product.bookedQty > Product.availQty
                   OR Product.availQty < Product.minAvailQty))
            OR Product.availQty IS NOT NULL,
        ORDER BY Product.unitPrice, Product.availQty DESC>
        ```

6.  If your SQL statement includes a `WHERE` clause, replace the `WHERE` clause and each pair of parentheses that encloses each group of conditions in the `WHERE` clause with a Where, Where2, Not, or Not2 clause, as follows:

    -   Where is used for groups that start with a simple condition.
    -   Not is used for groups that start with a simple condition but are preceded with the logical `NOT`.
    -   Where2 is used for groups that start with a group of conditions.
    -   Not2 is used for groups that start with a group of conditions but preceded with the logical `NOT`.
    With these replacements, the sample code used in this topic would be changed to the following code. \(The changes are shown in bold type.\)

    ```
    PXSelectJoin<Product,
    InnerJoin<SupplierProduct,
        On<SupplierProduct.productID = Product.productID>,
    InnerJoin<Supplier,
        On<Supplier.accountID = SupplierProduct.accountID>>>,
    **Where2&lt;****Where&lt;**Product.bookedQty**,** IS NOT NULL
           AND Product.availQty IS NOT NULL
           AND Product.minAvailQty IS NOT NULL
           AND **Where&lt;**Product.active = 1**,**
               OR Product.active IS NULL**&gt;**
           AND **Where&lt;**Product.bookedQty > Product.availQty**,**
               OR Product.availQty < Product.minAvailQty**&gt;****&gt;****,**
        OR Product.availQty IS NOT NULL**&gt;**,
    OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
    ```

7.  In each BQL Where or On clause, replace the logical operators \(either `AND` or `OR`\) to And, Or, And2, or Or2, as follows:
    1.  Replace the last `AND` or `OR` in each BQL Where or On clause with the And or Or operator, respectively, as shown in the following code. \(The changes are shown in bold type.\)

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            On<SupplierProduct.productID = Product.productID>,
        InnerJoin<Supplier,
            On<Supplier.accountID = SupplierProduct.accountID>>>,
        Where2<Where<Product.bookedQty, IS NOT NULL
               AND Product.availQty IS NOT NULL
               AND Product.minAvailQty IS NOT NULL
               AND Where<Product.active = 1,
                   **Or&lt;**Product.active IS NULL**&gt;**>
               **And&lt;**Where<Product.bookedQty > Product.availQty,
                   **Or&lt;**Product.availQty < Product.minAvailQty**&gt;**>**&gt;**>,
            **Or&lt;**Product.availQty IS NOT NULL**&gt;**>,
        OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
        ```

    2.  In each BQL Where or On clause, if the `AND` or `OR` is located before a simple condition, replace it with And or Or, respectively. If the condition is preceded by `NOT`, wrap it in Not. With these replacements, the sample code used in this topic would be changed to the following code. \(The changes are shown in bold type.\)

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            On<SupplierProduct.productID = Product.productID>,
        InnerJoin<Supplier,
            On<Supplier.accountID = SupplierProduct.accountID>>>,
        Where2<Where<Product.bookedQty, IS NOT NULL,
               **And&lt;**Product.availQty IS NOT NULL**,**
               **And&lt;**Product.minAvailQty IS NOT NULL**,**
               AND Where<Product.active = 1,
                   Or<Product.active IS NULL>>
               And<Where<Product.bookedQty > Product.availQty,
                   Or<Product.availQty < Product.minAvailQty>>>**&gt;****&gt;**>,
            Or<Product.availQty IS NOT NULL>>,
        OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
        ```

    3.  In each BQL Where or On clause, if the `AND` or `OR` is located before a group of conditions, replace it with And2&lt;Operator, NextOperator&gt; or Or2&lt;Operator, NextOperator&gt;, respectively. The first parameter in a logical operator is Where \(or Where2\). If the condition is preceded by `NOT`, place `Not` before a group in a Where clause. The following sample code implements these changes \(shown in bold type\).

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            On<SupplierProduct.productID = Product.productID>,
        InnerJoin<Supplier,
            On<Supplier.accountID = SupplierProduct.accountID>>>,
        Where2<Where<Product.bookedQty, IS NOT NULL,
               And<Product.availQty IS NOT NULL,
               And<Product.minAvailQty IS NOT NULL,
               **And2&lt;**Where<Product.active = 1,
                   Or<Product.active IS NULL>>,
               And<Where<Product.bookedQty > Product.availQty,
                   Or<Product.availQty < Product.minAvailQty>>>**&gt;**>>>,
            Or<Product.availQty IS NOT NULL>>,
        OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
        ```

8.  In each Where or On clause, replace the groups that use arithmetic operations with the corresponding BQL operators, as described in [To Use Arithmetic Operations](AD__how_BQL_Functions.md#).
9.  In each Where or On clause, replace each comparison with the corresponding comparison operator, such as Equal, Greater, or IsNull. For more information on constructing comparisons, see [To Filter Records](AD__how_BQL_Filter.md#).

    The following sample code includes these changes \(shown in bold type\).

    ```
    PXSelectJoin<Product,
    InnerJoin<SupplierProduct,
        On<SupplierProduct.productID**, Equal&lt;Product.productID&gt;**>,
    InnerJoin<Supplier,
        On<Supplier.accountID**, Equal&lt;SupplierProduct.accountID&gt;**>>>,
    Where2<Where<Product.bookedQty, **IsNotNull**,
           And<Product.availQty**, IsNotNull**,
           And<Product.minAvailQty**, IsNotNull**,
           And2<Where<Product.active**, Equal&lt;True&gt;**,
               Or<Product.active**, IsNull**>>,
           And<Where<Product.bookedQty**, Greater&lt;Product.availQty&gt;**,
               Or<Product.availQty**, Less&lt;Product.minAvailQty&gt;**>>>>>>>,
        Or<Product.availQty**, IsNotNull**>>,
    OrderBy<Asc<Product.unitPrice, Desc<Product.availQty>>>>
    ```

10. Align logical operators of the same level so that they have the same indentation and so that each simple condition is placed on a separate line. Do not add line breaks before nested Where clauses.
11. If your SQL statement includes the `GROUP BY` clause, do the following:
    1.  Replace the `GROUP BY` clause with the Aggregate clause.
    2.  Chain the GroupBy clause and aggregation functions \(such as Min, Max, Sum, Avg, and Count\) to one another as described in [To Group and Aggregate Records in Traditional BQL](AD__how_BQL_Group_and_Aggregate.md#).
12. If your SQL statement includes the `ORDER BY` clause, do the following:
    1.  Replace the `ORDER BY` clause with the OrderBy clause. The following sample code shows this change \(with changes shown in bold type\).

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            On<SupplierProduct.productID, Equal<Product.productID>>,
        InnerJoin<Supplier,
            On<Supplier.accountID, Equal<SupplierProduct.accountID>>>>,
        Where2<Where<Product.bookedQty, IsNotNull,
               And<Product.availQty, IsNotNull,
               And<Product.minAvailQty, IsNotNull,
               And2<Where<Product.active, Equal<True>,
                   Or<Product.active, IsNull>>,
               And<Where<Product.bookedQty, Greater<Product.availQty>,
                   Or<Product.availQty, Less<Product.minAvailQty>>>>>>>>,
            Or<Product.availQty, IsNotNull>>,
        **OrderBy&lt;**Product.unitPrice, Product.availQty DESC**&gt;**>
        ```

    2.  Chain the Asc and Desc operators to one another, as described in [To Order Records](AD__how_BQL_OrderBy.md#). The following sample code shows this change \(with changes shown in bold type\).

        ```
        PXSelectJoin<Product,
        InnerJoin<SupplierProduct,
            On<SupplierProduct.productID, Equal<Product.productID>>,
        InnerJoin<Supplier,
            On<Supplier.accountID, Equal<SupplierProduct.accountID>>>>,
        Where2<Where<Product.bookedQty, IsNotNull,
               And<Product.availQty, IsNotNull,
               And<Product.minAvailQty, IsNotNull,
               And2<Where<Product.active, Equal<True>,
                   Or<Product.active, IsNull>>,
               And<Where<Product.bookedQty, Greater<Product.availQty>,
                   Or<Product.availQty, Less<Product.minAvailQty>>>>>>>>,
            Or<Product.availQty, IsNotNull>>,
        OrderBy<**Asc&lt;**Product.unitPrice, **Desc&lt;**Product.availQty**&gt;****&gt;**>>
        ```

13. Check that the final statement is correct by doing the following:
    -   Check that all lines except the last line of the BQL statement end with a comma.
    -   Ensure that the number of closing angle brackets equals the number of opening angle brackets.

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

