# Event Handlers {#_cd34176b-2ab9-42cc-890c-b6cb42cd433e .concept}

The Acumatica Framework raises events in the context of a graph. An event handler can be implemented in a graph, as well as in an attribute of a data field.

## Graph and Attribute Event Handlers { .section}

*Graph event handlers* are defined as methods in a business logic controller \(BLC\) class for a particular data access class \(DAC\) or a particular DAC field.

*Attribute event handlers* are defined as methods in attribute classes. The logic of the event handlers is attached to all DAC objects or data fields annotated with these attributes. The attribute in which an attribute event handler is implemented must be derived from the PXEventSubscriberAttribute class and must implement the interface of the `IPX<EventName>Subscriber` form \(where `<EventName>` is replaced with the name of the needed event\), as shown in the following example.

```
// The attribute implements handlers for the FieldVerifying
// and RowPersisting events
public class MyAttribute : PXEventSubscriberAttribute,
                           IPXFieldVerifyingSubscriber,
                           IPXRowPersistingSubscriber
{
     public virtual void FieldVerifying(PXCache sender,
                                        PXFieldVerifyingEventArgs e)
     {
         ...
     }

     public virtual void RowPersisting(PXCache sender,
                                       PXRowPersistingEventArgs e)
     {
         ...
     }
}
```

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

