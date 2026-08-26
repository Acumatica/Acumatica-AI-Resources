# To Discover the Cause of Performance Degradation {#_11666144-db7d-4055-ad71-bd4906f4fc65 .concept}

Suppose that after publishing a customization project, you notice that the Acumatica ERP performance on a customized form is being degraded. To check whether the content of the customization project is the cause of the performance degradation and to find the code fragment that is affecting system performance, you can use the Request Profiler.

## To Check Whether a Customization Project Affects System Performance {#_fe5fdf6e-4727-4249-910c-3468945f90cb .section}

To check whether a customization project is degrading the Acumatica ERP performance, perform the following actions:

1.  Test the performance with the customization project unpublished as follows:
    1.  Unpublish the customization project that you suspect is degrading performance, as described in [Unpublishing Customization Projects](CustomizationProjects_UnpublishingProjects_Mapref.md).
    2.  In the browser, open the form that you suspect has experienced performance issues since the customization project was published.
    3.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
    4.  On the form, sequentially perform each action that has been customized on the form.
    5.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
2.  Test the performance with the customization project published as follows:
    1.  Publish the customization project, as described in [To Publish a Single Project](CG_GL_Projects_Publishing_Single.md).
    2.  Open the [Request Profiler](../UserGuide/SM_20_50_70.md) \(SM205070\) form, and on the form toolbar, click **Clear Log** to clear the table.
    3.  In the browser, open the form that you used for the performance test.
    4.  Click **Tools** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens.
    5.  On the form, sequentially perform each action that has been customized on the form.
    6.  Click **Tools** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box.
3.  Open the files with the logs to compare the duration values for the same actions.

    The customization of the business logic for a form can degrade the system performance; however, the duration of an action should not increase by more than 10 percent. If the duration of an action on the customized form is more than 10 percent longer than the duration of the same action before customization, we strongly recommend that the customization code be reworked. To do this, follow the instructions described in [To Find the Code Fragment That Is Affecting System Performance](#_3f9fa934-c620-4e17-8fbe-ede97555f53d).

4.  On the form toolbar of the [Request Profiler](../UserGuide/SM_20_50_70.md) form, click **Clear Log** to delete the logged data from the database.

## To Find the Code Fragment That Is Affecting System Performance {#_3f9fa934-c620-4e17-8fbe-ede97555f53d .section}

If you have confirmed that the system performance is being degraded on a customized form, you can use the Request Profiler to discover the code fragment that is causing the performance degradation. To do this, perform the following actions:

1.  Reproduce the performance degradation with the logging turned on as follows:
    1.  In the browser, open the customized form that you have confirmed as experiencing performance degradation.
    2.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Start Logging** in the **Profiler** dialog box, which opens. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) starts logging URL requests, SQL queries, exceptions, and warnings and errors.
    3.  On the form, sequentially perform the actions that you identified as executing too slowly.
    4.  Click **Settings** &gt; **Profiler** on the form title bar, and click **Stop and Export** in the **Profiler** dialog box. The [Request Profiler](../Shared/../UserGuide/SM_20_50_70.md) returns to the default monitoring and exports a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.
2.  Investigate the logs as follows:
    1.  On the form toolbar of the [Request Profiler](../UserGuide/SM_20_50_70.md) \(SM205070\) form, click **Refresh Results** to refresh the log table.
    2.  On the **Requests** tab, rearrange the log records in descending order to find the URL requests with the highest values in each of the following columns:
        -   **Server Time, ms**
        -   **SQL Time, ms**
        -   **Server CPU, ms**
        -   **SQL Count**
    3.  Click a record that has an unusually large value in any column listed in the previous instruction \(or in multiple columns\), and then click **View SQL** on the table toolbar to open the **View SQL** dialog box.
    4.  In the dialog box, use the standard table navigation buttons to explore the list of SQL requests, which are initially ordered by the **Start Time** column.
    5.  If needed, in the table, rearrange records based on the value in the **SQL Time, ms** column in descending order to find the SQL requests with the longest duration.
    6.  In the stack trace, find the method that is causing the performance degradation.
3.  Analyze and correct the customization code as follows:
    1.  Launch Microsoft Visual Studio.
    2.  In Visual Studio, open the file with the method; the file is currently saved in the `App_RuntimeCode` website folder.
    3.  Analyze the method body to find the code snippet that is causing the issue.
4.  On the form toolbar, click **Clear Log** to delete the SQL request data from the database.

**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

