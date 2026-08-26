# Use of PXProjection: Additional Configuration of the PXProjection Attribute {#_e8f097ea-69a0-496d-84d1-807f21b072b4 .concept}

The following sections describe various ways in which you can further configure and use the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute.

## Reducing the Field Count by Using a Projection { .section}

In many cases, such as when generating reports, you need only a subset of the corresponding DAC fields to be returned from the database. You can configure a projection to exclude the unnecessary fields and optimize your query. The following code shows an example of a projection that returns only the two fields that are defined by the `AdjgDocType` and `AdjgRefNbr` properties.

```
[PXHidden, PXProjection(typeof(SelectFrom<APAdjust>))]
public class APAdjust3 : PXBqlTable, IBqlTable
{
    [PXDBString(3, IsKey = true, IsFixed = true, InputMask = "",
     BqlField = typeof(APAdjust.adjgDocType))]
    [PXUIField(DisplayName = "AdjgDocType", Visibility = PXUIVisibility.Visible, 
     Visible = false)]
    public virtual String AdjgDocType { get; set; }
    public abstract class adjgDocType : PX.Data.BQL.BqlString.Field<adjgDocType> { }
 
    [PXDBString(15, IsUnicode = true, IsKey = true,
     BqlField = typeof(APAdjust.adjgRefNbr))]
    [PXUIField(DisplayName = "AdjgRefNbr", Visibility = PXUIVisibility.Visible,
     Visible = false)]
    public virtual String AdjgRefNbr { get; set; }
    public abstract class adjgRefNbr : PX.Data.BQL.BqlString.Field<adjgRefNbr> { }
}
```

## Filtering Rows with a Projection { .section}

You can configure a projection to return filtered data from a DAC. The following projection returns filtered data from the Vendor DAC based on the criteria in the Where clause of the BQL query passed to the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute.

```
[PXProjection(typeof(SelectFrom<Vendor>.Where<Vendor.payToVendorID
  .IsEqual<Vendor.bAccountID.FromCurrent.Value>>))]
public class SuppliedByVendor : Vendor { }
```

## Persisting Data with a Projection { .section}

By default, a projection is read-only—that is, it doesn’t save any data to the database. To make a projection mutable, set the Persistent property of the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute to *true*. As a result, the table of the first DAC specified in the Select command of the projection's query will be mutable.

**Attention:** The Acumatica Framework doesn't support setting the Persistent property to `true` if your projection's query includes a Union or UnionAll operation. This ensures that data changes aren't inadvertently persisted to the underlying tables if the projection extends one or more DACs used in the Union or UnionAll operation.

If you also want to save changes made to the joined tables in the projection's query, you must mark the fields on which the tables are joined with the [PXExtraKeyAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=13b0ddc2-f0bf-72b8-2943-29996dcc52fd) attribute. The following code shows an example.

```
[PXProjection(typeof(
    SelectFrom<ContractWatcher>.
    RightJoin<Contact>.On<
        Contact.contactID.IsEqual<ContractWatcher.contactID>>),
    Persistent = true)] // Mark the ContractWatcher table mutable by default.
public class SelContractWatcher : ContractWatcher
{
  ...
    [PXDBInt(BqlField = typeof(Contact.contactID))]
    [PXUIField(Visibility = PXUIVisibility.Invisible)]
    // Without the [PXExtraKey] attribute, only ContractWatcher table will be mutable.
    [PXExtraKey] // Mark the Contact table as mutable too.
    public virtual Int32? ContactContactID { get; set; }
    public abstract class contactContactID : PX.Data.BQL.BqlInt.Field<contactContactID> { }
  ...
}
```

In the code above, the Persistent property of the PXProjection attribute has been set to *true*, causing the `ContractWatcher` table to be mutable. The `contactContactID` field of the joined `Contact` table has been marked with the PXExtraKeyAttribute attribute to mark this table as mutable. The following code shows how these tables could then be updated.

```
...
foreach (SelContractWatcher watcher in listWatchers.Cast<SelContractWatcher>()
  .Select(item => (SelContractWatcher)Watchers.Cache.CreateCopy(item)))
{
    watcher.ContractID = newContract.ContractID;
    graph.Watchers.Update(watcher); // The ContractWatcher and Contact tables will be updated.
} 
...
```

Alternatively, you can use the constructor with parameters to explicitly provide the list of mutable tables. The listed tables must be referenced in the Select command of the projection's query. The constructor implicitly sets the Persistent property of the PXProjection attribute to *true*. The following code shows an example.

```
[PXProjection(typeof(
    SelectFrom<SOLineSplit>.
    InnerJoin<SOOrderType>.On<
        SOOrderType.orderType.IsEqual<SOLineSplit.orderType>>.
    InnerJoin<SOOrderTypeOperation>.On<
        SOOrderTypeOperation.orderType.IsEqual<SOLineSplit.orderType>.
        And<SOOrderTypeOperation.operation.IsEqual<SOLineSplit.operation>>>),
    new Type[] { typeof(SOLineSplit), typeof(SOOrderType) })] // List of the mutable tables.
public class SOLineSplit2 : PXBqlTable, IBqlTable
{
    [PXDBString(2, IsFixed = true, BqlField = typeof(SOLineSplit.sOOrderType))]
    [PXExtraKey] // Mark the joined SOOrderType table as mutable.
    public virtual String SOOrderType{ get; set; } 
    public abstract class sOOrderType : PX.Data.BQL.BqlString.Field<sOOrderType> { }
    ...
}
```

In the code above, the `SOLineSplit` and `SOOrderType` tables have been listed as mutable by using the new Type\[\]\{\} constructor. You can then update these tables as shown in the following code.

```
...
var split = shipmentEntry.Caches<SOLineSplit2>().Rows.Current;
if (split != null)
{
    split.ShippedQty = 0;
    // Only the SOLineSplit and SOOrderType tables will be updated.
    shipmentEntry.Caches<SOLineSplit2>().Update(split); 
}
...
```

## Using a Projection in Another Projection { .section}

You can declare a projection and reference it in the projection query of another projection. The following code shows an example.

```
// Define the FABookHistoryMax projection.
[PXProjection(typeof(
    SelectFrom<FABookHistory>.
    AggregateTo<
        GroupBy<FABookHistory.assetID>,
        GroupBy<FABookHistory.bookID>,
        Max<FABookHistory.finPeriodID>>))]
public class FABookHistoryMax : PXBqlTable, IBqlTable
{
    [PXDBInt(IsKey = true, BqlField = typeof(FABookHistory.assetID))]
    [PXDefault]
    public virtual Int32? AssetID { get; set; }
    public abstract class assetID : PX.Data.BQL.BqlInt.Field<assetID> { }
 
    [PXDBInt(IsKey = true, BqlField = typeof(FABookHistory.bookID))]
    [PXDefault]
    public virtual Int32? BookID { get; set; }
    public abstract class bookID : PX.Data.BQL.BqlInt.Field<bookID> { }
 
    [GL.FinPeriodID(BqlField = typeof(FABookHistory.finPeriodID))]
    [PXDefault]
    public virtual String FinPeriodID { get; set; }
    public abstract class finPeriodID : PX.Data.BQL.BqlString.Field<finPeriodID> { }
}

/* Use the FABookHistoryMax projection in the PXProjectionAttribute 
   of the FABookHistoryRecon projection. */
[PXProjection(typeof(
    SelectFrom<FABookHistoryMax>.
    InnerJoin<FABookHistory>.On<
        FABookHistoryMax.assetID.IsEqual<FABookHistory.assetID>.
        And<FABookHistoryMax.bookID.IsEqual<FABookHistory.bookID>>.
        And<FABookHistoryMax.finPeriodID.IsEqual<FABookHistory.finPeriodID>>>.
    InnerJoin<FABook>.On<
        FABook.bookID.IsEqual<FABookHistory.bookID>>))]
public class FABookHistoryRecon : PXBqlTable, IBqlTable
{
    [PXDBInt(IsKey = true, BqlField = typeof(FABookHistory.assetID))]
    [PXDefault]
    public virtual Int32? AssetID { get; set; }
    public abstract class assetID : PX.Data.BQL.BqlInt.Field<assetID> { }
 
    [PXDBBool(BqlField = typeof(FABook.updateGL))]
    public virtual Boolean? UpdateGL { get; set; }
    public abstract class updateGL : PX.Data.BQL.BqlBool.Field<updateGL> { }
    ...
}
```

## Using Parameterized Elements in a Projection Query { .section}

You can write a projection query with parameterized elements, such as the current value of a DAC fields. However, if your projection query uses the values of the DAC fields from the current DAC record for these elements, you must access those values by using the [CurrentValue](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8948f322-2da1-6d6c-509a-984c4389bb49) BQL operator instead of the Current or Current2 BQL operator. If your query is written by using fluent BQL, you should use the `field.FromCurrent.Value` operator instead of the field.FromCurrent operator.

The following code shows an example of the field.FromCurrent.Value fluent BQL operator being used in a projection query.

```
[PXProjection(typeof(SelectFrom<Vendor>.Where<Vendor.payToVendorID
  .IsEqual<Vendor.bAccountID.FromCurrent.Value>>))]
public class SuppliedByVendor : Vendor { }
```

## Using the CurrentMatch BQL Operator in a Projection Query { .section}

To enable row-level security, use the [CurrentMatch](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=88262b82-2bb2-08cc-13db-373b1825f688) BQL operator instead of the Match BQL operator in your projection queries. This operator matches only the data records that the specified user has access to. The following code shows an example.

```
[PXProjection(typeof(
		SelectFrom<SOLine>
			.InnerJoin<SOOrder>
				.On<SOLine.FK.Order>
			.InnerJoin<SOOrderType>
				.On<SOOrder.FK.OrderType
				.And<SOOrderType.behavior
                            .IsIn<SOBehavior.bL, SOBehavior.sO, SOBehavior.tR, SOBehavior.rM>>>
			.InnerJoin<SOOrderTypeOperation>
				.On<SOOrderTypeOperation.FK.OrderType
				.And<SOOrderTypeOperation.operation.IsEqual<SOOperation.issue>>
				.And<SOOrderTypeOperation.active.IsEqual<True>>>
			.LeftJoin<Customer>
				.On<SOOrder.FK.Customer>
			.InnerJoin<InventoryItem>
				.On<SOLine.FK.InventoryItem
				.And<InventoryItem.stkItem.IsEqual<True>>
				.And<CurrentMatch<InventoryItem, AccessInfo.userName>>>
			.InnerJoin<SOLineSiteAllocation>
				.On<SOLineSiteAllocation.FK.OrderLine
				.And<SOLineSiteAllocation.siteID
                            .IsEqual<SalesAllocationsFilter.siteID.FromCurrent.Value>>>
		.Where<SOLine.isSpecialOrder.IsNotEqual<True>
			.And<SOOrderType.behavior
                     .IsEqual<SOBehavior.tR>.Or<Customer.bAccountID.IsNotNull
                     .And<CurrentMatch<Customer, AccessInfo.userName>>>>
			.And<SOLine.pOCreate.IsNotEqual<True>.Or<SOLine.pOSource
                     .IsEqual<INReplenishmentSource.purchaseToOrder>>>
			.And<SOLine.completed.IsNotEqual<True>>>
		), Persistent = false)]
public class SalesAllocation : PXBqlTable, IBqlTable
{
  ...
}
```

**Parent topic:**[Displaying Data from Multiple DACs by Using PXProjection](../StudioDeveloperGuide/CodeCustomization_MultiDacDisplayPXProjection_Mapref.md)

