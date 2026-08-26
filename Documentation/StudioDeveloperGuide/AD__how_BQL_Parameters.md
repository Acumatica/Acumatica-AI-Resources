# To Use Parameters in Traditional BQL {#_d54a07cc-67d0-4ccb-8cf2-5be7210fb8ec .task}

You may need to use BQL parameters if you need to relate data views to each other, to pass field values to the SQL query, to pass the external presentations of the values to the SQL query, or to pass values from UI controls to the SQL query. For more information on the BQL parameters, see [Parameters in Traditional BQL Statements](AD__con_Parameters.md#).

## To Relate Data Views to One Another {#_def33638-9099-460b-b2d8-b93f75871625 .section}

To relate data views to one another, use the Current parameter, as shown in the following sample code.

```
// The view declarations in a graph
PXSelect<Document> Documents;
PXSelect<DocTransaction,
    Where<DocTransaction.docNbr, Equal<Current<Document.docNbr>>,
        And<DocTransaction.docType, Equal<Current<Document.docType>>>>>
            DocTransactions;
```

In this code, there is a many-to-one relationship between the DocTransaction and Document data access classes \(DACs\), and this relationship is implemented through the DocNbr and DocType key fields. The views in the code connect the Document and DocTransaction records.

**Note:** Acumatica Framework translates the BQL query of the second view in the sample BQL code to the following SQL statement. In this SQL query, `[parameter1]` is the DocNbr value and `[parameter2]` is the DocType value taken from the Current property of the DocTransaction cache; `[list of columns]` is the list of columns of the `DocTransaction` table.

```
SET @P0 = [parameter1] 
SET @P1 = [parameter2]

SELECT * FROM DocTransaction
WHERE DocTransaction.DocNbr = @P0
    AND DocTransaction.DocType = @P1
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Pass a Field Value to the SQL Query {#_6e19063a-c756-4b7d-88a0-7d0100a187d9 .section}

To pass a specific value to the SQL query, use the Required parameter in the BQL statement and specify the needed value as the Select\(\) method argument. The value passed to Select\(\) must be of the same type as the type of the specified field.

**Note:** The Required parameter should be used only in the BQL statements that are directly executed in the application code. The data views that are queried from the UI will not work if they contain Required parameters.

The code below shows the execution of a BQL statement with the Required parameter.

```
// Suppose an event handler related to the Product DAC
// is being executed
Product product = (Product)e.Row;

// Select the Category record with the specified CategoryCD
Category category =
    PXSelect<Category,
        Where<Category.categoryCD, Equal<Required<Category.categoryCD>>>>
        .Select(this, product.CategoryCD);
```

**Note:** Acumatica Framework translates the previous BQL query to the following SQL statement. In this SQL query, `[parameter]` is the value of the `product.CategoryCD` variable at the moment the Select\(\) method is invoked; `[list of columns]` is the list of columns of the `Category` table.

```
SET @P0 = [parameter] 

SELECT * FROM Category
WHERE Category.CategoryCD = @P0
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Pass Multiple Field Values to the SQL Query {#_cc3c4e58-b049-4351-b3c6-ebd9e62a350d .section}

To pass multiple values to the SQL query, use multiple Required parameters in the BQL statement and specify the needed values as the Select\(\) method arguments in the order in which the parameters are specified in the BQL statement. The number of Required parameters must match the number of parameters passed to the Select\(\) function.

**Note:** The Required parameters should be used in only the BQL statements that are executed in the application code.

The following code shows an example of a BQL statement with two Required parameters.

```
// Suppose an event handler related to the DocTransaction DAC
// is being executed
DocTransaction line = (DocTransaction)e.Row;
...
Document doc =
    PXSelect<Document,
        Where<Document.docNbr, Equal<Required<DocTransaction.docNbr>,
            And<Document.docType, Equal<Required<DocTransaction.docType>>>>>
    .Select(this, line.DocNbr, line.DocType);
```

**Note:** Acumatica Framework translates the previous BQL query to the following SQL statement, where `[list of columns]` is the list of columns of the `Document` table.

```
SET @P0 = [line.DocNbr value]
SET @P1 = [line.DocType value]

SELECT * FROM Document
WHERE Document.DocNbr = @P0
    AND Document.DocType = @P1
```

Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

## To Provide External Presentation of the Field Value to the SQL Query {#_4473b629-e9a7-4f41-9041-c0442303d2be .section}

To substitute the value in the SQL query, do the following:

1.  Add the PXSelector attribute with a substitute key to a DAC field, as shown in the following example.

    ```
    [PXSelector(typeof(Search<Product.productID>),
                new Type [] {
                        typeof(Product.productCD),
                        typeof(Product.productName)
                },
                SubstituteKey = typeof(Product.productCD))]
    public virtual int? ProductID { get; set; }
    ```

    In this example, PXSelector replaces the ProductID field in the user interface with the human-readable ProductCD field. In the UI control for this field, the user enters a ProductCD value. The PXSelector attribute implements the FieldUpdating event handler, which replaces the ProductCD value with the corresponding ProductID value.

2.  Use the Optional parameter to select records by the external presentation of the field value, as shown in the following code for OrderDetail records.

    ```
    // Product data record obtained
    Product p = ...
    // Selecting OrderDetail records: ProductCD value is passed
    // to the Select() method.
    PXSelect<OrderDetail,
        Where<OrderDetail.ProductID, Equal<Optional<OrderDetail.ProductID>>>>
            .Select(this, p.ProductCD);
    ```

3.  In the Select\(\) method, provide values for all Optional, Required, and Argument parameters up to the last Required or Argument parameter in the BQL statement, as shown in the following sample code.

    ```
    // Related OrderDetail and Product records obtained
    OrderDetail od = ...
    Product p = ...
    
    // At least three values (in addition to graph reference) must
    // be passed to the Select() method below.
    // The second Optional parameter here will be replaced with the
    // default UnitPrice value.
    PXResultset<OrderDetail> details =
       PXSelect<OrderDetail,
          Where<OrderDetail.productID, Equal<Optional<OrderDetail.productID>>,
              And<OrderDetail.extPrice, Less<Required<OrderDetail.extPrice>>,
              And<OrderDetail.unitPrice, Greater<Required<OrderDetail.unitPrice>>,
              And<OrderDetail.taxRate, Equal<Optional<OrderDetail.taxRate>>>>>>>
          .Select(this, p.ProductCD, od.ExtPrice, od.UnitPrice);
    ```

    **Note:** Acumatica Framework translates the BQL query in the code to the following SQL statement, where `[list of columns]` is the list of columns of the `OrderDetail` table.

    ```
    SET @P0 = [line.ProductID value or default]
    SET @P1 = [line.ExtPrice value]
    SET @P2 = [line.UnitPrice value]
    SET @P3 = [Default TaxRate value]
    
    SELECT [list of columns] FROM OrderDetail
    WHERE OrderDetail.ProductID = @P0
        AND OrderDetail.ExtPrice < @P1
        AND OrderDetail.UnitPrice > @P2
        AND OrderDetail.TaxRate = @P3
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).


## To Pass a Value from a UI Control to a Data View {#_1f3bef64-92a7-469f-9fd2-89f0910565fe .section}

To pass a value from a UI control to a data view, do the following:

1.  Define the PXSelect data view with the Argument parameter whose type parameter specifies the data type of the expected value, as shown in the following sample BQL query.

    ```
    PXSelect<TreeViewItem,
        Where<TreeViewItem.parentID, Equal<Argument<int?>>>,
        OrderBy<Asc<TreeViewItem.parentID>>> GridDataSource;
    ```

    **Note:** Acumatica Framework translates the previous BQL query to the following SQL statement. In this SQL query, `[parameter]` will contain the value received from the UI control and passed to the Select\(\) method; `[list of columns]` is the list of columns of the `TreeViewItem` table.

    ```
    SET @P0 = [parameter]
    
    SELECT [list of columns] FROM TreeViewItem
    WHERE TreeViewItem.ParentID = @P0
    ORDER BY TreeViewItem.ParentID
    ```

    Acumatica Framework explicitly enumerates the columns of the database table in the SQL query. For details on which columns are enumerated, see [Translation of a BQL Command to SQL](../Shared/../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md#).

2.  Define the data view delegate with the parameters through which you can access the values passed from the UI. \(You can find more information on how to use data view delegates in [To Execute BQL Statements](AD__how_Execute_BQL_Statement.md).\)

    **Note:** When a BQL statement with the Argument parameter is executed in code, the value must be specified in the parameters of the Select\(\) method.


**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

