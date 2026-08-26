# To Use Parameters in Fluent BQL Queries {#_af596e3e-d343-47cf-9796-419630ca23ee .task}

If you need to specify values in a fluent business query language \(BQL\) statement, you use fluent BQL parameters, which are replaced with the needed values in the translation to SQL. For details about how BQL statements with parameters are translated to SQL, see [Translation of a BQL Command with Parameters to an SQL Query Tree](AD__con_BQL_Translation_to_SQL.md#_ff6436a7-d8a9-43c8-9201-d5ea9afbe2d5).

You may need to use BQL parameters to relate data views to each other, to pass field values to the SQL query, to pass the external presentations of the values to the SQL query, or to pass values from UI controls to the SQL query.

## To Relate Data Views to Each Another {#_27cf551c-951d-463a-9005-74584894a725 .section}

To relate data views to each another, in a data query, use the field value of the Current object from the PXCache object, as shown in the following sample code.

```
using PX.Data;
using PX.Data.BQL.Fluent;

// The view declarations in a graph
SelectFrom<Document>.View Documents;
SelectFrom<DocTransaction>.
    Where<DocTransaction.docNbr.IsEqual<Document.docNbr.FromCurrent>.
        And<DocTransaction.docType.IsEqual<Document.docType.FromCurrent>>>.View
    DocTransactions;
```

In this code, there is a many-to-one relationship between the DocTransaction and Document data access classes \(DACs\), and this relationship is implemented through the DocNbr and DocType key fields. The data views in the code connect the Document and DocTransaction records.

**Note:** Acumatica Framework translates the fluent BQL query of the second view in the sample code to the following SQL statement. In this SQL query, `[parameter1]` is the DocNbr value and `[parameter2]` is the DocType value retrieved from the Current property of the DocTransaction cache; `[list of columns]` is the list of columns of the `DocTransaction` table.

```
SET @P0 = [parameter1] 
SET @P1 = [parameter2]

SELECT * FROM DocTransaction
WHERE DocTransaction.DocNbr = @P0
    AND DocTransaction.DocType = @P1
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Pass a Field Value to the SQL Query {#_6e19063a-c756-4b7d-88a0-7d0100a187d9 .section}

To pass a specific value to the SQL query, do the following;

1.  Use the @P.As\[Type\] class of the needed type in the BQL statement, where `[Type]` is one of the following: `Bool`, `Byte`, `Short`, `Int`, `Long`, `Float`, `Double`, `Decimal`, `Guid`, `DateTime`, or `String`.
2.  Specify the needed value as the Select\(\) method argument. The value passed to Select\(\) must be of the same type as the type of the specified field.

**Note:** The @P.As\[Type\] class must be used only in the BQL statements that are directly executed in the application code. The data views that are queried from the UI will not work if they contain this class.

The code below shows the execution of a BQL statement with a specific value passed in code.

```
using PX.Data;
using PX.Data.BQL.Fluent;
using PX.Data.BQL;

// Suppose an event handler related to the Product DAC
// is being executed.
Product product = (Product)e.Row;

// Select the Category record with the specified CategoryCD.
Category category =
    SelectFrom<Category>.
        Where<Category.categoryCD.IsEqual<@P.AsString>>.View.         
        Select(this, product.CategoryCD);
```

**Note:** Acumatica Framework translates the previous fluent BQL query to the following SQL statement. In this SQL query, `[parameter]` is the value of the `product.CategoryCD` variable at the moment the Select\(\) method is invoked; `[list of columns]` is the list of columns of the `Category` table.

```
SET @P0 = [parameter] 

SELECT * FROM Category
WHERE Category.CategoryCD = @P0
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Pass Multiple Field Values to the SQL Query {#_cc3c4e58-b049-4351-b3c6-ebd9e62a350d .section}

To pass multiple values to the SQL query, do the following:

1.  Use multiple @P.As\[Type\] classes of the needed type in the fluent BQL statement, where `[Type]` is one of the following: `Bool`, `Byte`, `Short`, `Int`, `Long`, `Float`, `Double`, `Decimal`, `Guid`, `DateTime`, or `String`.
2.  Specify the needed values as the Select\(\) method arguments in the order in which the parameters are specified in the BQL statement. The number of @P.As\[Type\] classes must match the number of parameters passed to the Select\(\) method.

**Note:** The @P.As\[Type\] classes should be used in only the BQL statements that are executed in the application code.

The following code shows an example of a fluent BQL statement with two Required parameters.

```
using PX.Data;
using PX.Data.BQL.Fluent;
using PX.Data.BQL;

// Suppose an event handler related to the DocTransaction DAC
// is being executed.
DocTransaction line = (DocTransaction)e.Row;

Document doc =
    SelectFrom<Document>.
        Where<Document.docNbr.IsEqual<@P.AsString>.
             And<Document.docType.IsEqual<@P.AsString>>>.View.
    Select(this, line.DocNbr, line.DocType);
```

**Note:** Acumatica Framework translates the previous fluent BQL query to the following SQL statement, where `[list of columns]` is the list of the columns of the `Document` table.

```
SET @P0 = [line.DocNbr value]
SET @P1 = [line.DocType value]

SELECT * FROM Document
WHERE Document.DocNbr = @P0
    AND Document.DocType = @P1
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Pass a Value from a UI Control to a Data View {#_1f3bef64-92a7-469f-9fd2-89f0910565fe .section}

To pass a value from a UI control to a data view, do the following:

1.  Define a data view with the Argument.As\[Type\] class, where `[Type]` specifies the data type of the expected value, as shown in the following sample BQL query.

    ```
    using PX.Data;
    using PX.Data.BQL.Fluent;
    
    SelectFrom<TreeViewItem>.
        Where<TreeViewItem.parentID.IsEqual<Argument.AsInt>>.
        OrderBy<Asc<TreeViewItem.parentID>>.View GridDataSource;
    ```

    **Note:** Acumatica Framework translates the previous fluent BQL query to the following SQL statement. In this SQL query, `[parameter]` will contain the value received from the UI control and passed to the Select\(\) method; `[list of columns]` is the list of columns of the `TreeViewItem` table.

    ```
    SET @P0 = [parameter]
    
    SELECT [list of columns] FROM TreeViewItem
    WHERE TreeViewItem.ParentID = @P0
    ORDER BY TreeViewItem.ParentID
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

2.  Define the data view delegate with parameters through which you can access the values passed from the UI. \(You can find more information on how to use data view delegates in [To Execute a BQL Statement in a Data View Delegate](AD__how_Execute_BQL_Statement.md#_36988f03-38e3-4f9a-89f6-1623935e81fa).\)

    **Note:** When a BQL statement with the Argument parameter is executed in code, the value must be specified in the parameters of the Select\(\) method.


## To Provide External Presentation of the Field Value to the SQL Query {#_4473b629-e9a7-4f41-9041-c0442303d2be .section}

To substitute a value in the SQL query, do the following:

1.  Add the PXSelector attribute with a substitute key to a DAC field, as shown in the following example.

    ```
    using PX.Data;
    using PX.Data.BQL.Fluent;
    
    [PXSelector(typeof(SearchFor<Product.productID>.In<SelectFrom<Product>>,
                new Type [] {
                        typeof(Product.productCD),
                        typeof(Product.productName)
                },
                SubstituteKey = typeof(Product.productCD))]
    public virtual int? ProductID { get; set; }
    ```

    In this example, PXSelector replaces the ProductID field in the user interface with the human-readable ProductCD field. In the UI control for this field, the user enters a ProductCD value. The PXSelector attribute implements the FieldUpdating event handler, which replaces the ProductCD value with the corresponding ProductID value.

2.  Use the AsOptional class to select records by the external presentation of the field value, as shown in the following code for OrderLine records.

    ```
    using PX.Data;
    using PX.Data.BQL.Fluent;
    
    // p is a Product data record.
    // To select OrderLine records, pass the ProductCD value
    // to the Select() method.
    PXResultset<OrderLine> details = 
        SelectFrom<OrderLine>.
            Where<OrderLine.productID.IsEqual<OrderLine.productID.AsOptional>>.
            View.
        Select(this, p.ProductCD);
    ```

3.  In the Select\(\) method, provide values for all AsOptional, @P.As\[Type\], and Argument.As\[Type\] parameters up to the last @P.As\[Type\] or Argument.As\[Type\] parameter in the fluent BQL statement, as shown in the following sample code.

    ```
    using PX.Data;
    using PX.Data.BQL.Fluent;
    
    // P is a Product data record. 
    // od is an OrderLine data record.
    
    // At least three values (in addition to the graph reference) must
    // be passed to the Select() method below.
    // The second AsOptional parameter here will be replaced with the
    // default UnitPrice value.
    PXResultset<OrderLine> details =
        SelectFrom<OrderLine>.
            Where<OrderLine.productID.IsEqual<OrderLine.productID.AsOptional>.
                And<OrderLine.extPrice.IsLess<@P.AsDecimal>>.
                And<OrderLine.unitPrice.IsGreater<@P.AsDecimal>>.
                And<OrderLine.taxRate.IsEqual<OrderLine.taxRate.AsOptional>>>.View.
            .Select(this, p.ProductCD, od.ExtPrice, od.UnitPrice);
    ```

    **Note:** Acumatica Framework translates the fluent BQL query in the code to the following SQL statement, where `[list of columns]` is the list of columns of the `OrderLine` table.

    ```
    SET @P0 = [line.ProductID value or default]
    SET @P1 = [line.ExtPrice value]
    SET @P2 = [line.UnitPrice value]
    SET @P3 = [Default TaxRate value]
    
    SELECT [list of columns] FROM OrderLine
    WHERE OrderLine.ProductID = @P0
        AND OrderLine.ExtPrice < @P1
        AND OrderLine.UnitPrice > @P2
        AND OrderLine.TaxRate = @P3
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

