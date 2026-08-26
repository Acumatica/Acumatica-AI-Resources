# Code Reuse Through Attributes {#_4724097c-0097-40d2-bb80-98b62cf3a7dc .concept}

The following code implements the logic of updating a receipt total when a document transaction is updated in the system.

```
public virtual void DocTransation_RowUpdated(PXCache cache,
                                             PXRowUpdatedEventArgs e)
{
    DocTransaction old = e.OldRow as DocTransaction;
    DocTransaction trn = e.Row as DocTransaction;
    if ((trn != null) && (trn.TranQty != old.TranQty ||
                                   trn.UnitPrice != old.UnitPrice))
    {
        Document doc = Receipts.Current;
        if (doc != null)
        {
            doc.TotalAmt -= old.TranQty * old.UnitPrice;
            doc.TotalAmt += trn.TranQty * trn.UnitPrice;
            Receipts.Update(doc);
        }
    }
}
```

This logic can be used in multiple forms of the application, and therefore can be moved into an Attribute class. The attribute is used to annotate a data field in the data access class. Then it can be reused anywhere in the code, as in the example below.

```
public class DocTransaction : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    ...
    #region TotalAmt
    public abstract class totalAmt : PX.Data.IBqlField
    {
    }
    [PXDBDecimal(2)]
    [PXDefault(TypeCode.Decimal, "0.00")]
    [PXUIField(DisplayName = "Line Total", Enabled = false)]
    **\[DeltaMultiply\(typeof\(DocTransaction.tranQty\), typeof\(DocTransaction.unitPrice\),
                   typeof\(Document.totalAmt\)\]**
    public virtual decimal? ExtPrice { get; set; }
    #endregion
    ...
}
```

In this example, the logic of updating the receipt total on an update of the transaction is implemented inside the `DeltaMultiply` attribute. This logic is triggered after each update, delete, or insert operation on the `DocTransaction` data access class instance and updates totals on the receipt level in the appropriate `Document` data access class instance.

Acumatica Framework provides a wide range of predefined attributes that can be used for defining data types, database mapping, referential integrity, data format validation, and default values for the field. The following code shows an example of how you can implement the logic from the above example by using the predefined PXFormula attribute, which is used for implementing calculations of data fields.

```
public class DocTransaction : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    ...
    #region TotalAmt
    public abstract class totalAmt : PX.Data.IBqlField
    {
    }
    [PXDBDecimal(2)]
    [PXDefault(TypeCode.Decimal, "0.00")]
    [PXUIField(DisplayName = "Line Total", Enabled = false)]
    **\[PXFormula\(typeof\(DocTransaction.tranQty.Multiply&lt;DocTransaction.unitPrice&gt;\),
               typeof\(SumCalc&lt;Document.totalAmt&gt;\)\)\]**
    public virtual decimal? ExtPrice { get; set; }
    #endregion
    ...
}
```

Because the data access classes are shared within an application, formatting, custom logic, and any constraints implemented in attributes are reused in each business logic controller that utilizes each data access class. By reusing code through attributes, you can move shared application functionality into attributes and avoid code duplication, while still enforcing application integrity.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

