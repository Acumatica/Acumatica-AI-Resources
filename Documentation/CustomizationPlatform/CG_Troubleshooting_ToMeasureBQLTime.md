# To Measure the Execution Time of a BQL Statement {#_0cbc6cc9-8288-49ac-a4cd-609d7d474431 .concept}

Suppose that in the customization code, you have a BQL statement that can affect system performance. To measure the execution time of the BQL statement, you can use the Request Profiler.

To do this, perform the following actions:

1.  In the browser, open the form that uses the customization code with the BQL statement.
2.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
3.  On this form, perform the action that executes the BQL statement.
4.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
5.  On the toolbar of the [Request Profiler](../UserGuide/SM_20_50_70.md) \(SM205070\) form, click **Refresh Results** to refresh the log tables.
6.  On the **SQL** tab, in the list of SQL queries, find the SQL query that corresponds to the BQL statement.

    **Note:** Because you know the name of the table that you are using in the BQL statement, you can specify the name as a filter in the **Tables** column of the **SQL** tab.

7.  In the **Total SQL Time, ms** column, view the total execution time of this SQL query.
8.  If the SQL query has been executed multiple times \(as indicated by the value in the **Executions** column\), you can view the time of execution of this query for each particular execution as follows:
    1.  Click the link in the **Statement ID** column for the SQL query. The **SQL Details** dialog box opens.
    2.  In the dialog box, view the values for each execution of the SQL query in the **SQL Time, ms** column of the table.
    3.  Close the dialog box.
9.  On the form toolbar, click **Clear Log** to delete the SQL request data from the database.

**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

