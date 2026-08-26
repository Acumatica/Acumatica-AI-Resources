# Data View Delegates: General Information {#_acecfa2b-90d5-475c-8cf2-b2c5f8e60672 .concept}

A *data view* is a PXSelect BQL expression declared in a graph for accessing and manipulating data. By default, when a data view object is requested by the UI or you invoke the Select\(\) method on the object, the system executes the query specified in the data view declaration. However, you can define a dynamic query, which is an optional graph method \(called the *data view delegate*\) executed when the data view is requested. If no dynamic query is defined in the graph, the Acumatica Framework executes the BQL statement from the data view declaration.

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Define a data view delegate
-   Define a dynamic query in a data view delegate

## Applicable Scenarios { .section}

You use data view delegates in the following cases:

-   You’re constructing the query dynamically at run time by adding Where&lt;&gt; and Join&lt;&gt; clauses that depend on some condition, typically a filter.
-   The query retrieves data fields that can’t be calculated declaratively by attributes—for instance, if you are retrieving values that are aggregated by calculated data fields.
-   The result set has data records that are not retrieved from the database and are composed dynamically in code.

**Attention:** If a data view delegate has been created for a data view in a graph, you can’t then retrieve the list of records for a REST API entity that uses this data view in its endpoint mapping. However, the list of records can still be retrieved via the REST API for entities that use other data views \(which do not have a data view delegate defined for them\) in the same graph.

## Definition of a Data View Delegate { .section}

To define the delegate for a data view, you should declare the data view and add a method that has the same name as the data view, except with a different case for the first letter. \(For example, if the data view name is *MyDataView*, the name of the delegate must be *myDataView*.\)

The delegate returns an `IEnumerable` object, as shown in the code below.

```language-csharp
// The SupplierProducts data view
[PXFilterable]
public 
    SelectFrom<SupplierProduct>.
    InnerJoin<Supplier>.On<
        Supplier.supplierID.IsEqual<SupplierProduct.supplierID>>.
    OrderBy<SupplierProduct.productID.Asc, SupplierProduct.supplierPrice.Asc, 
            SupplierProduct.lastPurchaseDate.Desc>.
    View.ReadOnly SupplierProducts;

// The delegate for the SupplierProducts data view
protected virtual IEnumerable supplierProducts()
{
    // Implement the dynamic query
}
```

The framework automatically adds the delegate by its name and invokes the method when the data view object is requested.

**Attention:** When you declare or alter a data view delegate within a graph extension, the new delegate is attached to the corresponding data view. To query a data view declared within the base graph or lower-level extension from the data view delegate, you should again declare the data view within the graph extension. You don’t need to again declare a generic PXSelect&lt;Table&gt; data member in the graph extension when it won’t be used from the data view delegate. For details, see [Data View Delegates: Customization of a Data View](CodeCustomization_DataViewDelegates_Customization.md).

## Implementation of a Data View Delegate {#_35234d0e-4625-4823-8947-287fe154c4d8 .section}

When you’re implementing a data view delegate, we recommend that you store the results of its dynamic query in an object of the [PXDelegateResult](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8f0e59ff-9873-1387-b3aa-8492702e75af) class and specify whether the query results are already filtered, truncated \(to fit the page\), and sorted. Repeated operations are not applied to the PXDelegateResult objects. So if you do not set IsResultFiltered, IsResultTruncated, or IsResultSorted to *true*, the platform will, respectively, filter, truncate, or sort the retrieved data after it’s obtained from the database.

The following code shows an example of how to use the PXDelegateResult class in a data view delegate. The PXSelectBase&lt;&gt;.SelectWithViewContext method, used in this example, retrieves the data from a database under the user context, including the sorting, filtering, and pagination specified by the user. Therefore, because this method is used, we recommend that you use a PXDelegateResult object with the IsResultFiltered, IsResultTruncated, and IsResultSorted properties set to *true*.

```language-csharp
protected virtual IEnumerable ardocumentlist()
{
    PXSelectBase<BalancedARDocument> cmd =
        new PXSelectJoinGroupBy<BalancedARDocument,
            ...
            //Set the necessary sorting fields: use the key fields
            OrderBy<Asc<BalancedARDocument.docType, 
            Asc<BalancedARDocument.refNbr>>>> 
            (this);
 
    PXDelegateResult delegResult = new PXDelegateResult
    {
        IsResultFiltered = true,
        IsResultTruncated = true,
        IsResultSorted = true
    };
 
    foreach (PXResult<BalancedARDocument> res_record 
        in cmd.SelectWithViewContext())
    {
        // add the code to process res_record
        delegResult.Add(res_record);
    }
    return delegResult;
}
```

**Attention:** Don’t use the PXSelectBase&lt;&gt;.SelectWithViewContext or PXSelectBase&lt;&gt;.SelectWindowed method to define your dynamic query if your data view delegate will filter the list of records returned from the database.

## Execution of a Data View Delegate { .section}

A data view executes the delegate by using the following rules:

-   If a delegate is not defined, the data view executes the BQL command.
-   If a delegate is defined, the data view invokes the delegate and then does the following:
    -   If the delegate returns `null`, executes the BQL command.
    -   If the delegate returns an object, reorders the result according to the `OrderBy` clause of the BQL command. However, this reordering of results is avoided if an object of the PXDelegateResult class is present within the data view delegate, its IsResultSorted property is set to *true*, and the result is returned by using this object.

In the delegate, you can execute any queries to get the needed data records. The result set \(PXResultset&lt;&gt; object\) returned by the delegate must consist of objects of the same DACs and in the same order as the classes are specified in the data view type. Thus, in the example above, you can return a `PXResult<SupplierProduct>` object, but you can’t return a `PXResult<Supplier>` object. To return a `Supplier` object from the delegate, you have to return the `PXResult<SupplierProduct, Supplier>` object from the method.

## Construction of a Result Set { .section}

**Attention:** The following is a legacy approach to creating a result set by using a PXResultset object. The recommended approach uses a PXDelegateResult object.

You can dynamically construct the result set that is returned by the data view. To construct a result set, you create an object of a generic PXResultset type and add PXResult objects to it.

The following code creates a result set of PXResult objects that contain the joined data of three data access classes: `Supplier`, `OrderLine`, and `Product`.

```language-csharp
// Create a PXResultset type with the needed DACs
PXResultset<Supplier, OrderLine, Product> res =
    new PXResultset<Supplier, OrderLine, Product>();

// Compose DAC objects, and set values for the needed fields
Supplier resultSupplier = new Supplier();
OrderLine resultLine = new OrderLine();
Product resultProd = new Product();

// Create a new PXResult object from DAC objects and add it to the result set
res.Add(new PXResult<Supplier, OrderLine, Product>(
                resultSupplier, resultLine, resultProd));
```

A PXResultset collection implements the `IEnumerable` interface; you can return the collection in a data view delegate.

```
protected virtual IEnumerable productRecords()
{
    ...
    // In a data view delegate, you can return the entire result set
    return res;
}
```

**Parent topic:**[Filtering Records Dynamically with Data View Delegates](../StudioDeveloperGuide/CodeCustomization_DataViewDelegates_Mapref.md)

