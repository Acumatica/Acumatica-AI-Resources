# To Create an Excel Data Provider {#_d05a5d7f-03ec-4b06-85e7-bc5b613456a0 .task}

You use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export.

This procedure describes how to create a data provider that works with the records in an Excel file.

## Before You Proceed { .section}

Make sure the file for which you are going to create a data provider satisfies the following requirements:

-   The file must be in XLSX format. XLS files are not supported.
-   Column headers must be specified in the first row of the file.
-   The names of source fields can contain letters, numbers, spaces, and underscore \(\_\) symbols. Do not use periods in these names because a period is a reserved symbol for formulas in import and export scenarios. Thus, *Invoice Reference Number* is a valid name of a source field, but *Invoice Ref. Number* is invalid.
-   The order of the columns in the source file is not important. It affects only the order of the fields in the **Source Fields** pane on the **Schema** tab of the Data Providers form \(SM206015\).

In Acumatica ERP you can import values from calculated fields, such as `=C2+D2`. \(For details on calculated fields, see [Using functions and nested functions in Excel formulas](https://support.microsoft.com/en-us/office/using-functions-and-nested-functions-in-excel-formulas-3f4cf298-ded7-4f91-bc80-607533b65f02).\) However, the examples in [Use Cases](IS__con_Use_Cases.md) do not use these values. To import calculated fields, you can also use formulas when you create import scenarios. Another way to import calculated fields is to add a column with values copied from a calculated column next to the column with the formula.

## To Create an Excel Data Provider { .section}

1.  Review the data file for which you need to create the data provider to identify the external data schema. Open the file and review the available columns. Make sure that you understand how the names of the columns match the contents.
2.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, create a provider with the following settings:

    -   **Name**: The name of the provider, which usually describes the data you will transfer by using this provider, such as `Import/Export AR Invoices`
    -   **Data Type**: *Excel Provider* \(`PX.DataSync.ExcelSYProvider`\)
    The list of provider parameters becomes available on the **Parameters** tab, which contains one parameter: *FileName*.

3.  On the form toolbar, click **Save**. You need to save the provider before you upload the file.
4.  Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form.

    **Tip:** As an alternative to this step, to upload the source file to the form, on the title bar, click **Files**. In the **Files** dialog box, which opens, click **Browse** to locate the source file. Select the file, and click **Open**. In the dialog box, click **Upload** to upload the file to the website; then close the dialog box.

5.  On the toolbar of the **Source Objects** pane of the **Schema** tab, select the **Active** check box for the needed object \(which corresponds to a spreadsheet\) to make the object available in integration scenarios.
6.  On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for which data will be imported or exported.
7.  Repeat the previous two steps for all the objects \(spreadsheets\) and fields \(columns\) that you want to use for data import and export.
8.  On the form toolbar, click **Save**.

You have created an Excel data provider that you can use in an import or export scenario.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

