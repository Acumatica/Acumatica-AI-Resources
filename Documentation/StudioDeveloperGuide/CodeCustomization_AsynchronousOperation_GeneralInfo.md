# Asynchronous Operations: General Information {#_ed8c7ee9-3abb-4406-8e57-274e5d2aacaa .concept}

Each time a user action on a form triggers a request \(a round trip\), the system creates a new graph instance to process that request. After the request is processed, the graph instance must be cleared from the memory of the Acumatica ERP server. If your code performs a long-running operation—such as processing a document, processing large volumes of data, or executing an action that needs to call an external API—you should run it asynchronously in a separate thread.

The Acumatica Framework provides the following approaches for executing a long-running operation asynchronously:

-   The [IGraphLongOperationManager](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5b50498f-8e28-86d0-65d6-c06fae88e40d) interface: Derives from the ILongOperationManager interface. We recommend using this interface when you need to run an operation asynchronously from within a graph or graph extension.
-   The [ILongOperationManager](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ddd29f07-a167-f6ca-e6da-abc59121863d) interface: Provides a modern approach for handling execution of asynchronous operations. We recommend that you use this interface when you need to execute an operation asynchronously outside of a graph or graph extension, such as in a service **where you don't have access to a graph's instance**.
-   The [PXLongOperation](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b70e1da2-0376-e933-47c6-45ad18291e6c) class: Provides a legacy approach for asynchronous execution.

In this chapter, you’ll learn how to run an operation asynchronously by using the IGraphLongOperationManager and ILongOperationManager interfaces, as well as the PXLongOperation class.

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Implement a long-running action
-   Add the associated button to the table toolbar
-   Set up the long-running action to run asynchronously by using the LongOperationManager property of a graph

## Applicable Scenarios { .section}

You set up an operation to run asynchronously when this operation is expected to take a long time to complete.

## Use of the IGraphLongOperationManager Interface { .section}

You don't need to implement the IGraphLongOperationManager interface manually because it’s already injected as a dependency-injection service into PXGraph out of the box.

You can access this interface in a graph via the graph’s LongOperationManager property. In a graph extension, you can access this property via Base.LongOperationManager. The interface has useful method overloads—which don't require an object? key parameter—for executing a long-running operation. When you use one of these overloads, the framework automatically associates the long-running operation with the current graph instance.

To execute a long-running operation asynchronously in your graph, you can use the following methods:

-   void StartOperation\(Action&lt;CancellationToken&gt;? method\), which takes in a synchronous delegate as a parameter
-   void StartAsyncOperation\(Func&lt;CancellationToken, Task&gt; method\), which takes in an asynchronous delegate as a parameter

The following code shows you how to use void StartOperation\(Action&lt;CancellationToken&gt;? method\) to execute a long-running operation in a graph.

```language-csharp
public class RepairWOProcessingGraph : PXGraph<RepairWOProcessingGraph>
{
    // Method that defines the long-running operation
    private void ProcessRepairWorkOrdersInternal(CancellationToken token)
    {
        // Long-running logic

        // Optional: Periodically honor cancellation
        token.ThrowIfCancellationRequested();
    }
    
    // Method that kicks off the long-running operation   
    public void ProcessRepairWorkOrders()
    {
        // In a graph, the property LongOperationManager (IGraphLongOperationManager) 
        // is already available/injected.
        LongOperationManager.StartOperation(ProcessRepairWorkOrdersInternal);
    }
}
```

**Tip:** In a graph extension, you should use Base.LongOperationManager to execute a long-running operation. So in the preceding code example, you would use Base.LongOperationManager.StartOperation\(ProcessRepairWorkOrdersInternal\);

Note that the void StartOperation\(Action&lt;CancellationToken&gt;? method\) method shown in the code example above is an overload of the void StartOperation\(object? key, Action&lt;CancellationToken&gt;? method\) of the ILongOperationManager interface. Similarly, the void StartAsyncOperation\(Func&lt;CancellationToken, Task&gt; method\) method is an overload of void StartOperation\(object? key,Func&lt;CancellationToken, Task&gt; method\). We recommend that you use these overloads because they don't require you to provide an object? key parameter. When you use these overloads, the framework automatically associates the long-running operation with the current graph instance.

For the full list of methods available in the IGraphLongOperationManager interface, see [API Reference](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5b50498f-8e28-86d0-65d6-c06fae88e40d).

## Use of the ILongOperationManager Interface { .section}

You use the ILongOperationManager when you need to execute a long-running operation asynchronously outside of a graph or a graph extension, such as in a service **where you don't have access to a graph's instance**. To do this, you need to first use dependency injection to inject the ILongOperationManager service into a type. You can then use this type to execute a long-running operation asynchronously, as shown below.

**Important:** If a service operates in the context of a specific graph instance and the long-running operation is logically associated with that graph, you should use the graph’s `LongOperationManager` property instead of injecting the `ILongOperationManager` service. This keeps the operation properly associated with the graph lifecycle and UI context.

```language-csharp
public class RepairWOProcessingService
{
    // Inject ILongOperationManager via DI
    private readonly ILongOperationManager _longOperationManager;

    public RepairWOProcessingService(ILongOperationManager longOperationManager)
    {
       // Initialize _longOperationManager
        _longOperationManager = longOperationManager;
    }

    // Method that defines the long-running operation
    private void ProcessRepairWorkOrdersInternal(CancellationToken token)
    {
        // Long-running logic

        // Optional: periodically honor cancellation
        token.ThrowIfCancellationRequested();
    }

    // Method that kicks off the long-running operation for the service   
    public void ProcessRepairWorkOrders()
    {
        // Unique ID for the long-running operation
        var key = Guid.NewGuid();
        
        // Use the StartOperation method of the ILongOperationManager interface 
        // to execute the long-running operation asynchronously in a separate thread.
        _longOperationManager.StartOperation(key, ProcessRepairWorkOrdersInternal);
    }
}
```

Note that in the example above, the void StartOperation\(object? key, Action&lt;CancellationToken&gt;? method\) method of the ILongOperationManager interface is used to execute a long-running operation asynchronously, which takes in a object? key and a synchronous delegate as parameters. The interface also provides the void StartOperation\(PXGraph graph, Action&lt;CancellationToken&gt;? method\) overload, which you can use to execute a long-running operation when a graph's instance is available. For this method, you pass in the graph's instance instead of a object? key.

The ILongOperationManager interface also provides the void StartAsyncOperation\(object? key, Func&lt;CancellationToken, Task&gt; method\) method, which takes in an asynchronous delegate as a parameter. It has the void StartAsyncOperation\(PXGraph graph, Func&lt;CancellationToken, Task&gt; method\) method as an overload. For details, see the [API Reference](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ddd29f07-a167-f6ca-e6da-abc59121863d).

## Use of the PXLongOperation Class { .section}

You can use the PXLongOperation class when you need to execute a long-running operation asynchronously.

**Important:** This is a legacy approach. We recommend that you instead use the ILongOperationManager and IGraphLongOperationManager interfaces.

To make the system invoke the method in a separate thread, you can use the PXLongOperation.StartOperation method. Within the method that you pass to StartOperation, you can, for example, create a new instance of a graph and invoke a processing method on that instance. The following code snippet demonstrates how you can execute code asynchronously as a long-running operation in a method of a graph.

**Important:** To instantiate graphs from code, use the `PXGraph.CreateInstance<T>()` method. Do not use the `new T()` graph constructor because in this case, no extensions or overrides of the graph are initialized.

```language-csharp
public class MyGraph : PXGraph
{
  ...
  public void MyMethod()
  {
    ...
    PXLongOperation.StartOperation(this, delegate()
    {
      // insert the delegate method code here
      ...
      GraphName graph = PXGraph.CreateInstance<GraphName>();
      foreach (... in ...)
      {
        ...
      }
      ...
    });
  ...
  }
  ...
}
```

**Attention:** Do not pass a reference to this graph to the StartOperation method from a graph extension. If you did, the system wouldn’t be able to notify the UI about whether any errors occurred during the asynchronous operation or whether the operation was completed.

If you need to save data to the database inside a long-running operation, call the Save.Press\(\) method of the current graph. We recommend not using the Actions.PressSave\(\) method because it performs an external call and should be used from the UI only.

The following code shows an example of a method called `InvoiceOrder` that's executed asynchronously. This method is being called within the delegate that you pass to `PXLongOperation.StartOperation()` method.

```language-csharp
PXLongOperation.StartOperation(this, delegate ()
{
  InvoiceOrder(graphCopy); 
});
```

The `PXLongOperation.StartOperation()` method creates a separate thread and executes the specified delegate asynchronously on this thread. The method passed into `PXLongOperation.StartOperation()` matches the following delegate type, which has no input parameters.

```language-csharp
delegate void PXToggleAsyncDelegate();
```

**Tip:** In the example, the `(delegate())` anonymous method definition is used to shorten the code.

Inside the `delegate()` method, you shouldn’t use members of the current graph, because this would lead to synchronous execution of the method. Instead, use a copy of the graph, which you can create by using the `var graphCopy = this.Clone();` statement.

## Invocation of a Long-Running Operation in an Action { .section}

If you need to invoke a long-running operation in an action, the action handler for a processing operation must return `IEnumerable`. If you use the `void` action handler instead, the processing of the long-running operation and its result will not be displayed in the UI.

Below you can see an example of an action definition that runs a long-running operation.

```language-csharp
public PXAction<RSSVWorkOrder> Assign = null!;
[PXButton]
[PXUIField(DisplayName = "Assign", Enabled = false)]
protected virtual **IEnumerable** assign(PXAdapter adapter)
{
    <Invocation of a long-running operation>
}
```

**Parent topic:**[Implementing an Asynchronous Operation](../StudioDeveloperGuide/CodeCustomization_AsynchronousOperation_Mapref.md)

