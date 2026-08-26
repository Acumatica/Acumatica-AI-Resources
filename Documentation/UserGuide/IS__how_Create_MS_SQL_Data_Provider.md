# To Create a Microsoft SQL Data Provider {#_9770d5a6-6ea8-4187-9d1e-ca5a28249eb1 .task}

You use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export.

This procedure describes how to create a Microsoft SQL data provider that is used to transfer data between Acumatica ERP and a table of a Microsoft SQL Server database.

## To Create a Microsoft SQL Data Provider { .section}

1.  Review the columns of the database table for which you need to create the data provider to identify the external data schema.
2.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, create a provider, and specify the following settings for it:
    1.  **Name**: The name of the provider, which usually describes the data you will transfer by using this provider, such as `Import Purchase Orders`
    2.  **Data Type**: *MS SQL Provider* \(`PX.DataSync.MSSqlSYProvider`\)
3.  On the **Parameters** tab, do the following:
    1.  As the value of the *Server* parameter, specify one of the following:
        -   The name of the computer where the Microsoft SQL Server instance is installed if you use the default instance of Microsoft SQL Server \(for example, `MyServer`\)
        -   The name of the computer and the name of the Microsoft SQL Server instance if you use a named instance \(for example, `MyServer\MyInstance`\)
    2.  Specify the database name as the value of the *Database* parameter.
    3.  Specify the login and password for accessing the SQL Server instance and the type of authentication that is used by the SQL Server instance \(either *SQL* or *Windows*\).
4.  On the toolbar in the **Source Objects** pane of the **Schema** tab, click **Fill Schema Objects**. The system connects to the database, pulls the list of tables and views from it, and populates the **Source Objects** tab with the schema objects that correspond to tables and views.

    **Tip:** If you don't see **Fill Schema Objects** on the toolbar, click ![](Images/How_to_Create_a_Provider_for_Data_Import_SM_20_60_15Icon_FillIn.gif), which displays any buttons that do not fit on the toolbar.

5.  Select the **Active** check box for the needed object. On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the column headers available in the source database table. Make sure the **Active** check box is selected for all needed fields.
6.  Repeat the previous step for all objects \(SQL tables and views\) that you want to import data to and export data from.
7.  Click **Save**.

You have created a Microsoft SQL data provider that you can use in an import or export scenario.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

