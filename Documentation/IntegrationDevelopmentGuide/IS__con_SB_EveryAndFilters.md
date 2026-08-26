# Selection of a Group of Records for Export {#_90f13bb6-3207-4483-a0ba-f6c17ba7a1d9 .concept}

Each record in the system is identified by the values of the key elements on the applicable Acumatica ERP form. For example, a record on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form is identified by the value of the **Inventory ID** key element. Key elements are available through the Summary object of a form. You can use the key element or elements of the form to select all records of the form for export. The other way to specify a group of records for export is to use the elements of the Summary area of the form in custom filters. Both ways of selecting records are described in detail below.

## Export of All Records from a Form { .section}

If you want to export every record from an Acumatica ERP form, in the array of Command objects that you pass to the Export\(\) method, you should insert the service command of the EveryValue type for the corresponding key element on the form. The EveryValue service command is available through the ServiceCommands subobject of the Summary object of the Content object that corresponds to the form. This service command specifies that every record of the specific type should be processed during export.

For example, if you want to export all stock item records available in the system, you should insert the EveryInventoryID service command, as the following code shows.

```
//stockItemsSchema is an IN202500Content object
var commands = new Command[]
{
   stockItemsSchema.StockItemSummary.ServiceCommands.EveryInventoryID,
   ...
};
```

## Export of a Group of Records from a Form { .section}

You can filter the data available in the Acumatica ERP database to select the records for export. For example, you can configure the system to export only the records that have a particular status.

To define a filter for the data being exported, you should create an array of Filter objects and add the needed filters to it. To define a filter, you should specify:

-   The UI element whose value should be used for filtering \(in the Field property of the Filter object\).
-   The value or values with which the value of the element should be compared \(in the Value property or Value and Value2 properties of the Filter object\).
-   The condition of comparison \(in the Condition property of the Filter object\).

If you define multiple filters in the array, you should also specify the logical operator \(either `And` or `Or`\) that defines how to apply these filters. If filters are passed to an Export\(\) method, during export, the system selects only the records that conform to the specified condition \(or conditions\) and exports only these records.

For example, suppose that you want to export only the stock item records that have the *Active* status. In this case, you can specify the filtering condition that the **Item Status** element should be equal to *Active*, as the following code shows. During export, the system processes the records that match the filtering conditions and exports only the records with the *Active* status.

```
var filters = new Filter[]
{
    new Filter
    {
         Field = stockItemsSchema.StockItemSummary.ItemStatus,
         Condition = FilterCondition.Equals,
         Value = "Active",
    }
};
```

For filtering records, you can use either the data fields of the Summary object of the form from which you are exporting data, or the data fields of the data access class \(DAC\) underlying the Summary object. \(In Acumatica Framework, this DAC is called the main DAC of the primary data view.\) If a data field of the DAC is not available directly through the elements of the Summary object, you cannot select the needed Field object among the subobjects of a Content object, as the previous code example shows for the ItemStatus data field. Instead, you should create a new Field object and specify its properties as follows: Specify the name of the Summary object as ObjectName \(that is, the object name that corresponds to the object to which the key data field belongs\), and type the name of the data field as FieldName in the code directly.

The following example shows filtering by the `LastModifiedDateTime` data field \(which specifies the date and time when a record was modified\) that is available through the DAC underlying the StockItemSummary object of the [Stock Items](../UserGuide/IN_20_25_00.md#) form.

```
new Filter
{
    Field = new Field 
    {
         ObjectName = stockItemsSchema.StockItemSummary.InventoryID.ObjectName,
         FieldName = "LastModifiedDateTime" 
    },
    Condition = FilterCondition.Greater,
    Value = DateTime.Now.AddMonths(-1).ToLongDateString()
}
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

