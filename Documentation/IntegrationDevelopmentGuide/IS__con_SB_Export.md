# Export\(\) Method {#_b1584c43-084d-4c4b-b5b7-fc5412de852b .reference}

You use the proper Export\(\) method of a Screen object to export data from Acumatica ERP. You select the needed Export\(\) method by using in the name of the method the prefix that contains the ID of the Acumatica ERP form from which the method exports data.

## Syntax { .section}

```
public string[][] Export(
  Command[] commands, 
  Filter[] filters, 
  int topCount, 
  bool includeHeaders, 
  bool breakOnError
)
```

## Parameters { .section}

-   commands: In this parameter, you specify the UI elements of the Acumatica ERP form whose values you need to export. In the array of commands that you pass to the commands parameter, you can also use the EveryValue service command, which makes the system export all records of the specific type.
-   filters: In this parameter, you specify any restrictions on the data to be exported. For example, you can configure the system to export only the records that have a particular status.
-   topCount: In this parameter, you can restrict the number of records to be exported. If this parameter is set to 0, the system exports all records that are specified by the commands and filters parameters of the Export\(\) method.
-   includeHeaders: In this parameter, you specify whether the result of the export should include column headers. If this parameter is set to `true`, the result of the export includes the names of exported elements in the first row of the exported data.
-   breakOnError: In this parameter, you specify whether the system should stop the export if an error occurs during this process. If this parameter is set to `true`, the system stops exporting data when the first error occurs during the export.

## Return Value { .section}

The result of the data export is a two-dimensional string array, which represents the exported data in a table format. Thus, if an exported record contains detail lines, the values of the detail lines are translated to multiple rows of this table. The number of rows is equal to the number of detail lines of the source record. The table rows that belong to one record have the same values of the elements of the summary area specified.

For example, suppose that on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, an invoice has three detail lines. If you export this invoice with detail lines, the data prepared for export will include three records for this invoice—one record for each detail line. These records will include identical values of the elements in the summary area of the invoice, such as the type and reference number, and different values of the detail line elements.

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

