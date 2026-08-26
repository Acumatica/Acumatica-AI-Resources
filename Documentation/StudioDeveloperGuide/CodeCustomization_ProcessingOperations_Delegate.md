# Processing Operations: Specifying a Processing Delegate {#_72e00fea-63dc-47fe-ae7d-dc6b5bf6e4ca .concept}

If no workflow is implemented for the records that you are going to process on a processing form, you need to specify a processing delegate to define a processing operation for the form.

## Specifying the Processing Delegate { .section}

You specify the processing delegate by using one of the SetProcessDelegate methods of the data view that has a type derived from [PXProcessingBase&lt;Table&gt;](https://help.acumatica.com/(W(2))/Help?ScreenId=ShowWiki&pageid=f74d0a85-e082-d824-66c1-8a229df51e96).

You can specify the processing delegate in the graph constructor or the RowSelected event handler of the main DAC of the primary data view.

**Attention:** If a user can select a method to process records on a processing form, you must use the RowSelected event handler to specify the selected method as the processing delegate.

## Implementing the Processing Delegate { .section}

The processing delegate, which is passed into a SetProcessDelegate method, can have one of the following delegate types:

-   ```language-csharp
delegate void ProcessItemDelegate<Graph>(Graph graph, Table item)
```

    You can use the specified graph and item objects within the processing method. When the processing of records is initiated, Acumatica Framework creates a graph instance of the specified type and invokes the delegate for each data record that should be processed. A single graph instance is used for the processing of all records. Therefore, you have to clear the graph state by calling the Clear\(\) method before the invocation of the processing method within the delegate.

-   ```language-csharp
delegate void ProcessListDelegate(List<Table> list, 
    CancellationToken ct);
```

    You can work with the list of processed records of the specified List&lt;Table&gt; type. You can reorder the records in the list before processing, as well as check dependencies between records during processing.

    To make sure the processing result for each record is correctly passed to the UI, inside the processing delegate, you use the PXProcessing&lt;&gt;.ProcessRecords method. With this method, you do not need to use the methods of the PXProcessing class to display messages during processing or throw an error as a result of processing. The default messages and error handling are used. However, you can override the default behavior in this method.

    The processing delegate can have a second parameter of the CancellationToken type; you can use this parameter to initiate the cooperative cancellation by calling the ThrowIfCancellationRequested method.


## Example: A Non-Static Processing Method and Its Invocation in the Processing Delegate { .section}

In this example, a non-static processing method is defined in the data entry graph. The method works with a single record \(see the following code\).

```language-csharp
// The data entry graph
public class SalesOrderEntry : PXGraph<SalesOrderEntry, SalesOrder>
{
    ...
    // A non-static method that works with a single record
    public void ApproveOrder(SalesOrder order, bool isMassProcess = false)
    {
         // Process the record here
    **\}**
}
```

You invoke this method inside the processing delegate as follows.

```language-csharp
// The processing graph
public class SalesOrderProcess : PXGraph<SalesOrderProcess>
{
    public PXProcessing<SalesOrder> SalesOrders = null!;
    ...
    public SalesOrderProcess()
    {
        // Set the processing delegate for a data view of 
        // the PXProcessing or derived type
        SalesOrders.SetProcessDelegate<SalesOrderEntry>(
            delegate(graph, order) => 
         {
            // Because a single graph instance is used 
            // for the processing of all records, 
            // you have to clear the graph state 
            // before the invocation of the processing method.
            graph.Clear();
            graph.ApproveOrder(order, true);
        });
    }
}
```

## Example: A Static Processing Method and Its Invocation in the Processing Delegate { .section}

When you use a static processing method, you have to manually create a new graph object once and reuse it throughout the whole static method \(see the following code\).

```language-csharp
// The processing graph
public class RSSVAssignProcess : PXGraph<RSSVAssignProcess>
{
    // A static processing method that works with the list of records
    public static void AssignOrders(List<RSSVWorkOrder> list,
        bool isMassProcess = false)
    {
        // Create a new graph object only once.
        var workOrderEntry = PXGraph.CreateInstance<RSSVWorkOrderEntry>();
                
        // Process the records. The processing method uses the error handling
        // and progress tracking functionality of the PXProcessing class.
        PXProcessing<RSSVWorkOrder>.ProcessRecords(list, isMassProcess,
            workOrder =>
        {
            workOrderEntry.Clear();
            workOrderEntry.WorkOrders.Current = workOrder;
            workOrderEntry.Assign.Press();
        });
    }
}
```

You invoke this static processing method inside the processing delegate as follows.

```language-csharp
// The processing graph
public class RSSVAssignProcess : PXGraph<RSSVAssignProcess>
{
    public SelectFrom<RSSVWorkOrder>.ProcessingView WorkOrders = null!;

    public RSSVAssignProcess()
    {
        WorkOrders.SetProcessDelegate(list =>
                AssignOrders(list, true));
    }
}
```

**Parent topic:**[Implementing Processing Operations](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Mapref.md)

