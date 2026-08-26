# Simple Scenarios for Data Import {#_2c494729-50a7-437a-bfb8-59e21123a1dd .concept}

With simple scenarios, you skip the step of creating the data provider before you create the import scenario. You compose the mapping directly on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form and then you immediately run the import procedure on the form.

Simple scenarios are appropriate for one-time import, such as during data migration. For data migration, you can prepare all data in the source file in the format needed for import and use a straightforward mapping of the source fields to the target fields. If you need to compose a complex scenario—which might involve using custom keys, searching for records, and modifying service commands—you have to use regular import scenarios that you compose by creating the data provider and then defining the mapping on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.

To import data by using a simple scenario, you have to complete the following steps:

1.  **Upload the file**

    You first upload the file with data that you want to import to the [Import by Scenario](SM_20_60_36.md) form. You can upload an Excel, CSV, or XML file. The following criteria should be met for the source files for a simple scenario:

    -   Only the data from the first sheet of an Excel file is imported.
    -   A CSV file should use a comma \(,\) as the delimiter and have US-ASCII encoding. These default parameters are used for data provider creation.
    -   An XML file should have US-ASCII encoding and a tree structure. These default parameters are used for data provider creation.
2.  **Specify the parameters of the import scenario**

    Also on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, you specify the Acumatica ERP form to which you want to import data. The system suggests the scenario name depending on the selected form, but you can change the name. The system automatically detects the type of the data provider based on the extension of the uploaded file. When you click **Save**, the system automatically creates an import scenario \(with default parameters and the specified name\) and a data provider of the specified type for the simplified import procedure.

3.  **Configure mapping**

    You configure mapping between the fields of the external file and the fields of the Acumatica ERP form on the **Mapping** tab of the [Import by Scenario](SM_20_60_36.md) form. You should select the source field and the corresponding target object and field. You use the same target objects and fields that are used in regular import scenarios that you create on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. However, in simple scenarios, you cannot use service commands and actions.

    You should select the **Key** check box for the fields that should be used as key fields to distinguish records that belong to different documents. You can use as keys only the fields that are mapped to the fields of the summary object.

    You can map the fields of the source file in any order. After you have saved the mapping, the system places the fields in the correct order and creates the import scenario mapping. The system adds all actions \(including `<Action: Save>`\) and service commands to the import scenario automatically.

4.  **Prepare and import data**

    After you have specified the scenario mapping, you can prepare and import data in the same way as you do with regular import scenarios.


Simple scenarios are not available for editing on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, and you cannot edit the data provider that was automatically created for the simple import scenario. If the simple scenario is not working, you should convert the simple scenario to a regular scenario by clicking **Convert to Manual Scenario** on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form.

**Parent topic:**[Importing and Exporting Records by Using Scenarios](../UserGuide/IS__mng_Importing_Exporting_Records.md)

