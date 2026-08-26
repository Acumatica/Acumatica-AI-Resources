# Step 2: Investigate Application Server Time and Database Server Time in the Request Profiler {#_da5d271c-a2d5-4f91-84c9-ea6aca1a3e20 .task}

Either the application server or the database server may be working slowly, causing performance issues.

Perform the following task to check the reason for the slowdown by using the Request Profiler, an Acumatica ERP tool.

**To detect which of the servers works slowly:**

1.  Open an Acumatica ERP form.
2.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
3.  Reproduce the slowdown in the system.
4.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
5.  On the [Request Profiler](SM_20_50_70.md) \(SM205070\) form, click **Refresh Results**on the form toolbar to upload to this form all the new activities since the last refresh.

    **Note:** You must click **Refresh Results** to get the new rows in the profiler table. Pressing F5 does not provide the same result.

6.  Review the values in the **Server Time, ms** and **SQL Time, ms** columns of the **Requests** tab of the form:
    -   **SQL Time** is the time taken by SQL Server, in milliseconds.
    -   **Server Time** is the time taken by the request, in milliseconds. To get the time taken by the application server, use the formula *Time taken by application server = Server Time – SQL Time.*
7.  Depending on the results of the previous instruction, do one of the following:
    -   If the time taken by application server is too long for most of the requests, proceed with [Step 3: Check the Configuration of the Application Server](how_Troubleshoot_Performance_Step3.md#).
    -   If the time taken by SQL server is too big for most of the requests, proceed with [Step 4.1: Check the Configuration of Microsoft SQL Server and Run Reports](how_Troubleshoot_Performance_Step4.md#).

**Parent topic:**[Troubleshooting Performance](../UserGuide/how_Troubleshoot_Performance.md)

