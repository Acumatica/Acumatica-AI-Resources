# Workflow Events: General Information {#_8aadf20a-c32d-425e-a39d-6cc8a64eec74 .concept}

A *workflow event* is an event that can be used to trigger a transition. Workflow events introduce cross-graph interactions and are similar to .NET events.

In this chapter, you will use existing events and create your own events in a custom workflow by using Workflow API.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Explore the code of the predefined workflow to find the workflow event
-   Create a workflow event handler
-   Bind the workflow event handler to a workflow event
-   Register a workflow event handler in a particular workflow state
-   Create a transition triggered by a workflow event
-   Create a workflow event
-   Override a method to fire the workflow event

## Applicable Scenarios { .section}

You use workflow events when you need to implement cross-graph interaction for forms that use workflows.

For example, in Acumatica ERP, most of the predefined data entry forms have workflows defined. If the workflow of a custom form is dependent on transitions that happen on an existing Acumatica ERP form, you can implement the interaction between workflows by using workflow events.

## Defining of a Workflow Event { .section}

To define a workflow event, you need to do the following:

-   Define the workflow event itself
-   Define a workflow event handler
-   Bind the workflow event handler to the workflow event
-   Register the workflow event handler in the workflow state where the corresponding workflow event should be fired

After you have declared a workflow event, you need to fire it.

## Workflow Event { .section}

A workflow event is an object in code that corresponds to a DAC and has a name; it can be defined anywhere. However, we strongly recommend that you place it in a nested class in the DAC the workflow event relates to.

To define a new workflow event, you do the following:

1.  You create a class that inherits from the PXEntityEvent.Container class.

    As the type parameter of the PXEntityEvent class, you specify the name of the primary DAC of the form where the event is fired.

2.  In the class that inherits from the PXEntityEvent.Container class, you create the workflow event as a field of the PXEntityEvent type.

    The PXEntityEvent class has one or two generic type parameters. The first parameter must be the same one that you used in the class that inherits from the PXEntityEvent.Container class. This parameter shows that this workflow event happens on records of the specified DAC. You can use the second parameter to provide additional information about the workflow event that occurred. The second parameter usually holds an additional DAC record that corresponds to the workflow event.


An example of a workflow event definition is shown in the following code. Among other events, the `InvoiceLinked` workflow event is declared. This workflow event occurs when the invoice, which is defined as the second type parameter, is linked with an SOOrderShipment record.

```language-csharp
public partial class SOOrderShipment : PXBqlTable, IBqlTable{
  public class Events : PXEntityEvent<SOOrderShipment>.Container<Events>{
    public PXEntityEvent<SOOrderShipment, SOShipment> ShipmentLinked;
    public PXEntityEvent<SOOrderShipment, SOShipment> ShipmentUnlinked;
    public PXEntityEvent<SOOrderShipment, SOInvoice> InvoiceLinked;
    public PXEntityEvent<SOOrderShipment, SOInvoice> InvoiceUnlinked;
  }
}
```

## Workflow Event Handler { .section}

You can define a workflow event handler as a member of a graph or a graph extension. You do this by declaring a member of the PXWorkflowEventHandler type, as the following code example shows.

```language-csharp
public PXWorkflowEventHandler<SOShipment, SOOrderShipment, SOInvoice> 
    OnInvoiceLinked;
public PXWorkflowEventHandler<SOShipment, SOInvoice> OnInvoiceReleased;
```

In the first type parameter, you need to specify the primary DAC to indicate that this handler is used to manipulate the records of the primary DAC. In the second type parameter, you need to specify the DAC where the workflow event for this handler is defined. The optional third parameter can be used to further restrict the handler to only those workflow events that provide additional information for a record. The second and third parameters must match the type parameters of the workflow event for which the handler is defined.

## Binding of a Handler to a Workflow Event { .section}

To bind a workflow event handler to a workflow event, in the screen configuration \(inside the AddScreenConfigurationFor or UpdateScreenConfigurationFor method\), you call the WithHandlers method, and add the handler by using the Add method, as the following code example shows.

```language-csharp
.WithHandlers(handlers =>
{
  handlers.Add(handler =>
  {
    return handler
      .WithTargetOf<SOOrder>()
      //PXEntityEvent<SOOrder>
      .OfEntityEvent<SOOrder.Events>(event => event.ShipmentCreationFailed)
      // PXWorkflowEventHandler<SOOrder, SOOrder> 
      .Is(graph => graph.OnShipmentCreationFailed) 
      .UsesTargetAsPrimaryEntity()
      .DisplayName("Shipment Creation Failed");
  });
})
```

In the OfEntityEvent method, you need to select the workflow event declared in the DAC. The workflow event must match the type specified in the WithTargetOf method and the type of the current screen configuration context.

In the Is method, you need to specify the workflow event handler that matches the workflow event signature.

By calling the UsesTargetAsPrimaryEntity method, you specify that the workflow should use the record on which the workflow event is fired. For a cross-graph execution, you need to call the UsesPrimaryEntityGetter method instead and select the DAC record that should be used as the source record for the workflow event. For an example, see [Step 4: Declaring the Workflow Event](WorkflowAPI_Events_Activity_CreateNew_DeclareEvent.md) in the [Workflow Events: To Create a Workflow Event](WorkflowAPI_Events_Activity_CreateNew.md) activity.

## Registration of the Workflow Event Handler in a Workflow State { .section}

To register a workflow event handler in a workflow state, you call the WithEventHandlers method in the workflow state definition, as the following code example shows.

```language-csharp
flowStates.Add<State.completed>(flowState => {
  return flowState
    .WithEventHandlers(handlers =>
    {
      handlers.Add(g => graph.OnInvoiceUnlinked);
      handlers.Add(g => graph.OnInvoiceCancelled);
    })
});
```

## Firing of a Workflow Event { .section}

To fire a workflow event, you select the workflow event from the list of events declared in the class derived from the PXEntityEvent.Container class and call the FireOn method. In the FireOn method parameters, you provide the graph that should be used as a host for workflow event execution, as well as the instances of DACs that are used as type parameters in the workflow event definition. An example of firing the `InvoiceLinked` workflow event is shown in the following code.

```language-csharp
public static SOOrderShipment LinkInvoice(this SOOrderShipment self, 
    SOInvoice invoice, PXGraph graph)
{
  if (self is null || invoice is null)
    return self;
  
  self.InvoiceType = invoice.DocType;
  self.InvoiceNbr = invoice.RefNbr;
  self = (SOOrderShipment)graph.Caches<SOOrderShipment>().Update(self);
  
  SOOrderShipment.Events
    .Select(e => e.InvoiceLinked)  //PXEntityEvent<SOOrderShipment, SOInvoice>
    .FireOn(graph, self, invoice);
  
  return self;
}
```

In the code above, the `InvoicedLinked` event is selected from the list of `SOOrderShipment` events and the FireOn method is called. As parameters, the following have been provided: the instance of the graph that will be used as a host for workflow event execution, and the instances of `SOOrderShipment` and `SOInvoice` DACs. The signature of the `InvoiceLinked` event restricts the FireOn method to an overload that has these exact parameters.

## Triggering of a Transition by a Workflow Event { .section}

To define a transition that is triggered by a workflow event, you specify the workflow event handler in the IsTriggeredOn method of the transition definition, as the following code shows.

```language-csharp
transitions.AddGroupFrom<States.completed>(transitionGroup =>
{
  transitionGroup.Add(transition => 
    transition.To<States.linked>().IsTriggeredOn(graph => graph.OnInvoiceLinked));
});
```

**Parent topic:**[Implementing Workflow Events](../DeveloperGuide/WorkflowAPI_Events_Mapref.md)

