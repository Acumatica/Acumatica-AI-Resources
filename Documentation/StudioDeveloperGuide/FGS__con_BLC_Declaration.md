# Business Logic Controller Declaration {#_61e0a0e8-78e2-4ebf-a0f1-eae124a6283e .concept}

Working with the business data in Acumatica Framework is implemented through the *business logic controller* object also referred as *graph* \(graph is a mathematical term for a set of objects where some pairs of objects are connected by links\). A graph provides the interface for the presentation logic to operate with the business data and relies on Data Access Layer components to store and retrieve the business data from the database.

The following example shows the declaration of a simple business logic controller. Note that the class is declared with the `public` access modifier. This is required for the business logic controller to be correctly recognized by the Acumatica Framework.

```
//Declaration of the graph
public class ProductMaint : PXGraph<ProductMaint>
{
    //Declaration of the data view
    public PXSelect<Product> Products;

    //Declaration of the actions
    public PXCancel<Product> Cancel;
    public PXSave<Product> Save;
}
```

In this example, the graph contains the following members:

-   `Products`: The *data view* that can be used for querying and modifying the data
-   `Cancel`: The *action* that discards all the changes made to the data and reloads it from the database
-   `Save`: The *action* that commits the changes made to the data to the database and then reloads the committed data

**Parent topic:**[Getting Started with Acumatica Framework](../StudioDeveloperGuide/FGS__mng.md)

