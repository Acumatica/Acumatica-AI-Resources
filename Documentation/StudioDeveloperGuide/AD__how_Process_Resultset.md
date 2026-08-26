# To Process the Result of the Execution of the BQL Statement {#_8609c829-7b9c-4660-acf9-891b0971b6a3 .task}

Select\(\) returns the PXResultset&lt;T0&gt; object. The type parameter \(T0\) is set to the first table selected by the business query language \(BQL\) statement, and PXResultset&lt;T0&gt; is a collection of PXResult&lt;T0&gt; objects. You can iterate through the result set in a foreach loop and obtain either data access class \(DAC\) instances or PXResult&lt;&gt; instances. A PXResult&lt;&gt; instance represents a whole result set record and can be cast to any of the DAC types joined in the BQL statement.

## To Get the Objects of the Primary DAC {#_3fa4383b-2b91-4af6-b8a4-6bf4e24fa853 .section}

In the `foreach` loop, cast each PXResult&lt;T0&gt; object in the collection to an object of the main DAC. The PXResult&lt;T0&gt; object is implicitly converted to the T0 class. In the following sample code, records are selected from the `Document` table.

```
// Result set records are implicitly cast to the Document DAC.
foreach(Document doc in SelectFrom<Document>.View.Select(this))
{
    ...
}
```

## To Get the Objects of Joined DACs { .section}

1.  In the `foreach` loop, cast each PXResult&lt;T0&gt; object in the collection to the needed PXResult&lt;T0, T1, T2, ...&gt; object, where T0, T1, T2, and other type parameters are joined DACs from the BQL statement. The PXResult&lt;T0, T1, T2, ...&gt; type must be specialized with the DACs of all joined tables.
2.  Cast each PXResult&lt;T0, T1, T2, ...&gt; item to any of the listed types to get the object of this type.

The following sample code shows how to process the result set of a BQL statement joining two tables.

```
// The static Select() method is called to execute a BQL command.
PXResultset<OrderLine> result =
    SelectFrom<OrderLine>.InnerJoin<SalesOrder>.
        On<SalesOrder.orderNbr.IsEqual<OrderLine.orderNbr>>.View.Select(this);

// Iterating over the result set:
// PXResult should be specialized with the DACs of all joined tables
// to be able to cast to these DACs.
foreach(PXResult<OrderLine, SalesOrder> record in result)
{
    // Casting a result set record to the OrderLine DAC:
    OrderLine detail = (OrderLine)record;
    // Casting a result set record to the SalesOrder DAC:
    SalesOrder order = (SalesOrder)record;
    ...
}
```

**Note:** Starting C\# 7.0, you can also deconstruct the result set as shown in the following code example.

```
(var line, var poLine, var _, var lotSerClass) = 
    (PXResult<POReceiptLine, POLine, InventoryItem, INLotSerClass>)
    SelectFrom<POReceiptLine>
    .LeftJoin<POLine>.On<POReceiptLine.FK.OrderLine>
    .LeftJoin<InventoryItem>.On<POReceiptLine.FK.InventoryItem>
    .LeftJoin<INLotSerClass>.On<InventoryItem.FK.LotSerClass>
    .Where<POReceiptLine.receiptType.IsEqual<@P.AsString>
        .And<POReceiptLine.receiptNbr.IsEqual<@P.AsString>>
        .And<POReceiptLine.lineNbr.IsEqual<@P.AsInt>>>
    .View.Select(Base, split.ReceiptType, split.ReceiptNbr, split.LineNbr);
```

This code example is equivalent to the following code.

```
var row = (PXResult<POReceiptLine, POLine, InventoryItem, INLotSerClass>)
    SelectFrom<POReceiptLine>
    .LeftJoin<POLine>.On<POReceiptLine.FK.OrderLine>
    .LeftJoin<InventoryItem>.On<POReceiptLine.FK.InventoryItem>
    .LeftJoin<INLotSerClass>.On<InventoryItem.FK.LotSerClass>
    .Where<POReceiptLine.receiptType.IsEqual<@P.AsString>
        .And<POReceiptLine.receiptNbr.IsEqual<@P.AsString>>
        .And<POReceiptLine.lineNbr.IsEqual<@P.AsInt>>>
    .View.Select(Base, split.ReceiptType, split.ReceiptNbr, split.LineNbr);
POReceiptLine line = row;
POLine poLine = row;
INLotSerClass lotSerClass = row;
```

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

