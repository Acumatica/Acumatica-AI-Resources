# To Create a CSV Data Provider {#_7eb06ccf-2a09-4635-960e-7395ad43a4fc .task}

You use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export.

This procedure describes how to create a data provider that works with the records in a CSV file.

## Before You Proceed { .section}

Make sure the file for which you are going to create a data provider satisfies the following requirements:

-   The first row in the file must contain column headers, and the first row is not imported.
-   The field delimiter in the file cannot be used within values. For example, if you use a comma as the delimiter, you cannot import values that contain commas, because they will not be recognized properly.

    **Tip:** If you export to a CSV file records that contain a symbol that is used as a delimiter, then in the exported file, the system will enclose these records in quotation marks.

-   The names of source fields can contain letters, numbers, spaces, and underscore \(\_\) symbols. Do not use periods in the names of source fields because the period is a reserved symbol for formulas in import and export scenarios. Thus, *Invoice Reference Number* is a valid name of a source field, but *Invoice Ref. Number* is invalid.
-   The order of the columns in the source file is not important. It affects only the order of the fields in the **Source Fields** pane on the **Schema** tab of the [Data Providers](SM_20_60_15.md) \(SM206015\) form.

## To Create a CSV Data Provider { .section}

1.  Review the file for which you need to create the data provider to identify the needed provider parameters \(the delimiter that is used in the file and file encoding\) and external data schema.
2.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, create a provider and specify the following settings:
    -   **Name**: The name of the provider, which usually describes the data you will transfer by using this provider, such as `Import/Export Customers`
    -   **Data Type**: *CSV Provider* \(`PX.DataSync.CSVSYProvider`\)
3.  On the form toolbar, click **Save**. You need to save the provider before you upload the file.
4.  Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form.

    **Tip:** As an alternative to this step, to upload the source file to the form, on the title bar, click **Files**. In the **Files** dialog box, which opens, click **Browse** to locate the source file. Select the file, and click **Open**. In the dialog box, click **Upload** to upload the file to the website; then close the dialog box.

5.  On the **Parameters** tab, do the following to specify the parameters of the data provider:
    -   Check that the value of the *FileName* parameter is correct; it was filled in automatically when you uploaded the file.
    -   As the value of the *Encoding* parameter, specify the encoding of the source file by selecting the proper encoding value from the drop-down list in the **Value** column of the table.
    -   As the value of the *Delimiter* parameter, specify the delimiter that is used in the CSV file.
6.  Open the **Schema** tab. In the **Source Objects** pane, select the **Active** check box for the only available object of the CSV provider to make the object available in integration scenarios.

    **Tip:** If you don't see an object on the **Source Objects** pane, click **Fill Schema Objects** on the toolbar of the pane.

7.  On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for which data will be imported or exported.
8.  On the form toolbar, click **Save**.

You have created a CSV data provider that you can use in an import or export scenario.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

