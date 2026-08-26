# System Health: To Monitor Performance {#_8f0a4339-6a33-469a-b916-50b893ca88e2 .task}

The following activity will walk you through the process of viewing and aborting running processes, as well as the use of the [Request Profiler](SM_20_50_70.md) \(SM205070\) form in Acumatica ERP and the Developer Tools of the browser.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that your colleague has complained that the Acumatica ERP instance sometimes has slow progress during the creation of a snapshot and when the colleague works with the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. You need to find out what is going wrong and perform the needed actions to restore system performance.

## Process Overview { .section}

You will monitor a running process during the creation of a snapshot on the [Tenants](SM_20_35_20.md) \(SM203520\) form, abort this process by using the [System Monitor](SM_20_15_30.md) \(SM201530\) form, and then use the [Request Profiler](SM_20_50_70.md) \(SM205070\) form to find the SQL request with the longest execution time for the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded as the system administrator by using the *gibbs* username and the *123* password.

## Step 1: Viewing and Aborting a Process { .section}

Your colleague mentioned performance being quite slow during the creation of a snapshot, so you will view and abort this process to learn more about the source of the problem. Do the following:

1.  Open the [System Monitor](SM_20_15_30.md) \(SM201530\) form.
2.  In a new browser tab, open the [Tenants](SM_20_35_20.md) \(SM203520\) form.
3.  In the **Tenant ID** box of the Summary area, leave the default value.
4.  On the form toolbar, click **Create Snapshot**, and in the **Warning** dialog box, click **OK**.
5.  In the **Description** box of the **Create Snapshot** dialog box, type `Test`.
6.  In the **Export Mode** box, leave *Full*.
7.  Select the **Prepare for Export** check box.
8.  In the **Export Format** box, leave *Binary*.
9.  Click **OK**.

    This starts the process of creating a snapshot. Depending on the volume of data entered for the company, the process may take a significant amount of time.

10. Open the browser tab with the [System Monitor](SM_20_15_30.md) form, and refresh the webpage.

    On the **Running Processes** tab, you can see the snapshot creation process displayed in the list of currently running processes. For each running process, you can see the user who has started the process and the screen from which this process has been started. The **Time** column shows how long this process has been running so far.

    **Tip:** On this form, you can also monitor all batch processing operations that are currently being performed in the system, such as the release of multiple transactions at once, the preparation of dunning letters, the generation of a report, the creation of a company snapshot, or the use of an import or export scenario. Your server may be slow because of a large number of these operations running simultaneously.

11. On the table toolbar, click **Abort**.

    This stops the selected running process \(which is also the only running process\).


## Step 2: Using the Request Profiler { .section}

Your colleague also noticed poor performance of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. In this step, you will use the [Request Profiler](SM_20_50_70.md) \(SM205070\) form to find the SQL request with the longest execution time for this form. Perform the following instructions:

1.  Navigate to the Journal Transactions \(GL3010PL\) list of records.
2.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
3.  Close the **Profiler** dialog box.
4.  Optional: Open the browser Developer Tools.
5.  Refresh the [Journal Transactions](GL_30_10_00.md) form, and open the *AP000001* batch.
6.  If the browser Developer Tools are open, go to the **Network** tab. In the list of URLs, click the URL that corresponds to the *AP000001* journal transaction, and in the pane that opens, go to the **Timing** tab. In the **Server Timing** table, you can view the time spent on every action and on event handling.
7.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
8.  In the **Profiler** dialog box, click **Open Request Profiler**. The system opens the [Request Profiler](SM_20_50_70.md) form.
9.  On the form toolbar, click **Refresh Results**.
10. Review the requests on the **Requests** tab of the form, and find the request with the longest execution time in the **SQL Time, ms** column.
11. Click this request, and click **View SQL** on the table toolbar.
12. In the table of the **View SQL** dialog box, which opens, find the line with the highest value in the **SQL Time, ms** column, double-click it, and review the text of the SQL query and stack trace.
13. Close the **View SQL** dialog box.
14. On the form toolbar, click **Clear Log** to erase the logged data.

**Parent topic:**[Monitoring System Health](../UserGuide/SA_Monitoring_System_Health_Mapref.md)

