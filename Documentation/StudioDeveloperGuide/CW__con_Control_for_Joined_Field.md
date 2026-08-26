# Controls for Joined Data Fields {#_8b21aeee-2d64-445a-83a5-c8e4a0a0a901 .concept}

You can add an input control or grid column that displays a joined data field retrieved by a data view. If a data field is joined, the framework automatically makes the control that is associated with that data field unavailable in the UI, because joined data cannot be edited through the data view in which it is joined.

The following code example shows the `SupplierProducts` data view with a left join to `Product`.

```
public SelectFrom<SupplierProduct>.
    LeftJoin<Product>.On<Product.productID.IsEqual<SupplierProduct.productID>>.
    Where<SupplierProduct.supplierID.IsEqual<Supplier.supplierID.FromCurrent>>.View
    SupplierProducts;
```

You can add grid columns or input controls that display product information, such as the unit price. To specify a field of a joined data access class \(DAC\), you use two underscore symbols between the joined DAC name and the field name, as shown in the bolded text of the following code.

```
<px:PXGridColumn DataField="ProductID" Width="140px">...</px:PXGridColumn>
<px:PXGridColumn DataField="**Product\_\_UnitPrice**"
                 TextAlign="Right"
                 Width="100px">
```

In this case, the columns that display `Product` fields will be disabled on the grid, because `Product` instances cannot be edited through the `SupplierProducts` data view. Only `SupplierProduct` records can be edited through this data view, because `SupplierProduct` is the main DAC of the data view.

**Parent topic:**[Configuring Tables](../StudioDeveloperGuide/CW__mng_Configuring_Tables.md)

