# Processing Operations: Specifying a Workflow Action {#_8a42da6a-2365-4e77-9b62-e84de29cfa3a .concept}

If a workflow is implemented for the records that you are going to process on a processing form, you need to specify a workflow action to define a processing operation for the form.

## Specifying the Workflow Action { .section}

To specify a workflow action for processing, you invoke one of the SetProcessWorkflowAction methods of the data view that has a type derived from [PXProcessingBase&lt;Table&gt;](https://help.acumatica.com/(W(2))/Help?ScreenId=ShowWiki&pageid=f74d0a85-e082-d824-66c1-8a229df51e96).

You can specify the workflow action to be used for processing in the RowSelected event handler of the main DAC of the primary data view.

**Attention:** We recommend that you not call the SetProcessWorkflowAction method in the graph constructor because this could cause incorrect initialization of the workflow.

In the SetProcessWorkflowAction method, you specify the processing action, as shown in the following example. You can also pass the values that are specified in the filter on the processing form to the method.

```language-csharp
protected virtual void _(Events.RowSelected<RSSVWorkOrder> e)
{
    WorkOrders.SetProcessWorkflowAction<RSSVWorkOrderEntry>(
        graph => graph.Assign);
}
```

## Action Definition in the Workflow { .section}

You modify the action definition in the workflow so that the action can be used on the processing form as follows:

-   You call the MassProcessingScreen&lt;&gt;\(\) method with the processing graph as the type parameter.
-   You call the InBatchMode\(\) method if the workflow action works with the list of records.

See an example below.

```language-csharp
actions.Add(graph => graph.Assign, action => action
    .WithCategory(processingCategory)
    .MassProcessingScreen<RSSVAssignProcess>()
    .InBatchMode());
```

**Parent topic:**[Implementing Processing Operations](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Mapref.md)

