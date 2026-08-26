# Trace {#_a14546c6-6e95-4067-8da6-6025fa59f423 .reference}

Form ID: \(SM203030\)

You use this page to view the following:

-   All recent operations performed by the current user on a single page
-   All messages, SQL statements, and exceptions logged in the system
-   Logs that will be sent to Acumatica ERP
-   Information about the system performance, even if the Request Profiler is turned off

The information on the page is preserved even after a user's session expires, and is limited by only the number of requests.

You open the page by clicking **Settings** &gt; **Trace** on the title bar of any Acumatica ERP form.

## Header { .section}

The header contains the page title \(**Last Requests**\) and the following elements.

|Element|Description|
|-------|-----------|
|Issue Counter|The number of issues \(that is, errors and warnings\). If there are no issues, the counter is not displayed. The number of exceptions is not displayed.|
|Issue Filter|The filter that displays specific types of records in all parts of the page as follows:

 -   **Issues**: Shows all records or only records with issues
-   **Screens**: Shows records for all forms or a specific form
-   **Type**: Shows all requests or requests of a particular type

|
|The header contains the following buttons.|
|**Submit Logs**|Sends technical details about the last actions to Acumatica Inc. and opens the **Logs Submitted** pop-up window, in which you can copy the trace log ID by clicking the Copy icon.

 This button is available for only the licensed instances.

|

## Last Requests Table { .section}

This table displays information about the last ten requests performed by the user on all forms and in all dialog boxes and pop-up windows. The requests are grouped by operation and sorted by their **Time \(UTC\)**. If you click a request in the table, the detailed information about this request is displayed in the **Request** section and in the table with messages.

|Column|Description|
|------|-----------|
|**Issues**|The number of issues that occurred on the form. This column is hidden if there are no issues.|
|**Screen ID**|The ID of the form on which the request was performed. The form ID is a link that you can click to open the form in a new browser tab.|
|**Request Type**|The type of request that the system has performed on the form, which can be of the following:

 -   *Screen*
-   *LongRun*
-   *UI-GI*
-   *UI-Reports*
-   *LongRun-Report*

|
|**Command**|The command that the user invoked.|
|**Duration, ms**|The duration of the request in milliseconds.|
|**Time \(UTC\)**|The time when the request occurred.|

## Local Environment Section { .section}

This section contains information about the user's environment.

|Element|Description|
|-------|-----------|
|**User Name**|The current user's name, the tenant, and the branch to which the user is signed in.|
|**Version**|Acumatica ERP version.|
|**Customizations**|The customization project or projects that are published in the current Acumatica ERP instance.|
|**Local Time**|Local time and date.|
|**UTC Time**|UTC time and date.|

## Request Section { .section}

This table contains information about the request selected in the **Last Requests** table.

|Column|Description|
|------|-----------|
|**Request**|Detailed information about the request.|
|**Performance**|Resources the system used to process the request.|

## Table with Logged Information {#2 .section}

In this table, you can view information messages, SQL statements, and exceptions that have occurred in the system.

|Button|Description|
|------|-----------|
|**Expand All**|Expands all entries in the table and toggles with the **Collapse All** button.|

|Tab|Description|
|---|-----------|
|**All**|All records from the **Messages** and **Exceptions** tabs for a particular request. For long messages, only the first 20 rows are displayed; you can view the entire message by clicking **Show More**.

 To copy a particular message, you click the **Clipboard** button to the left of the needed message. Alternatively, you press Ctrl+A or click the text three times to select it.

|
|**Messages**|System messages, errors, and warnings. The displayed information depends on the type of request.|
|**Exceptions**|The exceptions that occurred in the system during the request selected in the **Last Requests** table. The tab contains the name and type of the exception, the message, and the stack trace.|
|**SQL**|The list of database tables involved in the request processing, the SQL statements that the system has generated, and the stack trace. For each record on this tab, you can see the total time spent on the request, the number of code executions, and the number of affected table rows.|

**Parent topic:**[Management Forms](../UserGuide/SM__SM_Form_Reference.md)

