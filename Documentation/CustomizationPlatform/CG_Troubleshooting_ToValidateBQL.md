# To Validate a BQL Statement {#_e300d3d5-4db8-4fe2-8d4f-8644fe031c13 .concept}

Suppose that you have a BQL statement in the customization code that does not work properly or you want to make sure that a BQL statement is correctly converted into an SQL query. To validate the BQL statement, you can use the Request Profiler.

To do this, perform the following actions:

1.  In the browser, open the form that uses the customization code with the BQL statement.
2.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
3.  On this form, perform the action that executes the BQL statement.
4.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
5.  On the form toolbar of the [Request Profiler](../UserGuide/SM_20_50_70.md) \(SM205070\) form, click **Refresh Results** to refresh the log tables.
6.  On the **SQL** tab, in the list of SQL queries, find the SQL query that corresponds to the BQL statement.

    **Note:** Because you know the name of the table that you are using in the BQL statement, you can specify the name as a filter in the **Tables** column of the **SQL** tab.

7.  Click the link in the **Statement ID** column for the SQL query you have found. The **SQL Details** dialog box opens.
8.  In the bottom pane of the dialog box, view the SQL statement, and validate the BQL statement used in the customization code.
9.  Close the dialog box.
10. On the form toolbar of the [Request Profiler](../UserGuide/SM_20_50_70.md) form, click **Clear Log** to delete the SQL request data from the database.

**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

