# Use of PXProjection: General Information {#_5d9021cb-f014-4607-896a-bd709b74cfff .concept}

The [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute binds a DAC to an arbitrary dataset defined by the Select command. The Acumatica Framework does not bind this DAC to a database table—that is, it doesn’t select data from the table with the same name as the DAC. Instead, you specify a fluent BQL Select command \(or its traditional BQL equivalent\) as the data source in your query. This command can select data from one or more DACs and can include most BQL clauses. Thus, you can think of PXProjection entities as the Acumatica Framework's version of SQL views.

The PXProjection attribute is mainly used to perform complex Select operations by using a BQL query. If you need to join a BQL query that’s also a complex joined select query, you should use the PXProjection attribute.

You can also use PXProjection to display data from multiple tables on a form or a tab. To do this, you need to declare a DAC with the PXProjection attribute that defines how data from one or more tables is projected into a single DAC.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define the DAC for a new tab with the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute on an existing form
-   Define the data view for the new tab
-   Create a new tab item on an existing form

## Applicable Scenarios { .section}

You use the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute in the following cases:

-   You want to join a BQL query that’s a complex joined select query.
-   You want to display data from multiple tables on a form or a tab.
-   You want to retrieve a subset of fields from one or more DACs.
-   You want to return filtered data from a DAC.
-   You want to persist data to any number of database tables.

## Configuration of the PXProjection Attribute { .section}

The following example shows the use of the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute.

```language-csharp
[PXProjection(typeof(
    SelectFrom<Supplier>.
    InnerJoin<SupplierProduct>.On<
     SupplierProduct.accountID.IsEqual<Supplier.accountID>>))]

    public class SupplierAccounts: PXBqlTable, IBqlTable 
    {}
```

You can use the PXProjection attribute with both traditional and fluent BQL.

**Attention:** Your projection query must contain only Select queries derived from the PX.Data.SelectBase classes that implement the IBqlSelect&lt;Table&gt; interface. These queries should be derived from the BqlCommand class. Don’t pass derived types of the PXSelectBase class to a projection query because this will result in a runtime error.

## Field Mapping by Using the BqlField and BqlTable Properties { .section}

In the projection DAC \(the DAC on which you declare the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute\), you should explicitly map each projection field to the corresponding database column retrieved by the Select command. To map a field, set the BqlField property of the field-binding attribute \(such as PXDBString and PXDBDecimal\) to the type that represents the column, as shown in the following code.

```language-csharp
[PXDBString(15, IsUnicode = true, BqlField = typeof(Supplier.accountID))]
public virtual string AccountID { get; set; }
```

Alternatively, for the code example above, you can use the BqlTable property to map the field. The field binds by its name implicitly since the field has the same name in the `Supplier` table. Thus, the above code example can be rewritten as follows.

```language-csharp
[PXDBString(15, IsUnicode = true, BqlTable = typeof(Supplier))]
public virtual string AccountID { get; set; }
```

Note that a projection DAC does not need to map all the available DAC fields. Unbound DAC fields and DAC fields marked with the PXDBScalar and PXDBCalced attributes don’t need to be mapped because they’re calculated fields.

## Automatic Field Mapping Through Inheritance { .section}

To avoid listing all DAC fields, you can inherit the projection from one of the DACs in the Select command. In this case, don’t override fields from this DAC or add mapping by using BqlField. The following code shows an example.

```language-csharp
[PXProjection(typeof(
    SelectFrom<Supplier>.
    InnerJoin<SupplierProduct>.On<
     SupplierProduct.accountID.IsEqual<Supplier.accountID>>))]

public class SupplierAccounts : Supplier //inherit from Supplier
{
    //You do not have to list fields from the Supplier DAC.
    ...
}
```

## Additional Configuration of the PXProjection Attribute { .section}

You can further configure a projection in the following ways:

-   **Reduce the field count by using a projection**: In many cases, such as when generating reports, you need only a small subset of the corresponding DAC fields to be returned from the database. To optimize your query and avoid retrieving all the DAC fields, you can configure a projection that retrieves only the data for a specific set of fields.
-   **Filter rows with the projection**: You can configure a projection to return filtered data from a DAC.
-   **Declare the projection to be mutable**: A projection is read-only by default —that is, it doesn't save data to the database. However, you can configure a projection to be mutable by setting the Persistent property of the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute to `true`.

    **Attention:** The Acumatica Framework doesn't support setting the Persistent property to `true` if your projection's query includes a Union or UnionAll operation. This ensures that data changes aren't inadvertently persisted to the underlying tables if the projection extends one or more DACs used in the Union or UnionAll operation.

-   **Use the projection in another projection query**: To do this, you reference the existing projection in the query of the other projection.
-   **Use parameterized elements in the projection query**: You can write a projection query that contains parameterized elements, such as the current value of one of the DAC fields.
-   **Use the CurrentMatch BQL operator in the projection query**: You can add this operator to provide row-level security.

For details on how to configure a projection in the ways listed above, see [Use of PXProjection: Additional Configuration of the PXProjection Attribute](CodeCustomization_MultiDacDisplayPXProjection_AdditionalConfiguration.md).

**Parent topic:**[Displaying Data from Multiple DACs by Using PXProjection](../StudioDeveloperGuide/CodeCustomization_MultiDacDisplayPXProjection_Mapref.md)

