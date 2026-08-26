# Cancellation of Attribute Event Handlers {#_93f78385-4879-433f-808a-96c04a43757d .concept}

In this topic, you can learn about cancellation of attribute event handlers.

Event handlers can be defined in a graph and in attributes. Graph event handlers and attribute event handlers may be called in a different order, depending on the event:

-   For events whose names end with *ing* \(except for the [RowSelecting](https://help.acumatica.com/(W(137))/Help?ScreenId=ShowWiki&pageid=251735da-091e-3bc5-f805-0f570e923864) event handler\), graph event handlers are called first. You can prevent the execution of attribute event handlers by setting e.Cancel to true.
-   For events whose names end with *ed*, attribute event handlers are called first.

For example, if you need to change the default value set by the PXDefault attribute for a field, you can define a FieldDefaulting event handler in the graph. In this graph event handler, you can assign a different default value and set e.Cancel to true to prevent the execution of the FieldDefaulting event handler defined in the PXDefault attribute \(see the following code\).

```language-csharp
protected virtual void ShipmentLine_Gift_FieldDefaulting(
    PXCache sender, PXFieldDefaultingEventArgs e)
{
    ShipmentLine line = e.Row as ShipmentLine;
    if (line == null) return;

    Product card = GiftCard.Select();
    if (card != null && line.ProductID == card.ProductID)
    {
        e.NewValue = true;
        **e.Cancel = true;**
    }
}
```

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

