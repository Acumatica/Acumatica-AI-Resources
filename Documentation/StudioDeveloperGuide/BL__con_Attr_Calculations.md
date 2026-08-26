# Calculation of Field Values {#_fd20c038-ce71-4429-a84d-f34064263906 .concept}

You can use the predefined attributes PXFormula and PXUnboundFormula in data access classes \(DACs\) to calculate field values from other values of the same record. You can also calculate aggregate values for all detail records and assign an aggregate value to a field of the master record.

The attributes implement the RowInserted, RowUpdated, and RowDeleted event handlers to calculate aggregates. Also, the attributes use the FieldUpdated event handler for dependent fields. The PXFormula attribute defines the RowSelecting event handler to calculate values for unbound DAC fields. You do not have to define any event handlers; you only need to mark a field in the DAC with an attribute.

## Calculating the Value of a Field from Other Fields of the Same Record { .section}

To calculate the value of a field from other fields of the same record, you add the PXFormula attribute with one parameter to this field, as shown below.

```
[PXFormula(
  typeof(DocTransaction.tranQty.Multiply<DocTransaction.unitPrice>))]
public virtual Decimal? ExtPrice { get; set; }
public abstract class extPrice : PX.Data.BQL.BqlDecimal.Field<extPrice> { }
```

This code sets ExtPrice to the product of TranQty and UnitPrice.

## Calculating the Aggregate Value for a Field in the Parent Record from Multiple Fields of Child Records { .section}

To calculate the value of a field from other fields of the same record and calculate the aggregate value from these values, you add the PXFormula attribute with two parameters to this field. You should also add the PXParent attribute to identify the master record. \(See the following code.\)

```
[PXFormula(
  typeof(DocTransaction.tranQty.Multiply<DocTransaction.unitPrice>),
  typeof(SumCalc<Document.totalCost>))]
public virtual Decimal? ExtPrice { get; set; }
public abstract class extPrice : PX.Data.BQL.BqlDecimal.Field<extPrice> { }

[PXParent(typeof(SelectFrom<Document>.
  Where<Document.docType.IsEqual<DocTransaction.docType.FromCurrent>.
  And<Document.docNbr.IsEqual<DocTransaction.docNbr.FromCurrent>>>))]
public virtual string DocType { get; set; }
public abstract class docType : PX.Data.BQL.BqlString.Field<docType> { }
```

This code sets ExtPrice to the product of TranQty and UnitPrice, sums the ExtPrice values of all detail records, and assigns the result to the TotalCost field of the parent document.

## Calculating the Aggregate Value for a Field in the Parent Record from One Field of Child Records { .section}

To calculate an aggregate value by using the value of the field, you add the PXFormula attribute to this field with the first parameter set to `null`, as shown below. The PXParent attribute is required.

```
[PXFormula(
    null,
    typeof(SumCalc<Document.totalCost>))]
public virtual Decimal? ExtPrice { get; set; }
public abstract class extPrice : PX.Data.BQL.BqlDecimal.Field<extPrice> { }
```

This code sets the TotalCost field of the parent document to the sum of the ExtPrice values.

## Calculating the Aggregate Value for a Field in the Parent Record Without Setting Field Values of Child Records { .section}

To calculate an expression for each detail record and aggregate the resulting values in a field of the master record, you add the PXUnboundFormula attribute to any field of the detail record, as shown in the following code. The field marked with the attribute is not set by the attribute. The PXParent attribute is required.

```
[PXUnboundFormula(
    typeof(DocTransaction.tranQty.Multiply<DocTransaction.unitPrice>),
    typeof(SumCalc<Document.totalCost>))]
public virtual decimal? ExtPrice
...
```

This code sets the TotalCost field of the parent document to the sum of the products of the TranQty and UnitPrice values. The attribute does not set the ExtPrice field.

## Using Functions and Aggregate Functions { .section}

In the first parameter of the PXFormula and PXUnboundFormula attributes, you can specify an expression built of data fields, BQL constants, and the following BQL functions:

-   Op1.Add&lt;Op2&gt; \(fluent BQL\) or Add&lt;Op1, Op2&gt; \(traditional BQL\), which returns the sum of two values
-   Op1.Subtract&lt;Op2&gt; \(fluent BQL\) or Sub&lt;Op1, Op2&gt; \(traditional BQL\), which subtracts the second value from the first
-   Op1.Multiply&lt;Op2&gt; \(fluent BQL\) or Mult&lt;Op1, Op2&gt; \(traditional BQL\), which multiplies two values
-   Op1.Divide&lt;Op2&gt; \(fluent BQL\) or Div&lt;Op1, Op2&gt; \(traditional BQL\), which divides the first value by the second
-   Minus&lt;&gt;, which multiplies a value by –1
-   Op1.When&lt;Cond1&gt;.Else&lt;Op2&gt;.When&lt;Cond2&gt;.\[...\] \(fluent BQL\) or Switch&lt;Cases&gt; \(traditional BQL\), which returns a value selected by a condition

In the second parameter of the PXFormula attribute, you can use one of the following aggregation functions:

-   SumCalc&lt;&gt;, which calculates the total sum
-   CountCalc&lt;&gt;, which counts the detail records
-   MinCalc&lt;&gt;, which calculates the minimum values
-   MaxCalc&lt;&gt;, which calculates the maximum value

The PXUnboundFormula attribute supports only SumCalc&lt;&gt; and MaxCalc&lt;&gt;.

## Using a Field Value from the Parent Record { .section}

In the query of the PXFormula attribute, you can use the FromParent operator to obtain the value of a field from the parent record, as shown in the following code.

```
[PXFormula(typeof(SOShipment.shipmentType.FromParent.
  IsEqual<SOShipmentType.transfer>))]
```

## Using a Field Value from the Record Referenced by the PXSelector Attribute { .section}

In the query of the PXFormula attribute, you can use the FromSelectorOf operator to obtain the value of a field from the record that is referenced by the PXSelector attribute, as shown in the following code.

```
[PXFormula(typeof(SOShipment.shipmentType.FromSelectorOf<shipmentNbr>.
  IsEqual<SOShipmentType.transfer>))]
```

## Using a Field Value from the Setup Record { .section}

In the query of the PXFormula attribute, you can use the FromSetup operator to obtain the value of the field from the setup record, as shown below.

```
[PXFormula(typeof(SOSetup.autoReleaseIN.FromSetup.IsEqual<True>))]
```

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

