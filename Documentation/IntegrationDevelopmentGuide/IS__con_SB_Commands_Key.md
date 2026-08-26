# Commands for Record Searching: Key Command {#_b34f1a13-688c-4baa-ac07-9af4d256f2a7 .concept}

To search for a record, you have to imitate the use of a column of a **Select** dialog box, declare a custom key, or declare a custom field in the sequence of commands that you pass to a processing method. In this topic, you will find a detailed description of the use of the Key command, which you use to declare a custom key. You can find descriptions of two other approaches in [Commands for Record Searching: Filter Service Command](IS__con_SB_Commands_Filter.md#) and [Commands for Record Searching: Custom Field](IS__con_SB_Commands_!FieldName.md#).

## Key Command { .section}

If you specify the value of key elements on an Acumatica ERP form, the system does not change the current record in the system; instead, it searches for the record, which is identified by the values of the key elements, and selects this record. By using custom keys, you can make some elements on an Acumatica ERP form work as key elements.

You can specify custom keys to search for a record or a detail line. You can use the fields of the summary object and the detail objects, but not the fields that belong to other objects, as custom key fields. For example, you can find the needed customer record in the system by using the CustomerName field of the AR303000CustomerSummary object of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form as the custom key, but you cannot find the record by using the Email field of the AR303000GeneralInfoMainContact object as the custom key.

To specify a custom key, you have to define the key by using the Key command as follows:

1.  Create a Key command by using the operator `new`.
2.  To specify the element that should be used as a custom key, set the ObjectName and FieldName properties of the created Key command to the values of the ObjectName and FieldName properties of the field corresponding to the element.
3.  To specify the value of the custom key, set the Value property of the created Key command to the needed value in the format `='<Key value>'`, where you should replace `<Key value>` with the needed value of the key.

Below is an example of the Key command that declares the **Warehouse** column as the custom key on the **Document Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

```
new Key
{
    ObjectName = orderSchema.DocumentDetails.Warehouse.ObjectName,
    FieldName = orderSchema.DocumentDetails.Warehouse.FieldName,
    Value = "='MAIN'"
},
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

