# Commands for Record Searching: Custom Field {#_a4fa7888-f76f-4ad2-ae57-42ba31b17e0a .concept}

To search for a record, you have to imitate the use of a column of a **Select** dialog box, declare a custom key, or declare a custom field in the sequence of commands that you pass to a processing method. In this topic, you will find a detailed description of the declaration of a custom field. You can find descriptions of two other approaches in [Commands for Record Searching: Filter Service Command](IS__con_SB_Commands_Filter.md#) and [Commands for Record Searching: Key Command](IS__con_SB_Commands_Key.md#).

## Custom Field { .section}

Acumatica ERP does not include `Filter` service commands for all selector columns that are available on Acumatica ERP forms. To use the needed selector column for record searching, you can create a custom field as follows:

1.  Initialize the properties of a Field object with the values of the properties of the key field.
2.  Concatenate the FieldName property of this object \(which is now equal to the value of the FieldName property of the key field\) with `!` and the internal name of the selector column that you are going to use for the search. The internal name of the selector column is equal to the value of the FieldName property of the corresponding element on the form.
3.  In the Value command in the array of Command objects, set the Value property to the value that should be used for the search and the LinkedCommand property to the created Field object.

For example, the following code searches for a sales order by order number.

```
//orderSchema is an SO301000Content object
var searchCustomerOrder = orderSchema.OrderSummary.OrderNbr;
searchCustomerOrder.FieldName +=
  "!" + orderSchema.OrderSummary.CustomerOrder.FieldName;

var commands = new Command[]
{
  new Value
  {
    Value = "SO",
    LinkedCommand = orderSchema.OrderSummary.OrderType
  },
  new Value 
  {
    Value = "SO248-563-06", 
    LinkedCommand = searchCustomerOrder
  },
  ...
}
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

