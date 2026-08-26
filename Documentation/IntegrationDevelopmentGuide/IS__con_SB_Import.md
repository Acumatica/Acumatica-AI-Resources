# Import\(\) Method {#_7cd68dda-8349-4d7c-a060-4a62b8e519c0 .reference}

To import data to Acumatica ERP by using the web services API, you should use the proper Import\(\) method of a Screen object. You select the needed Import\(\) method by using in the name of the method a prefix that contains the ID of the Acumatica ERP form to which the method imports data.

## Syntax { .section}

```
public ImportResults[] Import(
  Command[] commands, 
  Filter[] filters, 
  string[][] data, 
  bool includedHeaders, 
  bool breakOnError, 
  bool breakOnIncorrectTarget
)
```

## Parameters { .section}

-   commands: In this parameter, you specify the UI elements of the Acumatica ERP form to which you need to import data by using Field commands. You can click buttons on the form \(for example, the **Save** button\) by using Action commands.
-   filters: In this parameter, you specify any restrictions on the data to be imported. For example, you can configure the system to import only the records that have the *CUST* prefix in the customer ID field.
-   data: In this parameter, you specify the data that should be imported in a two-dimensional string array. Each row of the array should contain the values of the fields in the order that you specified in the `commands` parameter.
-   includeHeaders: In this parameter, you specify whether the imported data include column headers. If this parameter is set to `true`, this signals to the system that the data, which is imported, includes the names of the imported elements in the first row.
-   breakOnError: In this parameter, you specify whether the system should stop the data import if an error occurs during this process. If this parameter is set to `true`, the system stops importing data when the first error occurs during the import.
-   breakOnIncorrectTarget: In this parameter, you specify whether the system should stop the data import if the record does not meet the condition specified for the imported record. If this parameter is set to `true`, the system stops processing records and displays an error.

## Return Value { .section}

The result of the processing of the data imported by using the Import\(\) method is returned as a ImportResults object specific to the form to which the data has been imported. This object contains the result of the processing.

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

