# Ad Hoc SQL for Fields {#_95f32fae-7e43-4998-8c17-4236039a9da9 .concept}

The attributes described in this topic define the database-side calculation of data access class \(DAC\) fields that are bound not to particular database columns, but to multiple database columns. The attributes add the provided expression and the subrequest into the SQL query that selects data records of the given DAC.

## PXDBScalar { .section}

The [PXDBScalar](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3fedd793-f07c-3a34-48f9-5ec226d8caf1) attribute defines a subquery that selects the value assigned to the field on which the attribute is specified. In the code example below, PXDBScalar selects the value from the `ProductQty.AvailQty` data field and inserts it into the `ProductReorder.AvailQty` field.

```
// The ProductReorder class
[PXDecimal(2)]
[PXDBScalar(typeof(Search<ProductQty.availQty,
    Where<ProductQty.productID.IsEqual<ProductReorder.productID>>>))]
[PXUIField(DisplayName = "Available Qty", Enabled = false)]
public virtual decimal? AvailQty { get; set; }
```

**Note:** The BQL expressions specified in the PXDBScalar attribute above adds the following subqueries \(shown in bold type\) to the SQL query that selects `ProductReorder` records.

```
SELECT ...,
   ** \(SELECT TOP \(1\) \( productqty.availqty \) 
        FROM   productqty ProductQty 
        WHERE  \( productqty.productid = ProductReorder.productid \) 
        ORDER  BY productqty.availqty\),**
     ...
FROM ...
```

## PXDBCalced { .section}

The [PXDBCalced](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=484f012a-de33-1a6b-b520-4822d33ed3d8) attribute defines an expression that is translated into SQL. This expression calculates the field value from other fields of the same data record. An example of the PXDBCalced attribute is shown in the following code.

```
[PXDecimal(2)]
[PXUIField(DisplayName = "Discrepancy")]
[PXDBCalced(
    typeof(Minus<
               Sub<IsNull<ProductReorder.availQty, decimal_0>,
               ProductReorder.minAvailQty>>)
    typeof(Decimal))]
public virtual decimal? Discrepancy { get; set; }
```

**Note:** The BQL expression specified in PXDBCalced in the previous code adds the following calculation expression to the SQL query that selects `ProductReorder` records.

```
SELECT ...,
     **\(\( -\( Isnull\(\(SELECT TOP \(1\) \( productqty.availqty \) 
                 FROM   productqty ProductQty 
                 WHERE  \( productqty.productid = ProductReorder.productid \) 
                 ORDER  BY productqty.availqty\), .0\) 
             - ProductReorder.minavailqty \) \)\)**,
    ...   
FROM ...
```

Unlike PXDBCalced, the PXFormula attribute can be added to either an unbound or bound data field. Also, the PXFormula attribute provides calculation of master DAC fields from child DAC fields. For more information on PXFormula, see [Calculation of Field Values](BL__con_Attr_Calculations.md).

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

