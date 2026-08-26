# Using Profilers {#_e4c450bb-86bc-4fb2-b7e6-1f715abe3c8b .concept}

To monitor the state of your Acumatica ERP server at any given moment, you can use the following profilers and related tools, each of which is described in a section in this topic:

-   [Acumatica ERP request profiler](#_34ce1da3-d651-4fee-a62a-fbb76480848a): A tool for monitoring the performance of requests in Acumatica ERP
-   [Acumatica ERP SQL profiler](#_ce41ea57-c0a9-4a68-9284-8078b830a262): A tool for monitoring the performance of SQL queries
-   [Acumatica ERP running processes](#_c42b381e-bb2f-4a9f-b24f-4a1aef6e5055): A form for monitoring batch processing operations
-   [SQL Server profiler](#_b4c39d09-a7a5-41c0-aaaa-5223f5f6a4b8): A tool for tracing SQL queries
-   [Browser profilers](#_4f15038d-75d2-4c48-a4b8-2547495b9450): Tools for monitoring requests, catching JavaScript errors, and obtaining network timing data
-   [Stack trace snapshot](#_0a391da7-4b2b-472d-b5aa-b3912d24b18a): A method for investigating website-related issues

## Acumatica ERP Request Profiler {#_34ce1da3-d651-4fee-a62a-fbb76480848a .section}

On the [Request Profiler](SM_20_50_70.md) \(SM205070\) form, you can monitor the performance of Acumatica ERP and find out which requests are taking too much time. By using the filters on the form, you can identify periods of slow performance and isolate the root causes. For details, see [System Health: Request Profiler](SA_Monitoring_System_Health_Request_Profiler_Concept.md).

**Tip:** For a simple operation \(such as opening a screen, adding a new record, or deleting a record\), the standard duration of the execution of the request on the server \(server time\) is about 500 milliseconds.

By selecting the **Log Exceptions** check box in the **Exception Logging** section of the Summary area of the form, you can turn on the logging of exceptions. The system displays the list of the logged exceptions on the **Exceptions** tab of the form.

By selecting the **Log Events \(Apply Filter\)** check box in the **Event Logging** section of the Summary area of the form, you can turn on the logging of events. You can specify a specific severity level of events by selecting this level in the **Log Level** box. You can filter the events that the system should log by category by selecting the needed options in the **Category** box. The system displays the list of the logged events on the **Event Log** tab of the form.

**Attention:** We recommend that you activate the logging of events by selecting the **Log Events \(Apply Filter\)** check box for only a limited period, because leaving this check box selected can degrade system performance.

## Acumatica ERP SQL Profiler {#_ce41ea57-c0a9-4a68-9284-8078b830a262 .section}

You can analyze SQL queries by using the built-in SQL profiler of Acumatica ERP. To activate the SQL profiler, select the **Log SQL \(Apply Filter\)** check box on the [Request Profiler](SM_20_50_70.md) \(SM205070\) form. To view the SQL queries for a particular URL request, click the row with the request, and then click **View SQL** on the table toolbar of the **Requests** tab of the form. To view aggregated information for each SQL query, open the **SQL** tab of the form. For details, see [System Health: Request Profiler](SA_Monitoring_System_Health_Request_Profiler_Concept.md).

**Attention:** We recommend that you activate the logging of SQL queries by selecting the **Log SQL \(Apply Filter\)** check box for only a limited period, because leaving this check box selected can degrade system performance.

## Acumatica ERP Running Processes {#_c42b381e-bb2f-4a9f-b24f-4a1aef6e5055 .section}

On the **Running Processes** tab of the [System Monitor](../Shared/../UserGuide/SM_20_15_30.md) \(SM201530\) form, you can monitor all batch processing operations that are currently being performed in the system, such as the release of multiple transactions at once, the preparation of dunning letters, the generation of a report, the creation of a tenant snapshot, or the use of an import or export scenario. Your server may be slow because of a large number of these operations running simultaneously.

For details, see [System Health: General Information](SA_Monitoring_System_Health_GeneralInfo.md).

## SQL Server Profiler {#_b4c39d09-a7a5-41c0-aaaa-5223f5f6a4b8 .section}

Microsoft SQL Server Profiler is a tool for tracing SQL queries. To find problematic queries more easily, you can select only particular events to be traced and use various filters.

Sometimes it may be helpful to identify the actual SQL query by using the profiler and then execute the query in Microsoft SQL Server Management Studio to investigate the problem.

## Browser Profilers {#_4f15038d-75d2-4c48-a4b8-2547495b9450 .section}

Most modern browsers offer debugging tools, which you can use to monitor requests, catch JavaScript errors, and obtain network timing data. Combined with the Acumatica ERP [Request Profiler](SM_20_50_70.md), these tools can help you analyze the network latency.

## Stack Trace Snapshot {#_0a391da7-4b2b-472d-b5aa-b3912d24b18a .section}

If your site is unresponsive and you are unable to establish the reason, you can create a dump of the stack trace of the running process. To do this, right-click the IIS worker process \(`w3wp.exe`\) in Windows Task Manager and select **Create Dump File**. You can then open the dump file in Visual Studio and analyze all threads and their stack traces.

**Parent topic:**[Troubleshooting Acumatica ERP](../UserGuide/CON_Troubleshooting_Tools.md)

