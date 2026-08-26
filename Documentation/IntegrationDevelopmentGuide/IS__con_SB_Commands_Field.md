# Commands for Retrieving the Values of Elements {#_56d2c742-7db3-4dac-bacd-20090d7cb824 .concept}

You configure the sequence of commands that should be executed during data import, data export, or data processing through the web service by using an array of objects of the Command type.

As you specify this sequence of commands, when you need to reflect obtaining the value of an element on a form, you should use a Field object. To specify the element whose value you need to obtain, you can do one of the following:

-   Select the needed Field object from the subobjects of the Field type of a Content object that corresponds to the needed Acumatica ERP form
-   Create an object of the Field type and specify its properties

Both of these ways are described in detail in the following sections of this topic.

## Selection of the Fields Available in a Content Object { .section}

If you want to obtain the value of an element on an Acumatica ERP form, you can select the needed Field object from the subobjects of the Field type of the Content object that corresponds to the form. For example, if you want to export the values of the **Inventory ID** and **Description** elements on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you can use the following code.

```
//stockItemsSchema is an IN202500Content object
var commands = new Command[]
{
   ...
   **stockItemsSchema.StockItemSummary.InventoryID,
   stockItemsSchema.StockItemSummary.Description,**
   ...
};
```

## Field Object Creation { .section}

You can retrieve the values of not only the fields that are available on the Acumatica ERP form, but also the data fields of the data access classes \(DACs\) underlying the form. Some of these data fields are not available directly through the elements of the form. That is, you cannot select the needed Field object among the subobjects of the Content object.

If you want to retrieve the value of an element that is not available on the form, you can create a Field object and specify its properties so that it specifies the needed data field of the DAC. You should specify the name of the object that corresponds to the needed DAC as the ObjectName and type the name of the data field in FieldName. The following code illustrates the creation of a Field object for the `LastModifiedDateTime` data field \(which specifies the date and time when a record was modified\) that is available through the DAC underlying the StockItemSummary object of the [Stock Items](../UserGuide/IN_20_25_00.md#) form.

**Note:** To find the names of the data fields that belong to DACs, you should read the applicable Acumatica ERP code. You can find the source code of Acumatica ERP on the [Source Code](../UserGuide/SM_20_45_70.md#) \(SM204570\) form or in &lt;ApplicationFolder&gt;\\App\_Data\\CodeRepository\\PX.Objects\\, where &lt;ApplicationFolder&gt; is replaced with the path to the folder of the Acumatica ERP application instance. You can learn the details of working with the source code of Acumatica ERP in the T300 Acumatica Customization Platform training course.

```
//stockItemsSchema is an IN202500Content object
var commands = new Command[]
{
    ...
    **new Field 
    \{
         ObjectName = stockItemsSchema.StockItemSummary.InventoryID.ObjectName,
         FieldName = "LastModifiedDateTime" 
    \},**
    ...
};
```

**Note:** You can create Field objects for the elements that are available on a form. If you want to create a Field object for an element available on the form, set the ObjectName property to the ObjectName property of the needed subobject of the Field type of a Content object, and set the FieldName property to the FieldName property of this Field object. The following code illustrates the creation of a Field object for the InventoryID field of the [Stock Items](../UserGuide/IN_20_25_00.md#) form.

```
new Field 
{
     ObjectName = stockItemsSchema.StockItemSummary.InventoryID.ObjectName,
     FieldName = stockItemsSchema.StockItemSummary.InventoryID.FieldName 
}
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

