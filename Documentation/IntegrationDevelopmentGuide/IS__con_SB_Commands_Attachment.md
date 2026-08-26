# Commands for Working with Attachments {#_14f7053a-8c07-49fe-82fb-0c6fb1b459dc .concept}

In Acumatica ERP, you can attach files to records on Acumatica ERP forms and to detail lines on master-detail forms.

To obtain a file attached to the selected record or detail line through the web services API, you specify the Value command in the array of Command objects as follows:

-   In the FieldName property, you specify the name of the file that should be obtained.
-   In the LinkedCommand property, you specify the needed Attachment service command.

    To work with a file attached to a form, you use the Attachment service command of the object that corresponds to the Summary object. For example, to obtain a file attached to a stock item record on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you use the Attachment service command of the IN202500StockItemSummary object.

    To work with the file attached to a detail line of a master-detail form, you use the Attachment service command of the object that corresponds to the Details object. For example, to obtain the file attached to a warehouse detail line of a stock item on the [Stock Items](../UserGuide/IN_20_25_00.md#) form, you use the Attachment service command of the IN202500WarehouseDetails object.


The following code shows how to retrieve the file attached to a stock item record on the [Stock Items](../UserGuide/IN_20_25_00.md#) form.

```
//stockItemsSchema is an IN202500Content object
var commands = new Command[]
{
  new Value 
  {
    Value = "AAMACHINE1", 
    LinkedCommand = stockItemSchema.StockItemSummary.InventoryID 
  },
  new Value 
  {
    FieldName = "T2MCRO.jpg", 
    LinkedCommand = 
     stockItemSchema.StockItemSummary.ServiceCommands.Attachment 
  }  
};
//context is a Screen object
var stockItemAttachment = 
 context.IN202500Export(commands, null, 1, false, true);
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

