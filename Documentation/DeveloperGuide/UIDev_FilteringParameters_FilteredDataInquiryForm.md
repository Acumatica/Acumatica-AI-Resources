# Filtering Parameters: Filtered Data on an Inquiry Form {#_44b50d24-7ad0-4f6c-8c41-a93894622c0c .concept}

To display the filtered data in the table on an inquiry form, you need to define the data view that selects data narrowed by the selection criteria, which is defined with filtering parameters.

To select data, you should specify filtering conditions in the Where clause of the data view type. To pass the current filter values to the query, you specify the filter DAC fields within the Current parameter. You have to define the data view that retrieves filtered records for the UI after the definition of PXFilter data view because the data view that retrieves filtered records uses the Current values of the PXFilter data view.

In the following code example, the `Filter` data view provides the `CountryCD` and `MinOrderQty` filtering parameters. The `SupplierProducts` data view selects the records that meet the criteria specified by the filtering parameters.

```
public class SupplierInq : PXGraph<SupplierInq>
{
    public PXCancel<SupplierFilter> Cancel;
    public PXFilter<SupplierFilter> Filter;

    [PXFilterable]**
    public SelectFrom&lt;SupplierProduct&gt;
     .InnerJoin&lt;Supplier&gt;
       .On&lt;Supplier.supplierID.IsEqual&lt;SupplierProduct.supplierID&gt;&gt;
     .Where&lt;
       Brackets&lt;
        SupplierFilter.countryCD.FromCurrent.IsNull
        Or&lt;Supplier.countryCD.IsEqual&lt;SupplierFilter.countryCD.FromCurrent&gt;&gt;&gt;
       .And&lt;
        Brackets&lt;SupplierFilter.minOrderQty.FromCurrent.IsNull
        .Or&lt;SupplierProduct.minOrderQty.IsGreaterEqual
           &lt;SupplierFilter.minOrderQty.FromCurrent&gt;&gt;&gt;&gt;&gt;
     .OrderBy&lt;
       SupplierProduct.productID.Asc,
       SupplierProduct.supplierPrice.Asc,
       SupplierProduct.lastPurchaseDate.Desc&gt;
      .View.ReadOnly
    SupplierProducts;**
}
```

**Tip:** You can use a read-only type of the data view that retrieves filtered data records. For a read-only data view, the framework automatically disables the editing of rows in the grid.

**Parent topic:**[Adding Filtering Parameters to a Form](../DeveloperGuide/UIDev_FilteringParameters_Mapref.md)

