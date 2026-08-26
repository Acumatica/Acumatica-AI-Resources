# Using Logs {#_36e00e6e-4cdb-4cc9-a16f-9fc2c295bd4e .concept}

Acumatica ERP stores logs in a number of files and database tables. This topic contains information about the following logs:

-   [Trace](#_deeb5bf5-29da-4ff5-8ba1-5ae7c43c578b): You can use this standard Acumatica ERP log for browsing issues that occur in the application.
-   [First-chance exception log](#_7462e6fa-d30a-4d53-a65b-364d128602ea): This mechanism for catching and logging exceptions can be very helpful when you are facing a problem of an unknown origin.
-   [Configuration Wizard logs](#_8e4da825-a68e-454f-bccd-7bc584e54a8a): These logs provide information related to issues occurring in the Acumatica ERP Configuration wizard.
-   [Maintenance logs](#_9edb70eb-081b-4dfa-a76c-2f2b5a5e7369): In these logs, you can find details about issues that occur when you perform an upgrade in the Acumatica ERP application.
-   [Acumatica ERP logs](#_ef13e9bd-7636-4652-a09c-b71a55248dee): These logs, which are stored in database tables, provide historical data for various operations.
-   [Windows logs](#_410a0c0d-7bbc-4da7-a712-83fcd301e54f): These logs provide details for issues related to ASP.NET \(for example, frequent application restarts or unhandled exceptions\).
-   [IIS logs](#_a6164d1e-757c-485b-b8b4-1d0aef352c2e): In these logs, IIS keeps records of all requests.
-   [SQL Server logs](#_b43e5bb8-85cf-4e40-8df1-fdb904ac4246): These logs, which are kept by SQL Server, contain details for issues related to database accessibility and server maintenance operations.

## Trace Log {#_deeb5bf5-29da-4ff5-8ba1-5ae7c43c578b .section}

The Acumatica ERP trace log is the first place you should look when you face an issue in the application. You can view the trace log by clicking **Settings** &gt; **Trace** on the form title bar.

When you are working with reports or generic inquiries, the trace log contains relevant SQL statements that you can use for SQL debugging purposes.

## First-Chance Exception Log {#_7462e6fa-d30a-4d53-a65b-364d128602ea .section}

Acumatica ERP has a mechanism for catching and logging all exceptions in the system. You can activate it by editing the appropriate line in the appSettings section of the `web.config` file \(which is located in the folder that contains the application instance website\) to read as follows.

```language-xml
<add key="EnableFirstChanceExceptionsLogging" value="true" />
```

You can edit the file name for the log in the following line of the same section. \(By default, the log will be stored in `<Site_Folder>\App_Data\firstchanceexceptions.log`, where *&lt;Site\_Folder&gt;* is the path to the folder that contains the application instance website.\)

```language-xml
<add key="FirstChanceExceptionsLogFileName" value="firstchanceexceptions.log" />
```

**Attention:** The first-chance exception log contains records of all exceptions, including those that the system has already caught and handled without issues, so the log file will grow rapidly and may reach an unmanageable size in minutes. Because of this, we recommend that you activate this logging mechanism for only short periods of time. In addition, you may want to erase the contents of the file once the error has been replicated and you have determined the required call stack.

When you are facing a problem of an unknown origin, we recommend that you use this logging mechanism before trying other solutions—that is, you enable the mechanism, replicate the error, disable the mechanism to stop the log file from growing too much, and view the resulting log.

## Configuration Wizard Logs {#_8e4da825-a68e-454f-bccd-7bc584e54a8a .section}

By default, the system saves short logs for changes that have been made in an instance by using the Acumatica ERP Configuration wizard or the command-line tool. These changes are saved in the `Logs` folder, which is located in the folder where you have installed Acumatica ERP.

**Tip:** You have specified the path to this folder on the Destination Folder page of the Acumatica ERP Setup wizard.

If you want to save full logs in the `Logs` folder, you should select the **Full Logging Mode** check box on the Confirmation of Configuration page of the Acumatica ERP Configuration wizard before starting to deploy the instance. You can also use the command-line tool to activate full logging mode. For details, see [Acumatica ERP Command-Line Tool: General Information](../Shared/../UserGuide/INST_Using_Command_Line_Tool_GeneralInfo.md). This mode might be helpful for investigating the cause of any errors that occur in the instance.

The `Logs` folder contains the following log files:

-   `oem_<date and time>.txt`: The warnings and errors that occurred during loading of third-party libraries on initialization of the Acumatica ERP Configuration wizard.
-   `log_prepare_<date and time>.txt`: The log records that the wizard produced before the main process is launched, such as the messages about the version information, connection tests, and configuration errors. \(The main process of the wizard is an instance deployment, database maintenance, or application maintenance.\)
-   `log_process_<date and time>.txt`: The log records that wizard produced during the main process, such as the messages about the installation order, database setup logs, and setup-time errors.

    In particular, if you are performing an upgrade by using the Acumatica ERP Configuration wizard, this file contains the errors that have occurred during the upgrade, including all failed SQL statements.


**Tip:** The `<date and time>` postfix in the log file names is the date and time when the wizard or the command-line tool is launched.

## Maintenance Logs {#_9edb70eb-081b-4dfa-a76c-2f2b5a5e7369 .section}

In the maintenance logs, you can find details for issues that occur when you perform an upgrade in the Acumatica ERP application. The maintenance logs are stored in the following locations:

-   The UPErrors database table: This table contains all errors that occur during an update of the database performed in the Acumatica ERP application. The table is displayed on the **Update History** tab of the [Apply Updates](SM_20_35_10.md) \(SM203510\) form.
-   The maintenance log file \(`<Site_Folder>\App_Data\maintlog.txt`\): This file contains all errors that occur during a site upgrade performed in the Acumatica ERP application. In addition, the file contains all failed SQL statements. You can view this file in Acumatica ERP by clicking **Show Log File** on the **Update History** tab of the [Apply Updates](SM_20_35_10.md) form.

## Acumatica ERP Logs {#_ef13e9bd-7636-4652-a09c-b71a55248dee .section}

Other logs that may be useful are stored in the following database tables:

-   LoginTrace: All login, logout, form opening, session expiration, and customization publishing events
-   UPSnapshotHistory: All snapshot restore operations
-   UPHistory: All application updates
-   AUScheduleHistory: All schedule execution events
-   AuditHistory: All field changes \(if auditing is enabled\)
-   EMailSyncLog: All exchange synchronization operations
-   AUNotificationHistory: All notification operations
-   PushNotificationsErrors: Errors during creation of push notifications
-   PushNotificationsFailedToSend: Information on the push notifications that Acumatica ERP failed to send to the notification destination within the last two days

## Windows Logs {#_410a0c0d-7bbc-4da7-a712-83fcd301e54f .section}

You may need to check the Windows logs if any of the following is occurring:

-   Your application restarts frequently.
-   There are unhandled exceptions in the application.
-   The system shows the *Session has expired* message too often.

ASP.NET Core records various exceptions and maintenance operations to these logs. The two Windows logs you need to check are the Application and System logs. To do this, open Windows Event Viewer and, in the navigation pane, select:

-   **Windows Logs** &gt; **Application** for the Application log.
-   **Windows Logs** &gt; **System** for the System log.

We recommend that you search the logs for the following events:

-   .NET Runtime events
-   ASP.NET events
-   IIS events
-   Network events

## IIS Logs {#_a6164d1e-757c-485b-b8b4-1d0aef352c2e .section}

Records of all requests are stored in the IIS \(Internet Information Services\) log files. To find the log files for your site, open IIS Manager, navigate to the site, and double-click **Logging**. On the **Logging** feature page that opens, in the **Directory** box, you can find the path to the folder with the log files.

## SQL Server Logs {#_b43e5bb8-85cf-4e40-8df1-fdb904ac4246 .section}

In Microsoft SQL Server, storage of system logs is enabled by default. These logs contain information about database accessibility and server maintenance operations. To view the logs, open **Object Explorer** in Microsoft SQL Server Management Studio and navigate to **&lt;Your\_Server&gt;** &gt; **Management** &gt; **SQL Server Logs**.

**Parent topic:**[Troubleshooting Acumatica ERP](../UserGuide/CON_Troubleshooting_Tools.md)

