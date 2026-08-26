# Commands for Adding Detail Lines {#_f5638d5c-17e8-49ff-92d2-435c9f3078cf .concept}

When you need to add a detail line to an Acumatica ERP form, you can use one of the following approaches:

-   Add detail lines one by one on the Details tab of the form. For example, on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you can click **Add Row** on the **Details** tab and specify the values of the elements of each detail line.
-   Add detail lines by using a pop-up panel. For example, on the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form, you can use the **Add Sales Order** pop-up panel, which is opened when you click **Add Order** on the table toolbar of the **Details** tab.

In this topic, you will find the description of the NewRow command, which imitates the first approach listed above in the screen-based API. The second approach is described in [Commands for Pop-Up Panels](IS__con_SB_PopupPanel.md#).

## NewRow Service Command { .section}

When you are specifying the sequence of commands in an array of Command objects for a processing method and you need to add a new detail line to a document, you should use commands as follows:

1.  To add a new row, use the NewRow service command, which is an available service command of the Details subobject of a Content object.
2.  To specify the values of the elements of the created row, use the Value commands corresponding to the elements.

The following code shows an example of an order line being added to a sales order.

```
//orderSchema is an SO301000Content object 
var commands = new Command[]
{
    ...
    orderSchema.DocumentDetails.ServiceCommands.NewRow,
    new Value 
    {
        Value = "AALEGO500", 
        LinkedCommand = orderSchema.DocumentDetails.InventoryID 
    },
    new Value 
    {
        Value = "10.0", 
        LinkedCommand = orderSchema.DocumentDetails.Quantity 
    },
    new Value 
    {
        Value = firstItemUOM, 
        LinkedCommand = orderSchema.DocumentDetails.UOM 
    },
    ...
}
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

