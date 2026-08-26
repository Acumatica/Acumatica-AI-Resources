# To Import Data from a Local File to a Table {#_0f985208-5deb-4550-9020-0d9fee92c1e7 .task}

You can import data from an Excel spreadsheet or a CSV file to a table on an Acumatica ERP form if the **Load Records from File** button appears on the table toolbar.

For more information, see [Integration with Excel](../Shared/../UserGuide/Exporting_to_Excel.md).

## To Import Data from a Local File { .section}

1.  Open the appropriate form, and either add a new record or select the record to which you want to import data.
2.  On the table toolbar of the table to which you want to import data, click **Load Records from File**.
3.  In the **File Upload** dialog box, click **Choose File** and select the file you want to import.
4.  Click **Upload** to upload the file to the system.

    After the file is uploaded, the **Common Settings** dialog box is opened.

5.  If you are importing an Excel spreadsheet, do the following in the **Common Settings** dialog box:
    1.  If an atypical null value is used in the uploaded file, specify the value in the **Null Value** box.
    2.  In the **Culture** box, select the region whose measurement settings have been used in the uploaded file.
    3.  In the **Mode** box, select one of the following options:
        -   *Update Existing*: To update the rows that are already present in the table and add new rows that are not present in the table.
        -   *Bypass Existing*: To import only new rows that were not present in the table. The existing rows will not be updated.
        -   *Insert All Records*: To add all rows from the file to the table.

            **Attention:** If you select this option, the resulting table may have duplicated rows because the system does not check for duplicates when it is importing rows from the file.

    4.  Click **OK**.
6.  If you are importing a CSV file, do the following in the **Common Settings** dialog box:
    1.  If an atypical separator character is used in the uploaded file, specify it in the **Separator Chars** box.
    2.  If an atypical null value is used in the uploaded file, specify the value in the **Null Value** box.
    3.  Select the encoding of the uploaded file in the **Encoding** box.
    4.  In the **Culture** box, select the region whose measurement settings have been used in the uploaded file.
    5.  In the **Mode** box, select one of the following options:
        -   *Update Existing*: To update the rows that are already present in the table and add new rows that are not present in the table.
        -   *Bypass Existing*: To import only new rows that were not present in the table. The existing rows will not be updated.
        -   *Insert All Records*: To add all rows from the file to the table.

            **Attention:** With this option selected, the uploaded CSV file must contain only rows that have not already been imported. If the system encounters a row that already exists in the table, the import process will be terminated. To resolve the situation, click **Cancel** on the form toolbar, and then try to import data in another mode.

    6.  Click **OK**.
7.  In the **Columns** dialog box, match the columns of the imported file \(displayed in the **Column Name** column\) to the columns in the table on the form to which you want to import data \(displayed in the **Property Name** column\).
8.  Click **OK** to import data to the table.
9.  After the data has been imported successfully, click **Save** on the form toolbar.

After you have imported the data and saved the document, you can continue processing the document based on your organization's workflow.

**Parent topic:**[Importing and Exporting Data to Excel and XML](../UserGuide/GS_Importing_Exporting_to_Excel_XML.md)

