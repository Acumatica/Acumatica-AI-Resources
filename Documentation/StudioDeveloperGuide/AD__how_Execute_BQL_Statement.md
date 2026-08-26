# To Execute BQL Statements {#_2204f63e-6ab7-4f29-ba28-1b549570e40f .task}

To send a request to the database, you call the Select\(\) method of a PXSelectBase-derived class and cast the result of the query execution to a data access class \(DAC\) or an array of DACs, as described in this topic. The Select\(\) method can accept additional parameters if a business query language \(BQL\) statement includes parameters.

## To Execute a BQL Statement That Defines a Data View { .section}

When an Acumatica ERP form requests data, you do not need to execute a data view manually; the system executes each data view automatically. If you need to manually execute a BQL statement that defines a data view, do the following:

1.  Declare a data view as a member in a graph.
2.  Execute the data view by calling the Select\(\) method of a PXSelectBase-derived class.
3.  Cast the result of the query execution to a DAC or an array of DACs, or iterate through DACs in the result by using the `foreach` statement. The following sample code shows the approach of iterating through DACs. For details, see [To Process the Result of the Execution of the BQL Statement](AD__how_Process_Resultset.md).

    ```
    // Business logic controller (graph) declaration
    public class OrderDataEntry : PXGraph<OrderDataEntry, SalesOrder>
    {
        // A data view declared as a graph member
        public SelectFrom<SalesOrder>.
                   OrderBy<Asc<SalesOrder.orderNbr>>.View Orders;
        ...
        public void SomeMethod()
        {
            // An execution of the data view in code
            foreach(SalesOrder so in Orders.Select())
            {
                // The SalesOrder record selected by a data view can
                // be modified and updated through the Update() method.
                so.OrderTotal = so.LinesTotal + so.FreightAmt;
                // Update the SalesOrder data record in PXCache
                Orders.Update(so); 
            }
        }
    }
    ```


## To Execute a BQL Statement Statically { .section}

To execute a BQL statement statically, do the following:

1.  Execute a BQL statement by using the `static` Select\(\) method of a PXSelectBase-derived class. Provide a graph object as the parameter of the method.
2.  Cast the result of the query execution to a DAC or an array of DACs, or iterate through DACs in the result by using the `foreach` statement. The following sample code shows the approach of iterating through DACs. For details, see [To Process the Result of the Execution of the BQL Statement](AD__how_Process_Resultset.md).

```
// Business logic controller (graph) declaration
public class OrderDataEntry : PXGraph<OrderDataEntry, SalesOrder>
{
    ...
    public void SomeMethod()
    {
        // Execution through the static Select() method
        foreach(SalesOrder so in
            SelectFrom<SalesOrder>.
                OrderBy<Asc<SalesOrder.orderNbr>>.View.Select(this))
            ...
    }
}
```

## To Execute a BQL Statement Dynamically { .section}

To execute a BQL statement dynamically, do the following:

1.  Dynamically instantiate a data view in code. You should also provide the graph object as a parameter to the data view constructor.
2.  Execute the data view by using the Select\(\) method of the instance of a PXSelectBase-derived class.
3.  Cast the result of the query execution to a DAC or an array of DACs, or iterate through DACs in the result by using the `foreach` statement. The following sample code shows the approach of iterating through DACs. For details, see [To Process the Result of the Execution of the BQL Statement](AD__how_Process_Resultset.md).

```
// Business logic controller (graph) declaration
public class OrderDataEntry : PXGraph<OrderDataEntry, SalesOrder>
{
    ...
    public void SomeMethod()
    {
        // Dynamic instantiation of a data view
        PXSelectBase<SalesOrder> orders =
            new SelectFrom<SalesOrder>.
                OrderBy<Asc<SalesOrder.orderNbr>>.View(this);

        // An execution of a dynamically created BQL statement
        foreach(SalesOrder so in orders.Select())
            ...
    }
}
```

## To Execute a BQL Statement with Parameters { .section}

Use parameters \(such as AsOptional, FromCurrent, and @P.As\[Type\] in fluent BQL and Optional, Current, and Required in traditional BQL\) to pass specific values to a BQL statement, as shown in the following example. For more details on how to construct a BQL statement with parameters, see [To Use Parameters in Fluent BQL Queries](AD__how_Use_Parameters_in_FBQL.md) and [To Use Parameters in Traditional BQL](AD__how_BQL_Parameters.md).

```
// Declaration of a BLC
public class ReceiptDataEntry : PXGraph<ReceiptDataEntry, Document>
{
    // When a screen associated with this BLC is first opened,
    // the Optional parameter is replaced with the default DocType value.
    public SelectFrom<Document>.
        Where<Document.docType.IsEqual<Document.docType.AsOptional>> Receipts;

    // The FromCurrent parameters are replaced with the values from
    // the Current property of the PXCache<Document> object.
    public SelectFrom<DocTransaction>.
        Where<DocTransaction.docNbr.IsEqual<Document.docNbr.FromCurrent>.
            And<DocTransaction.docType.IsEqual<Document.docType.FromCurrent>>>.
        OrderBy<Asc<DocTransaction.lineNbr>> ReceiptTransactions;

    public void SomeMethod()
    {
        // Select documents of the same DocType as the current document
        // has, or of the default DocType if the current document is null.
        PXResult<Document> res1 = Receipts.Select();
        foreach(Document doc in res1)
            ...

        // Select documents of the "N" DocType.
        PXResult<Document> res2 = Receipts.Select("N");
        foreach(Document doc in res2)
            ...

        // Use parameter values from the current document.
        PXResult<DocTransaction> res3 = ReceiptTransactions.Select();
        foreach(DocTransaction docTran in res3)
            ...

        // Use the @P.AsString parameter to provide values in code.
        // The result set here is the same as the res2 result set.
        PXResult<Document> res4 =
            SelectFrom<Document>.
                Where<Document.docType.IsEqual<@P.AsString>>.View
            .Select(this, "N");
        foreach(Document doc in res4)
            ...
    }
    ...
}
```

## To Execute a BQL Statement in a Data View Delegate {#_36988f03-38e3-4f9a-89f6-1623935e81fa .section}

If the data requested from the database cannot be described by a declarative BQL statement, implement the data view delegate that is used instead of the standard Select\(\) logic to retrieve data from the database; this data view delegate must satisfy the following requirements:

-   The data view delegate must have the same name as the data view except for the first letter, which must be lowercase.
-   The data view delegate must return IEnumerable, as shown in the following example.

    **Note:** If the data view delegate is not defined or it returns `null`, the standard Select\(\) logic is executed.


The following sample code defines a data view delegate.

```
// A view declaration in a graph
public SelectFrom<BalancedAPDocument>.
    LeftJoin<APInvoice>.
        On<APInvoice.docType.IsEqual<BalancedAPDocument.docType>.
            And<APInvoice.refNbr.IsEqual<BalancedAPDocument.refNbr>>>.
    LeftJoin<APPayment>.
        On<APPayment.docType.IsEqual<BalancedAPDocument.docType>.
            And<APPayment.refNbr.IsEqual<BalancedAPDocument.refNbr>>>.View
    DocumentList;

// The data view delegate
protected virtual IEnumerable documentlist()
{
    // Iterating over the result set of a complex BQL statement
    foreach (PXResult<BalancedAPDocument, APInvoice, APPayment, APAdjust> res in
        SelectFrom<BalancedAPDocument>.
            LeftJoin<APInvoice>.
                On<APInvoice.docType.IsEqual<BalancedAPDocument.docType>.
                    And<APInvoice.refNbr.IsEqual<BalancedAPDocument.refNbr>>>.
            LeftJoin<APPayment>.
                On<APPayment.docType.IsEqual<BalancedAPDocument.docType>.
                    And<APPayment.refNbr.IsEqual<BalancedAPDocument.refNbr>>>.
            LeftJoin<APAdjust>.
                On<APAdjust.adjgDocType.IsEqual<BalancedAPDocument.docType>>.
            AggregateTo<GroupBy<BalancedAPDocument.docType>,
                GroupBy<BalancedAPDocument.refNbr>,
                GroupBy<BalancedAPDocument.released>,
                GroupBy<BalancedAPDocument.prebooked>,
                GroupBy<BalancedAPDocument.openDoc>>.View.Select(this))
    {
        // Casting a result set record to DAC types
        BalancedAPDocument apdoc = (BalancedAPDocument)res;
        APAdjust adj = (APAdjust)res;
        // Checking some conditions and modifying records
        ...
    }

    return new PXResult<BalancedAPDocument, APInvoice, APPayment>(
            apdoc, res, res);
}
```

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

