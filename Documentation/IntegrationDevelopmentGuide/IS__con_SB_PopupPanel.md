# Commands for Pop-Up Panels {#_0ff94cd6-a46e-4cf7-8b97-51b79a6b3257 .concept}

In some instances, when you click a specific button on some form, the system opens a pop-up panel, where you can set the values of needed elements. This pop-up panel looks like a dialog box and does not contain an Acumatica ERP form. For example, if you click **Add Order** on the table toolbar of the **Details** tab of the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form, the system displays the **Add Sales Order** pop-up panel.

**Note:** Do not confuse a situation when the system opens a pop-up panel \(where you can specify needed settings but no Acumatica ERP form is shown\) with a situation when the system opens a pop-up window that contains an Acumatica ERP form. A pop-up window that contains a form has an address line in the browser where you can see the ID of the form. A pop-up panel looks like a dialog box and does not have an address line.

When you are specifying a sequence of commands in an array of Command objects for a processing method and you need to reflect the setting of values of elements on a pop-up panel in these commands, you should perform the following steps:

1.  Insert the DialogAnswer service command of the pop-up panel object before the action that opens the panel, and set the Commit property to `true` for this command.
2.  Specify the action that opens the pop-up panel, and set the Commit property of the action to `true`.
3.  Specify the values of elements as needed on the pop-up panel.
4.  Specify the action that closes the panel, and set the Commit property of the action to `true`.

    **Note:** For some pop-up panels, you need to specify only one action to select values from the pop-up panel. For example, you need to specify only one action if you are creating a shipment by using the **Create Shipment** action on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, which displays the **Specify Shipment Parameters** pop-up panel.


The following code illustrates the setting of the values on the **Add Sales Order** pop-up panel, which appears after a user clicks **Add Order** on the toolbar of the **Details** tab of the [Shipments](../UserGuide/SO_30_20_00.md#) form.

```
//shipmentSchema is a SO302000Content object
//Force a commit for the SelectSO action
var selectSOwithCommit = shipmentSchema.Actions.SelectSO;
selectSOwithCommit.Commit = true;

//Force a commit for the AddSO action
var addSOwithCommit = shipmentSchema.Actions.AddSO;
addSOwithCommit.Commit = true;

//Configure the list of commands
var commands = new Command[]
{
  ...
  //Open the Add Sales Order panel
  new Value 
  {
    Value = "OK", 
    LinkedCommand = 
     shipmentSchema.AddSalesOrderOperation.ServiceCommands.DialogAnswer, 
    Commit = true 
  },
  selectSOwithCommit,
                
  //Specify the first order number on the Add Sales Order panel
  //and get the values of item elements
  new Value 
  {
    Value = firstOrderNbr, 
    LinkedCommand = shipmentSchema.AddSalesOrderOperation.OrderNbr 
  }, 
  new Value
  {
    Value = "True",
    LinkedCommand = shipmentSchema.AddSalesOrder.Selected
  },
  shipmentSchema.AddSalesOrder.InventoryID,
  shipmentSchema.AddSalesOrder.Quantity,
  shipmentSchema.AddSalesOrder.OpenQty,
  shipmentSchema.AddSalesOrder.LineDescription,
};
//context is a Screen object
//Submit the commands to the form
var soLines = context.SO302000Submit(commands);

//Select all items of the first order for shipment
List<Command> commandList = new List<Command>();
for (int index = 0; index < soLines.Length; index++)
{
  commandList.Add(new Value
  {
    Value = index.ToString(),
    LinkedCommand = shipmentSchema.AddSalesOrder.ServiceCommands.RowNumber
  });
  commandList.Add(new Value
  {
    Value = "True",
    LinkedCommand = shipmentSchema.AddSalesOrder.Selected,
    Commit = index < soLines.Length - 1
  });
}

//Add items to the shipment
commandList.Add(addSOwithCommit);
context.SO302000Submit(commandList.ToArray());
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

